package utils;

import dto.UserMailInfo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DbOperateUtils {

    public static List<UserMailInfo> queryPwd(String mailAddress, Date date) {
        List<UserMailInfo> userMailInfos = new ArrayList<UserMailInfo>();
        /**
         * 查询数据库userMailInfo
         * 查询条件 info.mailAddress=mailAddress && info.requestTime <= date <= info.finishTime && info.downloadUrl为空;
         */
        return userMailInfos;
    }

    public static void updateUserMailInfo(List<UserMailInfo> userMailInfos) {

    }


}
