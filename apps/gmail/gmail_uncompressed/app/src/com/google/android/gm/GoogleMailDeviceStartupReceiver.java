package com.google.android.gm;

import android.content.*;
import com.android.mail.utils.*;

public class GoogleMailDeviceStartupReceiver extends BroadcastReceiver
{
    private static final ComponentName aXQ;
    
    static {
        aXQ = new ComponentName("com.google.android.gm", "com.google.android.gm.GoogleMailDeviceStartupReceiver");
    }
    
    public static void aV(final Context context) {
        context.getPackageManager().setComponentEnabledSetting(GoogleMailDeviceStartupReceiver.aXQ, 1, 1);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        E.b(ay.mW, "Received intent %s", intent);
        intent.setClass(context, (Class)GoogleMailSwitchService.class);
        context.startService(intent);
    }
}
