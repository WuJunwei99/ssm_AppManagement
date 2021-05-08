package utils;

import dto.MailInfo;
import org.apache.commons.lang3.StringUtils;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;


/**
 * 使用POP3协议接收邮件
 */
public class MailUtils {

    private static String PROTOCOL = "pop3";  // 使用pop3协议
    private static String PORT = "110";  // 端口号
    private static String SERVICE_PATH = "mail.mucfc.com";   // 服务器地址

    private static String URL_PRE = "https://download.bill"; // 账单链接前缀
    private static String AFTER_URL = "\" style=\"font-size: x-large;"; // 账单链接之后的字符串

    public static void main(String[] args) throws Exception {
        dealMail("","");
    }

    public static List<MailInfo> dealMail(String mailAddress, String password) throws Exception {
        System.out.println("----解析邮件开始----");
        // 准备连接服务器的会话信息
        Properties props = new Properties();
        props.setProperty("mail.store.protocol", PROTOCOL);       // 使用pop3协议
        props.setProperty("mail.pop3.port", PORT);           // 端口
        props.setProperty("mail.pop3.host", SERVICE_PATH);       // pop3服务器

        // 创建Session实例对象
        Session session = Session.getInstance(props);
        Store store = session.getStore(PROTOCOL);
        store.connect(mailAddress, password);

        // 获得收件箱
        Folder folder = store.getFolder("INBOX");
        /* Folder.READ_ONLY：只读权限
         * Folder.READ_WRITE：可读可写（可以修改邮件的状态，打上删除标记后close folder会删除邮件）
         */
        folder.open(Folder.READ_WRITE); //打开收件箱 打上标记读取后会删除邮件
        // 获得收件箱中的邮件总数
        System.out.println("邮件总数: " + folder.getMessageCount());
        // 得到收件箱中的所有邮件,并解析
        Message[] messages = folder.getMessages();
        List<MailInfo> mails = new ArrayList<MailInfo>();
        if (messages == null || messages.length < 1) {
            return mails;
        }
        // 解析所有邮件
        for (int i = 0, count = messages.length; i < count; i++) {
            MimeMessage msg = (MimeMessage) messages[i];
            String from = getFromAddress(msg);
            String subject = getSubject(msg);
            System.out.println("主题: " + subject + "| 发件人：" + from);
            if (StringUtils.contains(from, "wechatpay")) {
                try {
                    System.out.println("------------------解析第" + msg.getMessageNumber() + "封邮件-------------------- ");
                    Date date = msg.getSentDate();
                    System.out.println("发送时间：" + getSentDate(msg, null));
                    StringBuffer contentBuf = new StringBuffer(3000);
                    getMailTextContent(msg, contentBuf);
                    String content = contentBuf.toString();
                    System.out.println("邮件正文：" + content);
                    int start = StringUtils.indexOf(content, URL_PRE);
                    int end = StringUtils.indexOf(content, AFTER_URL);
                    String url = StringUtils.substring(content, start, end);
                    System.out.println("下载url：" + url);

                    MailInfo info = new MailInfo();
                    info.setMailTime(date);
                    info.setDownloadUrl(url);
                    mails.add(info);

                    System.out.println("------------------第" + msg.getMessageNumber() + "封邮件解析结束-------------------- ");
                    // 邮件打上删除标记，folder.close时会删除邮件。
                    msg.setFlag(Flags.Flag.DELETED, true);
                    System.out.println("Marked DELETE for message: " + subject);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        //释放资源
        folder.close(true);
        store.close();

        System.out.println("----解析邮件结束----");
        return mails;
    }

    /**
     * 删除邮件
     *
     * @param messages 要解析的邮件列表
     */
    public static void deleteMessage(Message... messages) throws MessagingException, IOException {
        if (messages == null || messages.length < 1)
            throw new MessagingException("未找到要解析的邮件!");

        // 解析所有邮件
        for (int i = 0, count = messages.length; i < count; i++) {
            /**
             *   邮件删除
             */
            Message message = messages[i];
            String subject = message.getSubject();
            // set the DELETE flag to true
            message.setFlag(Flags.Flag.DELETED, true);
            System.out.println("Marked DELETE for message: " + subject);
        }
    }

    /**
     * 获得邮件主题
     *
     * @param msg 邮件内容
     * @return 解码后的邮件主题
     */
    public static String getSubject(MimeMessage msg) {
        try {
            String subject = msg.getSubject();
            if (StringUtils.isNotBlank(subject)) {
                return MimeUtility.decodeText(subject);
            }
        } catch (Exception e) {
            // 获取邮件主题异常，log打印异常
        }
        return "";
    }

    /**
     * 获得发件人邮箱地址
     *
     * @param msg
     * @return
     */
    public static String getFromAddress(MimeMessage msg) {
        String from = "";
        try {
            Address[] froms = msg.getFrom();
            if (froms.length < 1) {
                throw new MessagingException("没有发件人!");
            }
            InternetAddress address = (InternetAddress) froms[0];
            from = address.getAddress();
        } catch (MessagingException e) {
            // 获取发件人邮箱地址异常，log打印异常
        }
        return from;
    }


    /**
     * 获得邮件发送时间
     *
     * @param msg 邮件内容
     * @return yyyy年mm月dd日 星期X HH:mm
     * @throws MessagingException
     */
    public static String getSentDate(MimeMessage msg, String pattern) throws MessagingException {
        Date receivedDate = msg.getSentDate();
        if (receivedDate == null)
            return "";

        if (StringUtils.isBlank(pattern))
            pattern = "yyyy年MM月dd日 E HH:mm ";

        return new SimpleDateFormat(pattern).format(receivedDate);
    }

    /**
     * 获得邮件文本内容
     *
     * @param part    邮件体
     * @param content 存储邮件文本内容的字符串
     * @throws MessagingException
     * @throws IOException
     */
    public static void getMailTextContent(Part part, StringBuffer content) throws MessagingException, IOException {
        //如果是文本类型的附件，通过getContent方法可以取到文本内容，但这不是我们需要的结果，所以在这里要做判断
        boolean isContainTextAttach = part.getContentType().indexOf("name") > 0;
        if (part.isMimeType("text/*") && !isContainTextAttach) {
            content.append(part.getContent().toString());
        } else if (part.isMimeType("message/rfc822")) {
            getMailTextContent((Part) part.getContent(), content);
        } else if (part.isMimeType("multipart/*")) {
            Multipart multipart = (Multipart) part.getContent();
            int partCount = multipart.getCount();
            for (int i = 0; i < partCount; i++) {
                BodyPart bodyPart = multipart.getBodyPart(i);
                getMailTextContent(bodyPart, content);
            }
        }
    }


}
