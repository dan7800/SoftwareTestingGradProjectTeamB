package com.android.mail.ui;

import java.util.regex.*;
import android.content.*;
import java.util.*;
import android.support.v4.e.*;
import android.text.*;
import com.android.mail.utils.*;
import java.io.*;

public final class cg extends M
{
    private static final String TAG;
    public static final int aKG;
    private static final Pattern aKH;
    private static boolean aKI;
    private static String aKJ;
    private static String aKK;
    private static String aKL;
    private static String aKM;
    
    static {
        aKG = 1;
        TAG = D.AU();
        aKH = Pattern.compile("(<\\s*img\\s+(?:[^>]*\\s+)?)src(\\s*=[\\s'\"]*http)", 10);
    }
    
    public cg(final Context context) {
        super(context);
        if (!cg.aKI) {
            cg.aKI = true;
            cg.aKJ = this.cK(2131165194);
            cg.aKK = this.cK(2131165189);
            cg.aKL = this.cK(2131165187);
            cg.aKM = this.cK(2131165186);
        }
    }
    
    public static String a(final ch ch) {
        return "m" + ch.getId();
    }
    
    public static String cn(final String s) {
        return s;
    }
    
    public static String co(final String s) {
        return s.substring(cg.aKG);
    }
    
    public final void R(final int n, final int n2) {
        if (!this.Um) {
            throw new IllegalStateException("must call startConversation first");
        }
        this.b(cg.aKJ, n, n2);
    }
    
    public final String a(final int n, final String s, final String s2, final int n2, final int n3, final boolean b, final boolean b2, final boolean b3, final boolean b4) {
        if (!this.Um) {
            throw new IllegalStateException("must call startConversation first");
        }
        String s3;
        if (b) {
            s3 = "initial-load";
        }
        else {
            s3 = "";
        }
        int n4;
        if (q.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {
            n4 = 1;
        }
        else {
            n4 = 0;
        }
        final StringBuilder sb = new StringBuilder();
        String s4;
        if (n4 != 0) {
            s4 = "\u25c0 ";
        }
        else {
            s4 = "\u25b6 ";
        }
        this.b(cg.aKM, n, s3, TextUtils.htmlEncode(this.mContext.getString(2131296546)), sb.append(s4).append(TextUtils.htmlEncode(this.mContext.getString(2131296545))).toString(), s, s2, n2, n3, b, b2, b3, b4, ag.Bg(), TextUtils.htmlEncode(this.mContext.getString(2131296745)));
        this.Um = false;
        E.c(cg.TAG, "rendered conversation of %d bytes, buffer capacity=%d", this.gJ.length() << 1, this.gJ.capacity() << 1);
        return this.xf();
    }
    
    public final void a(final ch ch, final boolean b, final boolean b2, final int n, final int n2) {
        String s;
        if (b) {
            s = "block";
        }
        else {
            s = "none";
        }
        String s2;
        if (b) {
            s2 = "expanded";
        }
        else {
            s2 = "";
        }
        String s3;
        if (b2) {
            s3 = "mail-show-images";
        }
        else {
            s3 = "";
        }
        String s4 = ch.vF();
        if (!b2 && ch.vE()) {
            s4 = cg.aKH.matcher(s4).replaceAll("$1src='data:' blocked-src$2");
        }
        this.b(cg.aKK, a(ch), s2, n, s3, s, s4, s, n2);
    }
    
    public final void f(final int n, final int n2, final int n3) {
        if (this.Um) {
            throw new IllegalStateException("Should not call start conversation until end conversation has been called");
        }
        this.reset();
        String s;
        if (ag.Bg()) {
            s = "img[blocked-src] { border: 1px solid #CCCCCC; }";
        }
        else {
            s = "";
        }
        this.b(cg.aKL, n, s, n2, n3);
        this.Um = true;
    }
}
