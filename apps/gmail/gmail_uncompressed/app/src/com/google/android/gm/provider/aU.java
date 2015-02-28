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
import android.content.*;
import android.util.*;
import android.database.*;
import android.database.sqlite.*;
import com.google.android.gm.*;
import com.android.mail.providers.*;

final class au implements Runnable
{
    final /* synthetic */ MailEngine bjA;
    
    au(final MailEngine bjA) {
        this.bjA = bjA;
    }
    
    @Override
    public final void run() {
        while (true) {
            Label_0294: {
            Label_0138:
                while (true) {
                    Label_0112: {
                        synchronized (this) {
                            if (this.bjA.bjx) {
                                E.c(MailEngine.TAG, "UserRefreshCompleted is true", new Object[0]);
                            }
                            else {
                                if (!this.bjA.Gj()) {
                                    break Label_0112;
                                }
                                E.c(MailEngine.TAG, "LiveQueryInProgress is true", new Object[0]);
                            }
                            if (this.bjA.bjx || this.bjA.Gj() || this.bjA.Gi()) {
                                break Label_0294;
                            }
                            if (MailEngine.aQy) {
                                this.bjA.dQ(4);
                                this.bjA.p(4, false);
                                return;
                            }
                            break Label_0138;
                        }
                    }
                    if (this.bjA.Gi()) {
                        E.c(MailEngine.TAG, "BackgroundSyncInProgress is true", new Object[0]);
                        continue;
                    }
                    continue;
                }
                if (!ag.aN(this.bjA.getContext())) {
                    this.bjA.dQ(1);
                    this.bjA.bjx = true;
                    this.bjA.p(4, false);
                    return;
                }
                E.c(MailEngine.TAG, "Waiting for sync try %d out of %d", this.bjA.biV, this.bjA.biY);
                this.bjA.biV++;
                if (this.bjA.biV > this.bjA.biY) {
                    this.bjA.p(4, false);
                    return;
                }
                this.bjA.bjl.postDelayed(this.bjA.biW, (long)this.bjA.biX);
                return;
            }
            E.d(MailEngine.TAG, "Transitioning from user refresh to automatic refresh", new Object[0]);
            this.bjA.p(4, false);
        }
    }
}
