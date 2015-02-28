package com.android.email;

import com.android.mail.*;
import android.content.*;
import com.android.mail.utils.*;

public class EmailIntentService extends f
{
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    public EmailIntentService() {
        super("EmailIntentService");
    }
    
    @Override
    protected void onHandleIntent(final Intent intent) {
        super.onHandleIntent(intent);
        if ("com.android.mail.action.update_notification".equals(intent.getAction())) {
            final m r = o.r((Context)this);
            if (r != null) {
                r.a((Context)this, intent);
            }
        }
        E.b(EmailIntentService.mW, "Handling intent %s", intent);
    }
}
