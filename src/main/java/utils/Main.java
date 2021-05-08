package utils;

import dto.MailInfo;
import dto.UserMailInfo;
import utils.*;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.spire.pdf.FileFormat;
import com.spire.pdf.PdfDocument;

public class Main {

    public static String BASE_PATH = "D:/Workspace/Eclipse/bill/wechatPay/";
    public static String FILE_BASE_PRE = "wechatPay";
    public static String ZIP_BASE_SUF = ".zip";
    public static String PDF_BASE_PRE = "D:/Workspace/Eclipse/bill/pdf/";
    public static String HTML_BASE_PATH = "D:/Workspace/Eclipse/bill/html/";

    private static String MAIL_USER = "****@mucfc.com";  // 邮箱账号
    private static String PASSWORD = "*****";   // 邮箱密码

    public static void main(String[] args) {
        System.out.println("pdf转html 开始");
        pdf2Html(PDF_BASE_PRE, HTML_BASE_PATH);
        System.out.println("pdf转html 结束");
        
        System.out.println("----解析html文件----");
        AnalyzeUtils.extractHtml(HTML_BASE_PATH);
    }

    private static void pdf2Html(String splitPath, String htmlPath) {
        File file = new File(splitPath);
        if (!file.exists()) {
            throw new RuntimeException("文件夹不存在");
        }
        File[] files = file.listFiles();
        if (files.length == 0) {
            throw new RuntimeException("文件夹为空");
        }

        for (File f : files) {
            //创建PdfDocument实例
            PdfDocument doc = new PdfDocument();
            //加载PDF文件
            doc.loadFromFile(f.getAbsolutePath());
            //保存为HTML格式
            doc.saveToFile(htmlPath + "合同.html", FileFormat.HTML);
            doc.close();
        }
    }
}
