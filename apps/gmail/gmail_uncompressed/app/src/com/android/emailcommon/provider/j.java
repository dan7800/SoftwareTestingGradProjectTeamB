package com.android.emailcommon.provider;

import android.database.*;
import java.lang.ref.*;
import android.os.*;

final class j extends ContentObserver
{
    WeakReference<EmailContent> Zg;
    
    public j(final EmailContent emailContent) {
        super((Handler)null);
        this.Zg = new WeakReference<EmailContent>(emailContent);
    }
    
    public final boolean deliverSelfNotifications() {
        return false;
    }
    
    public final void onChange(final boolean b) {
        final EmailContent emailContent = this.Zg.get();
        if (emailContent != null) {
            emailContent.lH();
        }
    }
}
