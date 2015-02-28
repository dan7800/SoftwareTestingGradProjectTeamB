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

final class aq implements Runnable
{
    final /* synthetic */ boolean aaE;
    final /* synthetic */ MailEngine bjA;
    final /* synthetic */ String bjE;
    final /* synthetic */ Long bjF;
    final /* synthetic */ String bjG;
    final /* synthetic */ long bjH;
    
    aq(final MailEngine bjA, final String bjE, final Long bjF, final boolean aaE, final String bjG, final long bjH) {
        this.bjA = bjA;
        this.bjE = bjE;
        this.bjF = bjF;
        this.aaE = aaE;
        this.bjG = bjG;
        this.bjH = bjH;
    }
    
    @Override
    public final void run() {
        if (this.bjE != null && this.bjF != null) {
            E.c(MailEngine.TAG, "Resetting local unseen count for %s", this.bjE);
            this.bjA.bdv.at(this.bjF);
            if (this.aaE) {
                GmailProvider.a(this.bjA.mContext, this.bjA.Tw.name, ImmutableSet.aG(this.bjE));
            }
        }
        final String ew = this.bjA.biz.eW("ix_awtsv");
        if (ew == null || Integer.parseInt(ew) < 0) {
            E.c(MailEngine.TAG, "Not resetting unseen count until WelcomeTour is complete", new Object[0]);
            return;
        }
        E.c(MailEngine.TAG, "Resetting server unseen count for %s", this.bjG);
        this.bjA.bhA.b(this.bjH, this.bjG);
        this.bjA.mContext.getContentResolver().notifyChange(Gmail.dU(this.bjA.Tw.name), (ContentObserver)null, true);
    }
}
