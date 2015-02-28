package com.android.mail.browse;

import com.android.mail.providers.*;
import java.util.*;
import android.os.*;
import android.content.*;
import android.app.*;
import com.android.mail.utils.*;

public final class a
{
    private static c ali;
    private static final String mW;
    private Message ald;
    private Attachment ale;
    private final d alf;
    private final h alg;
    private boolean alh;
    private FragmentManager c;
    private String mAccount;
    private final Context mContext;
    private final Handler mHandler;
    
    static {
        mW = D.AU();
        a.ali = new c();
    }
    
    public a(final Context mContext, final h alg) {
        this.alf = new d(mContext);
        this.alg = alg;
        this.mContext = mContext;
        this.mHandler = new Handler();
        this.alh = true;
    }
    
    public static void a(final c ali) {
        a.ali = ali;
    }
    
    public static boolean y(final String s, final String s2) {
        return a.ali != null && a.ali.y(s, s2);
    }
    
    public final void a(final FragmentManager c) {
        this.c = c;
    }
    
    public final void a(final Attachment ale) {
        this.ale = ale;
    }
    
    public final void a(final Message ald) {
        this.ald = ald;
    }
    
    public final void ar(final boolean b) {
        if (this.alg == null) {
            return;
        }
        final boolean uw = this.ale.uw();
        final g g = (g)this.c.findFragmentByTag("attachment-progress");
        if (g != null && g.d(this.ale)) {
            g.setProgress(this.ale.ayO);
            g.setIndeterminate(!uw && g.isIndeterminate());
            if (b && this.ale.uy()) {
                this.mHandler.post((Runnable)new b(this, g));
            }
            if (this.ale.state == 3 && this.alh) {
                this.alg.oJ();
            }
        }
        else {
            this.alg.as(uw);
        }
        this.alg.oK();
    }
    
    public final void b(final int n, final int n2, final int n3, final boolean b) {
        final Attachment ale = this.ale;
        final ContentValues contentValues = new ContentValues(5);
        contentValues.put("state", 2);
        contentValues.put("destination", n);
        contentValues.put("rendition", n2);
        contentValues.put("additionalPriority", n3);
        contentValues.put("delayDownload", b);
        this.alf.b(ale.uri, contentValues);
    }
    
    public final void b(final Attachment attachment) {
        final ContentValues contentValues = new ContentValues(2);
        contentValues.put("state", 4);
        contentValues.put("destination", attachment.ayN);
        this.alf.b(attachment.uri, contentValues);
    }
    
    public final void bN(final int n) {
        if (this.alg == null) {
            return;
        }
        if (this.ale.uq() && (n == 0 || this.ale.ayN == n)) {
            this.alg.oJ();
            return;
        }
        this.oE();
        this.bO(n);
    }
    
    public final void bO(final int n) {
        this.b(n, 1, 0, false);
    }
    
    public final void be(final String mAccount) {
        this.mAccount = mAccount;
    }
    
    public final void c(final ArrayList<Parcelable> list) {
        final Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.setFlags(524289);
        intent.setType("image/*");
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", (ArrayList)list);
        try {
            this.mContext.startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            E.f(a.mW, "Couldn't find Activity for intent", ex);
        }
    }
    
    public final void oC() {
        this.alh = false;
    }
    
    public final void oD() {
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("state", 0);
        this.alf.b(this.ale.uri, contentValues);
    }
    
    public final void oE() {
        final FragmentTransaction beginTransaction = this.c.beginTransaction();
        final Fragment fragmentByTag = this.c.findFragmentByTag("attachment-progress");
        if (fragmentByTag != null) {
            beginTransaction.remove(fragmentByTag);
        }
        beginTransaction.addToBackStack((String)null);
        g.c(this.ale).show(beginTransaction, "attachment-progress");
    }
    
    public final boolean oF() {
        final Fragment fragmentByTag = this.c.findFragmentByTag("attachment-progress");
        return fragmentByTag != null && fragmentByTag.isVisible();
    }
    
    public final void oG() {
        if (this.ale.ayP == null) {
            return;
        }
        final Intent intent = new Intent("android.intent.action.SEND");
        intent.setFlags(524289);
        intent.putExtra("android.intent.extra.STREAM", (Parcelable)ag.C(this.ale.ayP));
        intent.setType(ag.normalizeMimeType(this.ale.getContentType()));
        try {
            this.mContext.startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            E.f(a.mW, "Couldn't find Activity for intent", ex);
        }
    }
    
    public final void oH() {
        if (a.ali == null) {
            return;
        }
        final c ali = a.ali;
        final Context mContext = this.mContext;
        ali.a(this.mAccount, this.ald, this.ale, this.c);
    }
}
