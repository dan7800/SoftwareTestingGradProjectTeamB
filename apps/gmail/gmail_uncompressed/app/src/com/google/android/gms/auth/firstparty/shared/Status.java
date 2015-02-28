package com.google.android.gms.auth.firstparty.shared;

public enum Status
{
    bAA("UserCancel"), 
    bAB("PermissionDenied"), 
    bAC("DeviceManagementRequiredOrSyncDisabled"), 
    bAD("DeviceManagementInternalError"), 
    bAE("DeviceManagementSyncDisabled"), 
    bAF("DeviceManagementAdminBlocked"), 
    bAG("DeviceManagementAdminPendingApproval"), 
    bAH("DeviceManagementStaleSyncRequired"), 
    bAI("DeviceManagementDeactivated"), 
    bAJ("DeviceManagementRequired"), 
    bAK("ClientLoginDisabled"), 
    bAL("NeedPermission"), 
    bAM("WeakPassword"), 
    bAN("ALREADY_HAS_GMAIL"), 
    bAO("BadRequest"), 
    bAP("BadUsername"), 
    bAQ("LoginFail"), 
    bAR("NotLoggedIn"), 
    bAS("NoGmail"), 
    bAT("RequestDenied"), 
    bAU("ServerError"), 
    bAV("UsernameUnavailable"), 
    bAW("DeletedGmail"), 
    bAX("SocketTimeout"), 
    bAY("ExistingUsername"), 
    bAZ("NeedsBrowser"), 
    bAn("Ok"), 
    bAo("BadAuthentication"), 
    bAp("InvalidSecondFactor"), 
    bAq("NotVerified"), 
    bAr("TermsNotAgreed"), 
    bAs("Unknown"), 
    bAt("UNKNOWN_ERR"), 
    bAu("AccountDeleted"), 
    bAv("AccountDisabled"), 
    bAw("ServiceDisabled"), 
    bAx("ServiceUnavailable"), 
    bAy("CaptchaRequired"), 
    bAz("NetworkError"), 
    bBa("GPlusOther"), 
    bBb("GPlusNickname"), 
    bBc("GPlusInvalidChar"), 
    bBd("GPlusInterstitial"), 
    bBe("ProfileUpgradeError"), 
    bBf("INVALID_SCOPE");
    
    public static String bBg;
    public static String bBh;
    private final String Ie;
    
    static {
        Status.bBg = "Error";
        Status.bBh = "status";
    }
    
    private Status(final String ie) {
        this.Ie = ie;
    }
    
    public final String JW() {
        return this.Ie;
    }
}
