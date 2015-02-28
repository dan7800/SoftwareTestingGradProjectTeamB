package com.android.email;

import android.app.admin.*;
import android.content.*;
import com.android.email.service.*;

public class SecurityPolicy$PolicyAdmin extends DeviceAdminReceiver
{
    public CharSequence onDisableRequested(final Context context, final Intent intent) {
        return context.getString(2131296893);
    }
    
    public void onDisabled(final Context context, final Intent intent) {
        EmailBroadcastProcessorService.e(context, 2);
    }
    
    public void onEnabled(final Context context, final Intent intent) {
        EmailBroadcastProcessorService.e(context, 1);
    }
    
    public void onPasswordChanged(final Context context, final Intent intent) {
        EmailBroadcastProcessorService.e(context, 3);
    }
    
    public void onPasswordExpiring(final Context context, final Intent intent) {
        EmailBroadcastProcessorService.e(context, 4);
    }
}
