package utils;

import com.alibaba.fastjson.JSON;
import com.ncu.zte.beans.Contacts;
import com.ncu.zte.beans.Contract;
import com.ncu.zte.beans.Student;

import dto.BillRecord;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AnalyzeUtils {
   
	 Contract contract  = new Contract();
	 Student student = new Student();
	 Contacts contacts = new Contacts();

    public static void extractHtml(String htmlPath) {
        File file = new File(htmlPath);
        if (!file.exists()) {
            throw new RuntimeException("文件夹不存在");
        }
        File[] files = file.listFiles();
        if (files.length == 0) {
            throw new RuntimeException("文件夹为空");
        }

        //是否已解析用户个人信息
        boolean parseUserInfoOver = false;
        boolean isStartAddText = false;

        for (File f : files) {
            BufferedReader reader = null;
            try {
                reader = new BufferedReader(new FileReader(f));
                StringBuffer sb = new StringBuffer();
                String s;

                while((s=reader.readLine()) != null){
                    sb.append(s);
                }
                String nohtml=new String(sb);
                nohtml = StringTools.delHTMLTag(nohtml);
                nohtml = deleteSubString(nohtml,"&#160;");
                AnalyzeUtils au = new AnalyzeUtils();
                au.queryUserInfo(nohtml);
                reader.close();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (IOException e1) {
                        e1.printStackTrace();
                    }
                }
            }
        }

    }
	
    private void queryUserInfo(String line) {
    	System.out.println(line);
    	//合同号
        String featureStr1 = "合同编号：";
        String featureStr2 = "国家开发银行";
        int index1 = line.indexOf(featureStr1);
        int index2 = line.indexOf(featureStr2);
        String contractId = line.substring(index1 + featureStr1.length(), index2);
        //学生姓名
        String studentName0 = "甲方（借款学生）：姓名";
        String studentName1 = "身份证号码";
        int indexStudentName0 = line.indexOf(studentName0);
        int indexStudentName1 = line.indexOf(studentName1);
        String name = line.substring(indexStudentName0 + studentName0.length(), indexStudentName1);
        //联系电话
        String phone0 = "联系电话";
        String phone1 = "就读高校名称";
        int indexPhone0 = line.indexOf(phone0);
        int indexPhone1 = line.indexOf(phone1);
        String phone = line.substring(indexPhone0 + phone0.length(), indexPhone1);
        //身份证号码
        String idCard = line.substring(indexStudentName1 + studentName1.length(), indexPhone0);
        //联系人姓名
        String contactsName0 = "甲方（共同借款人）：姓名";
        String contactsName1 = "身份证号码";
        int indexContactsName0 = line.indexOf(contactsName0);
        int indexContactsName1 = line.indexOf(contactsName1, line.indexOf(contactsName1) + 1);
        String contactsName = line.substring(indexContactsName0 + contactsName0.length(), indexContactsName1);

        //联系人电话
        String contactsPhone0 = "联系电话";
        String contactsPhone1 = "乙方";
        int indexContactsPhone1 = line.indexOf(contactsPhone1);
        int indexContactsPhone0 = line.indexOf(contactsPhone0, line.indexOf(contactsPhone0) + 1);
        String contactsPhone = line.substring(indexContactsPhone0 + contactsPhone0.length(), indexContactsPhone1);
        //联系人关系
        String relationship0 = "与借款学生关系";
        String relationship1="详细通讯地址";
        int indexRelationship0 = line.indexOf(relationship0);
        int indexRelationship1 = line.indexOf(relationship1);
        String relationship = line.substring(indexRelationship0 + relationship0.length(), indexRelationship1);
        //分支银行
        String branchLender0 = "国家开发银行";
        String branchLender1="详细通讯地址";
        int indexBranchLender0 = line.indexOf(branchLender0,line.indexOf(branchLender0) + 1);
        int indexBranchLender1 = line.indexOf(branchLender1, line.indexOf(branchLender1) + 1);
        String branchLender = line.substring(indexBranchLender0 + branchLender0.length(), indexBranchLender1);
        //贷款金额
        String amount0 = "借款金额:人民币";
        String amount1=".00元";
        int indexAmount0 = line.indexOf(amount0);
        int indexAmount1 = line.indexOf(amount1);
        System.out.println(indexAmount1+"		"+indexAmount0);
        if(indexAmount1-amount0.length()-indexAmount0<5){
            String amount = line.substring(indexAmount0 + amount0.length(), indexAmount1);
            contract.setAmount(amount);
        }

        //经办人
        String agent0 = "联系人";
        String agent1="详细通讯地址";
        int indexAgent0 = line.indexOf(agent0);
        int indexAgent1 = line.indexOf(agent1, indexBranchLender1+1);
        System.out.println(indexAgent0+"		"+indexAgent1);
        String agent = line.substring(indexAgent0 + agent0.length(), indexAgent1);
        //还款开始日
        String startYear0 = "自";
        String startYear1="年至";
        int indexStartYear0 = line.lastIndexOf(startYear0);
        int indexStartYear1 = line.indexOf(startYear1);
        String startYear = line.substring(indexStartYear0 + startYear0.length(), indexStartYear1);
        String startMonth0 = "年甲方应于每年";
        String startMonth1="偿还借款";
        int indexStartMonth0 = line.indexOf(startMonth0);
        int indexStartMonth1 = line.indexOf(startMonth1);
        String startMonth = line.substring(indexStartMonth0 + startMonth0.length(), indexStartMonth1);
        String startTime = startYear+"年"+startMonth;
        SimpleDateFormat sdf =   new SimpleDateFormat("yyyy-MM-dd"); 
        if(startTime.length()<100){
	        try {
				Date date = sdf.parse(transDate(startTime));
				contract.setBeginDate(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
        }
        //还款结束日
        String endTime0 = "至";
        String endTime1="止";
        int indexEndTime00 = line.indexOf(endTime0, line.indexOf(endTime0) + 1);
        int indexEndTime0 = line.indexOf(endTime0, indexEndTime00 + 1);
        System.out.println(indexEndTime00+"		"+indexEndTime0);
        int indexEndTime1 = line.indexOf(endTime1);
        String endTime = line.substring(indexEndTime0 + endTime0.length(), indexEndTime1);
        try {
        	System.out.println(endTime);
			Date date = sdf.parse(transDate(endTime));
			contract.setEndDate(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        
        //借款日
        String approveDate0 = "全部责任由甲方承担。";
        String approveDate1 = "负责人（或授权代理人）";
        int indexApproveDate0 = line.indexOf(approveDate0);
        int indexApproveDate1 = line.indexOf(approveDate1);
        if(indexApproveDate1-indexApproveDate0>0&&indexApproveDate1-indexApproveDate0<100){
	        String approveDate = line.substring(indexApproveDate0 + approveDate0.length(), indexApproveDate1);

	        System.out.println(approveDate);
	        try {
				Date date = sdf.parse(transApproveDate(approveDate));
				System.out.println(transApproveDate(approveDate));
				contract.setApproveDate(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
        }
        contacts.setName(contactsName);
        contacts.setRelationship(relationship);
        contacts.setPhone(contactsPhone);
        contract.setContractId(contractId);
        contract.setLender("国家开发银行");
        contract.setBranchLender(branchLender);
        contract.setAgent(agent);

        student.setName(name);
        student.setPhone(phone);
        student.setIdCard(idCard);
        student.setCantacts1(contacts);
        contract.setStudent(student);
        
        System.out.println(contract.toString());
    }

  


    private static void mockInsertDb(List<BillRecord> records) {
        System.out.println("mock批量插入数据库 开始");
        for (BillRecord record : records) {
            System.out.println(JSON.toJSONString(record));
        }
        System.out.println("mock批量插入数据库 结束");
    }
    private static String transApproveDate(String s){
    	String flag = "-";
    	int flag0 = s.indexOf(flag);
    	String year = s.substring(flag0-4, flag0);
        String month = s.substring(flag0+1, flag0+3);
        String day = s.substring(flag0+4,flag0+6);
    	return year+"-"+month+"-"+day;
    }
    private static String transDate(String s){
        String year0 = "年";
        String month0 = "月";
        String day0 = "日";
        int indexYear = s.indexOf(year0);
        int indexMonth = s.indexOf(month0);
        int indexDay = s.indexOf(day0);
        String year = s.substring(0, indexYear);
        String day = s.substring(indexMonth+1,indexDay);
        String month = s.substring(indexYear+1, indexMonth);
        if(indexMonth-indexYear==2){
        	month="0"+month;
        }
        if(indexDay-indexMonth==2){
        	day="0"+day;
        }
    	return year+"-"+month+"-"+day;
    }
    
    public static String deleteSubString(String str1,String str2) {
		StringBuffer sb = new StringBuffer(str1);
		int delCount = 0;
		Object[] obj = new Object[2];
 
		while (true) {
			int index = sb.indexOf(str2);
			if(index == -1) {
				break;
			}
			sb.delete(index, index+str2.length());
			delCount++;
			
		}
			obj[0] = sb.toString();

		
		return (String) obj[0];
	}
	

}
