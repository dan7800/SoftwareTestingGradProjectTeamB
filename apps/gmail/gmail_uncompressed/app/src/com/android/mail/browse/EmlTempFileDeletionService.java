package com.android.mail.browse;

import android.app.*;
import android.content.*;

public class EmlTempFileDeletionService extends IntentService
{
    public EmlTempFileDeletionService() {
        super("EmlTempFileDeletionService");
    }
    
    public EmlTempFileDeletionService(final String s) {
        super(s);
    }
    
    protected void onHandleIntent(final Intent intent) {
        if ("android.intent.action.DELETE".equals(intent.getAction())) {
            this.getContentResolver().delete(intent.getData(), (String)null, (String[])null);
        }
    }
}
