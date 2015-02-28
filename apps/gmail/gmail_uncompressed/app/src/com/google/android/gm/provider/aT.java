package com.google.android.gm.provider;

import com.google.android.common.http.*;
import com.google.android.gm.c.*;
import com.google.android.gsf.*;
import org.apache.http.conn.params.*;
import android.content.pm.*;
import android.content.res.*;
import org.apache.http.params.*;
import android.app.*;
import com.google.android.gm.provider.uiprovider.*;
import java.io.*;
import android.text.*;
import org.apache.http.client.methods.*;
import android.net.*;
import java.util.*;
import com.google.common.collect.*;
import android.net.http.*;
import com.google.android.gms.common.*;
import org.apache.http.*;
import org.apache.http.client.*;
import android.os.*;
import org.apache.http.protocol.*;
import java.net.*;
import org.json.*;
import com.android.mail.a.*;
import com.google.android.mail.common.base.*;
import android.accounts.*;
import com.android.mail.utils.*;
import android.database.*;
import android.content.*;
import android.util.*;
import android.database.sqlite.*;
import com.google.android.gm.*;
import com.android.mail.providers.*;

final class at implements Runnable
{
    final /* synthetic */ MailEngine bjA;
    
    at(final MailEngine bjA) {
        this.bjA = bjA;
    }
    
    @Override
    public final void run() {
        E.d(MailEngine.TAG, "calculateUnknownSyncRationalesAndPurgeInBackground: running", new Object[0]);
        this.bjA.biw.a(this.bjA.biF);
        int n = 0;
        while (true) {
            Label_0145: {
                try {
                    final long longForQuery = DatabaseUtils.longForQuery(this.bjA.bcJ, "SELECT IFNULL((SELECT _id FROM conversations WHERE syncRationale = 'UNKNOWN'), 0)", (String[])null);
                    if (longForQuery == 0L) {
                        this.bjA.biw.setTransactionSuccessful();
                        this.bjA.biw.endTransaction();
                        if (n != 0) {
                            this.bjA.Gf();
                        }
                        return;
                    }
                    MailEngine.a(this.bjA, longForQuery, MailSync$SyncRationale.bmo, false);
                    this.bjA.bcJ.yieldIfContendedSafely();
                    if (!this.bjA.Gs()) {
                        if (n == 0) {
                            break Label_0145;
                        }
                    }
                }
                finally {
                    this.bjA.biw.endTransaction();
                }
                n = 1;
                continue;
            }
            n = 0;
        }
    }
}
