package dto;

/**
 * 微信账单记录对象
 */
public class BillRecord {
    /**
     * 用户姓名
     */
    private String userName;
    /**
     * 身份证号
     */
    private String idNo;
    /**
     * 微信号
     */
    private String wechatId;
    /**
     * 交易单号
     */
    private String tradeId;
    /**
     * 交易时间
     */
    private String tradeTime;
    /**
     * 交易类型
     */
    private String tradeType;
    /**
     * 收/支/其他
     */
    private String actionType;
    /**
     * 交易方式
     */
    private String tradeMethod;
    /**
     * 金额（元）
     */
    private String amount;
    /**
     * 交易对方
     */
    private String tradeOpposite;
    /**
     * 商户单号
     */
    private String merchantTradeNum;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    public String getWechatId() {
        return wechatId;
    }

    public void setWechatId(String wechatId) {
        this.wechatId = wechatId;
    }

    public String getTradeId() {
        return tradeId;
    }

    public void setTradeId(String tradeId) {
        this.tradeId = tradeId;
    }

    public String getTradeTime() {
        return tradeTime;
    }

    public void setTradeTime(String tradeTime) {
        this.tradeTime = tradeTime;
    }

    public String getTradeType() {
        return tradeType;
    }

    public void setTradeType(String tradeType) {
        this.tradeType = tradeType;
    }

    public String getActionType() {
        return actionType;
    }

    public void setActionType(String actionType) {
        this.actionType = actionType;
    }

    public String getTradeMethod() {
        return tradeMethod;
    }

    public void setTradeMethod(String tradeMethod) {
        this.tradeMethod = tradeMethod;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getTradeOpposite() {
        return tradeOpposite;
    }

    public void setTradeOpposite(String tradeOpposite) {
        this.tradeOpposite = tradeOpposite;
    }

    public String getMerchantTradeNum() {
        return merchantTradeNum;
    }

    public void setMerchantTradeNum(String merchantTradeNum) {
        this.merchantTradeNum = merchantTradeNum;
    }

    @Override
    public String toString() {
        return "BillRecord{" +
                "userName='" + userName + '\'' +
                ", idNo='" + idNo + '\'' +
                ", wechatId='" + wechatId + '\'' +
                ", tradeId='" + tradeId + '\'' +
                ", tradeTime=" + tradeTime +
                ", tradeType='" + tradeType + '\'' +
                ", actionType='" + actionType + '\'' +
                ", tradeMethod='" + tradeMethod + '\'' +
                ", amount=" + amount +
                ", tradeOpposite='" + tradeOpposite + '\'' +
                ", merchantTradeNum='" + merchantTradeNum + '\'' +
                '}';
    }

}
