package dto;

public class UserMailInfo {
    private String id;
    // 用户号
    private String userId;
    // 请求时间（用户获取邮箱的时间）
    private String requestTime;
    // 完成时间（用户登记压缩包解压密码的时间）
    private String finishTime;
    // 使用邮箱
    private String mailAddress;
    // 压缩包解压密码
    private String zipPwd;
    // 对应链接
    private String downloadUrl;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDownloadUrl() {
        return downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getRequestTime() {
        return requestTime;
    }

    public void setRequestTime(String requestTime) {
        this.requestTime = requestTime;
    }

    public String getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(String finishTime) {
        this.finishTime = finishTime;
    }

    public String getMailAddress() {
        return mailAddress;
    }

    public void setMailAddress(String mailAddress) {
        this.mailAddress = mailAddress;
    }

    public String getZipPwd() {
        return zipPwd;
    }

    public void setZipPwd(String zipPwd) {
        this.zipPwd = zipPwd;
    }
}
