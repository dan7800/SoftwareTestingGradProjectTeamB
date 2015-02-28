package com.google.android.gm;

import android.app.*;
import android.content.pm.*;
import android.content.*;

public class GoogleMailSwitchService extends IntentService
{
    private static final ComponentName aXR;
    private static final ComponentName aXS;
    
    static {
        aXR = new ComponentName("com.google.android.gm", "com.google.android.gm.widget.GmailWidgetProvider");
        aXS = new ComponentName("com.google.android.gm", "com.google.android.gm.widget.GoogleMailWidgetProvider");
    }
    
    public GoogleMailSwitchService() {
        super("GoogleMailSwitchService");
    }
    
    private void CL() {
        final PackageManager packageManager = this.getPackageManager();
        final boolean bj = ay.bj((Context)this);
        ComponentName componentName;
        if (bj) {
            componentName = GoogleMailSwitchService.aXS;
        }
        else {
            componentName = GoogleMailSwitchService.aXR;
        }
        ComponentName componentName2;
        if (bj) {
            componentName2 = GoogleMailSwitchService.aXR;
        }
        else {
            componentName2 = GoogleMailSwitchService.aXS;
        }
        packageManager.setComponentEnabledSetting(componentName2, 2, 1);
        packageManager.setComponentEnabledSetting(componentName, 1, 1);
        ay.bg((Context)this);
    }
    
    protected void onHandleIntent(final Intent intent) {
        final String action = intent.getAction();
        if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
            this.CL();
        }
        else if ("android.intent.action.MY_PACKAGE_REPLACED".equals(action)) {
            GoogleMailDeviceStartupReceiver.aV((Context)this);
            this.CL();
        }
    }
}
