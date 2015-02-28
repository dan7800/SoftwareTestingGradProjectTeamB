package com.android.mail.text;

import android.text.style.*;
import android.support.v4.e.*;
import android.text.*;
import com.android.mail.ui.*;
import android.graphics.*;

public final class b extends ReplacementSpan
{
    private final int aCI;
    private final int aCJ;
    private final bA aCK;
    private final c aCL;
    private final TextPaint alm;
    private final a aos;
    private final String mName;
    
    public b(final String mName, final int aci, final int acj, final bA ack, final a aos, final c acl) {
        this.alm = new TextPaint();
        this.mName = mName;
        this.aCI = aci;
        this.aCJ = acj;
        this.aCK = ack;
        this.aos = aos;
        this.aCL = acl;
    }
    
    private int a(final Paint paint) {
        paint.setTextSize((float)this.aCK.aJh);
        return Math.min((int)paint.measureText(this.mName) + 2 * this.aCK.aJf, this.aCL.rX());
    }
    
    public final void draw(final Canvas canvas, final CharSequence charSequence, final int n, final int n2, final float n3, final int n4, final int n5, final int n6, final Paint paint) {
        this.alm.set(paint);
        this.alm.setTextSize((float)this.aCK.aJh);
        final int a = this.a((Paint)this.alm);
        final TextPaint alm = this.alm;
        ((Paint)alm).setTextSize((float)this.aCK.aJh);
        final Paint$FontMetricsInt fontMetricsInt = ((Paint)alm).getFontMetricsInt();
        final int n7 = fontMetricsInt.bottom - fontMetricsInt.top;
        String s = this.mName;
        if (a == this.aCL.rX()) {
            s = TextUtils.ellipsize((CharSequence)this.mName, this.alm, (float)(a - 2 * this.aCK.aJf), TextUtils$TruncateAt.MIDDLE).toString();
        }
        bz.a(canvas, n3, n5 - n7, a, n7, s, this.aCI, this.aCJ, this.aCK, this.aos, (Paint)this.alm);
    }
    
    public final int getSize(final Paint paint, final CharSequence charSequence, final int n, final int n2, final Paint$FontMetricsInt paint$FontMetricsInt) {
        this.alm.set(paint);
        return this.a((Paint)this.alm);
    }
}
