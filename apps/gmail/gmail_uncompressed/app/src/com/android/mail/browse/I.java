package com.android.mail.browse;

import android.text.*;
import android.text.style.*;
import android.graphics.*;

public final class i extends ReplacementSpan
{
    private TextPaint alm;
    private final Spanned aln;
    private final j alo;
    
    public i(final Spanned aln, final j alo) {
        this.alm = new TextPaint();
        this.aln = aln;
        this.alo = alo;
    }
    
    private int a(final Paint paint, final CharSequence charSequence, final int n, final int n2) {
        return (int)paint.measureText(charSequence, n, n2) + 2 * this.alo.oL();
    }
    
    public final void draw(final Canvas canvas, final CharSequence charSequence, final int n, final int n2, final float n3, final int n4, final int n5, final int n6, final Paint paint) {
        this.alm.set(paint);
        final CharacterStyle[] array = (CharacterStyle[])this.aln.getSpans(n, n2, (Class)CharacterStyle.class);
        for (int length = array.length, i = 0; i < length; ++i) {
            array[i].updateDrawState(this.alm);
        }
        if (this.alm.bgColor != 0) {
            final int color = this.alm.getColor();
            final Paint$Style style = this.alm.getStyle();
            this.alm.setColor(this.alm.bgColor);
            this.alm.setStyle(Paint$Style.FILL);
            final RectF rectF = new RectF(n3, (float)n4, n3 + this.a((Paint)this.alm, charSequence, n, n2), (float)n6);
            final float om = this.alo.oM();
            canvas.drawRoundRect(rectF, om, om, (Paint)this.alm);
            this.alm.setColor(color);
            this.alm.setStyle(style);
        }
        canvas.drawText(charSequence, n, n2, n3 + this.alo.oL(), (float)n5, (Paint)this.alm);
    }
    
    public final int getSize(final Paint paint, final CharSequence charSequence, final int n, final int n2, final Paint$FontMetricsInt paint$FontMetricsInt) {
        if (paint$FontMetricsInt != null) {
            paint.getFontMetricsInt(paint$FontMetricsInt);
            paint$FontMetricsInt.top = paint$FontMetricsInt.ascent;
        }
        return this.a(paint, charSequence, n, n2);
    }
}
