package com.android.ex.chips.a;

import android.text.style.*;
import android.graphics.drawable.*;
import android.graphics.*;

public class d extends ReplacementSpan
{
    protected static final Paint afB;
    protected Drawable Aj;
    private float afC;
    
    static {
        afB = new Paint();
    }
    
    public d(final Drawable aj) {
        this.Aj = aj;
    }
    
    public void draw(final Canvas canvas, final CharSequence charSequence, final int n, final int n2, final float n3, final int n4, final int n5, final int n6, final Paint paint) {
        canvas.save();
        canvas.translate(n3, (float)((n4 + (n6 - this.Aj.getBounds().bottom)) / 2));
        this.Aj.draw(canvas);
        canvas.restore();
    }
    
    protected Rect getBounds() {
        return this.Aj.getBounds();
    }
    
    public int getSize(final Paint paint, final CharSequence charSequence, final int n, final int n2, final Paint$FontMetricsInt paint$FontMetricsInt) {
        d.afB.set(paint);
        if (paint$FontMetricsInt != null) {
            d.afB.getFontMetricsInt(paint$FontMetricsInt);
            final Rect bounds = this.getBounds();
            final int n3 = paint$FontMetricsInt.descent - paint$FontMetricsInt.ascent;
            final int n4 = (int)this.afC / 2;
            paint$FontMetricsInt.ascent = Math.min(paint$FontMetricsInt.top, paint$FontMetricsInt.top + (n3 - bounds.bottom) / 2) - n4;
            paint$FontMetricsInt.descent = n4 + Math.max(paint$FontMetricsInt.bottom, paint$FontMetricsInt.bottom + (bounds.bottom - n3) / 2);
            paint$FontMetricsInt.top = paint$FontMetricsInt.ascent;
            paint$FontMetricsInt.bottom = paint$FontMetricsInt.descent;
        }
        return this.getBounds().right;
    }
    
    public final void r(final float afC) {
        this.afC = afC;
    }
}
