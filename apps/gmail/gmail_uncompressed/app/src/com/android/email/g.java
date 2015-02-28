package com.android.email;

import android.database.*;
import android.support.v4.app.*;
import android.app.*;
import android.provider.*;
import com.android.email.provider.*;
import android.text.*;
import com.android.mail.providers.*;
import com.android.mail.i.*;
import android.net.*;
import android.content.*;
import java.util.*;
import android.os.*;
import com.android.mail.utils.*;
import com.android.mail.g.*;
import com.android.email.service.*;
import com.android.email.activity.setup.*;
import com.android.emailcommon.provider.*;

final class g implements Runnable
{
    final /* synthetic */ d LM;
    
    g(final d lm) {
        this.LM = lm;
    }
    
    @Override
    public final void run() {
        final Cursor query = this.LM.mContext.getContentResolver().query(Account.CONTENT_URI, Account.XT, (String)null, (String[])null, (String)null);
        try {
            while (query.moveToNext()) {
                this.LM.eg.cancel((int)(query.getLong(0) + 805306368L));
            }
        }
        finally {
            query.close();
        }
        query.close();
    }
}
