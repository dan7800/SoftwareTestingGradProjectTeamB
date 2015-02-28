package com.android.email;

import com.android.emailcommon.b.*;
import com.android.emailcommon.a.*;
import android.text.*;
import android.provider.*;
import android.content.*;
import android.net.*;
import com.android.emailcommon.provider.*;

public final class a
{
    public static final String[] Lm;
    public final long Ln;
    public final long Lo;
    public final String Lp;
    public final long Lq;
    public final boolean Lr;
    public final boolean Ls;
    public final boolean Lt;
    public final int Lu;
    public final int dM;
    public final String mName;
    
    static {
        Lm = new String[] { "_id", "size", "fileName", "mimeType", "accountKey", "flags" };
    }
    
    private a(final Context context, final long ln, final long lo, final String mName, final String s, final long lq, final int dm) {
        this.Lo = lo;
        this.Lp = com.android.emailcommon.b.a.u(mName, s);
        this.mName = mName;
        this.Ln = ln;
        this.Lq = lq;
        this.dM = dm;
        boolean b = true;
        boolean b2 = true;
        if (!s.mk()) {
            b2 = false;
        }
        if (!i.b(this.Lp, com.android.emailcommon.b.a.aaX) || i.b(this.Lp, com.android.emailcommon.b.a.aaY)) {
            b = false;
        }
        final String ab = com.android.emailcommon.b.a.aB(this.mName);
        boolean b3;
        boolean b4;
        int lu;
        if (!TextUtils.isEmpty((CharSequence)ab) && s.b(com.android.emailcommon.b.a.abb, ab)) {
            b3 = false;
            b4 = false;
            lu = 1;
        }
        else {
            b3 = b;
            b4 = b2;
            lu = 0;
        }
        if ((dm & 0x200) != 0x0) {
            b3 = false;
            b4 = false;
            lu |= 0x20;
        }
        final String ab2 = com.android.emailcommon.b.a.aB(this.mName);
        boolean lt;
        boolean ls;
        boolean lr;
        if (!TextUtils.isEmpty((CharSequence)ab2) && s.b(com.android.emailcommon.b.a.abc, ab2)) {
            final boolean b5 = Settings$Secure.getInt(context.getContentResolver(), "install_non_market_apps", 0) == 1;
            lt = (b4 & b5);
            if (!b5) {
                lu |= 0x8;
                ls = lt;
                lr = lt;
            }
            else {
                ls = lt;
                lr = lt;
            }
        }
        else {
            lr = b3;
            ls = b4;
            lt = false;
        }
        if (this.Lo > 5242880L && c.m(context) != 1) {
            lr = false;
            ls = false;
            lu |= 0x2;
        }
        Uri uri = com.android.emailcommon.b.a.c(0L, this.Ln);
        if (0L > 0L) {
            uri = com.android.emailcommon.b.a.a(context.getContentResolver(), uri);
        }
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, this.Lp);
        intent.addFlags(524289);
        if (context.getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            lr = false;
            ls = false;
            lu |= 0x4;
        }
        this.Lr = lr;
        this.Ls = ls;
        this.Lt = lt;
        this.Lu = lu;
    }
    
    public a(final Context context, final EmailContent$Attachment emailContent$Attachment) {
        this(context, emailContent$Attachment.Ln, emailContent$Attachment.Lo, emailContent$Attachment.Yl, emailContent$Attachment.Ym, emailContent$Attachment.Lq, emailContent$Attachment.dM);
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            if (o == null || o.getClass() != this.getClass()) {
                return false;
            }
            if (((a)o).Ln != this.Ln) {
                return false;
            }
        }
        return true;
    }
    
    public final boolean gA() {
        return this.Lr || this.Ls;
    }
    
    @Override
    public final int hashCode() {
        return (int)(this.Ln ^ this.Ln >>> 32);
    }
    
    @Override
    public final String toString() {
        return "{Attachment " + this.Ln + ":" + this.mName + "," + this.Lp + "," + this.Lo + "}";
    }
}
