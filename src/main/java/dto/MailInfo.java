package dto;

import java.util.Date;

public class MailInfo {
    private Date mailTime;
    private String downloadUrl;

    public Date getMailTime() {
        return mailTime;
    }

    public void setMailTime(Date mailTime) {
        this.mailTime = mailTime;
    }

    public String getDownloadUrl() {
        return downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl;
    }
}
