package com.android.mail.b;

import android.content.res.*;
import android.graphics.*;

public final class g extends a
{
    private static int akD;
    private static int akE;
    private static final Paint akF;
    private static final Rect akG;
    private static final char[] akH;
    private static Bitmap akp;
    private e akC;
    
    static {
        akF = new Paint();
        akG = new Rect();
        akH = new char[1];
    }
    
    public g(final Resources resources) {
        super(resources);
        if (g.akD == 0) {
            g.akD = resources.getDimensionPixelSize(2131493069);
            g.akE = resources.getColor(2131361968);
            g.akp = BitmapFactory.decodeResource(resources, 2130837622);
            g.akF.setTypeface(Typeface.create("sans-serif-light", 0));
            g.akF.setTextAlign(Paint$Align.CENTER);
            g.akF.setAntiAlias(true);
        }
    }
    
    @Override
    protected final void a(final Canvas canvas) {
        if (this.aki != null) {
            final Rect bounds = this.getBounds();
            final String hq = this.aki.hQ();
            final Paint akF = g.akF;
            if (this.akC == null) {
                this.akC = new f(this.lR);
            }
            akF.setColor(this.akC.bd(hq));
            g.akF.setAlpha(this.akl.getAlpha());
            a.a(canvas, bounds, g.akF);
            final char char1 = this.aki.getDisplayName().charAt(0);
            int n;
            if (('A' <= char1 && char1 <= 'Z') || ('a' <= char1 && char1 <= 'z') || ('0' <= char1 && char1 <= '9')) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n == 0) {
                this.a(g.akp, g.akp.getWidth(), g.akp.getHeight(), canvas);
                return;
            }
            g.akH[0] = Character.toUpperCase(char1);
            g.akF.setTextSize((float)g.akD);
            g.akF.getTextBounds(g.akH, 0, 1, g.akG);
            g.akF.setColor(g.akE);
            canvas.drawText(g.akH, 0, 1, (float)bounds.centerX(), (float)(bounds.centerY() + g.akG.height() / 2), g.akF);
        }
    }
    
    public final void a(final e akC) {
        this.akC = akC;
    }
}
