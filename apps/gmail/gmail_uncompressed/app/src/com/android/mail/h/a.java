package com.android.mail.h;

import android.content.res.*;
import com.android.mail.b.*;
import com.android.mail.ui.*;
import com.android.mail.utils.*;
import android.text.*;
import android.graphics.*;

public final class a
{
    private static final String TAG;
    private final e akC;
    private final Canvas aro;
    private final Bitmap axC;
    private final Bitmap[] axD;
    private final Bitmap[] axE;
    private final Typeface axF;
    private final Rect axG;
    private final int axH;
    private final int axI;
    private final int axJ;
    private final TextPaint axK;
    private final char[] axL;
    
    static {
        TAG = D.AU();
    }
    
    public a(final Resources resources) {
        this(resources, new f(resources));
    }
    
    public a(final Resources resources, final e akC) {
        this.axK = new TextPaint();
        this.aro = new Canvas();
        this.axL = new char[1];
        this.axH = resources.getDimensionPixelSize(2131493069);
        this.axI = resources.getDimensionPixelSize(2131493068);
        this.axJ = resources.getColor(2131361968);
        this.axF = Typeface.create("sans-serif-light", 0);
        this.axG = new Rect();
        this.axK.setTypeface(this.axF);
        this.axK.setColor(this.axJ);
        this.axK.setTextAlign(Paint$Align.CENTER);
        this.axK.setAntiAlias(true);
        this.axD = new Bitmap[3];
        this.axC = BitmapFactory.decodeResource(resources, 2130837622);
        this.axE = new Bitmap[3];
        this.akC = akC;
    }
    
    private Bitmap a(final cj cj, final boolean b) {
        int n = 2;
        Bitmap bitmap;
        if (cj.width <= 0 || cj.height <= 0) {
            final String tag = a.TAG;
            final Object[] array = new Object[n];
            array[0] = cj.width;
            array[1] = cj.height;
            E.e(tag, "LetterTileProvider width(%d) or height(%d) is 0.", array);
            bitmap = null;
        }
        else {
            final float akn = cj.aKN;
            if (akn == 1.0f) {
                n = 0;
            }
            else if (akn == 0.5f) {
                n = 1;
            }
            Bitmap[] array2;
            if (b) {
                array2 = this.axE;
            }
            else {
                array2 = this.axD;
            }
            bitmap = array2[n];
            if (bitmap == null || bitmap.getWidth() != cj.width || bitmap.getHeight() != cj.height) {
                Bitmap bitmap2;
                if (b) {
                    bitmap2 = c.a(this.axC, cj.width, cj.height);
                }
                else {
                    bitmap2 = Bitmap.createBitmap(cj.width, cj.height, Bitmap$Config.ARGB_8888);
                }
                return array2[n] = bitmap2;
            }
        }
        return bitmap;
    }
    
    public final Bitmap a(final cj cj, final String s, final String s2) {
        String s3;
        if (!TextUtils.isEmpty((CharSequence)s)) {
            s3 = s;
        }
        else {
            s3 = s2;
        }
        final char char1 = s3.charAt(0);
        final Bitmap a = this.a(cj, false);
        if (a == null) {
            E.e(com.android.mail.h.a.TAG, "LetterTileProvider width(%d) or height(%d) is 0 for name %s and address %s.", cj.width, cj.height, s, s2);
            return null;
        }
        final Canvas aro = this.aro;
        aro.setBitmap(a);
        aro.drawColor(this.akC.bd(s2));
        int n;
        if (('A' <= char1 && char1 <= 'Z') || ('a' <= char1 && char1 <= 'z') || ('0' <= char1 && char1 <= '9')) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            this.axL[0] = Character.toUpperCase(char1);
            final TextPaint axK = this.axK;
            float ako;
            if (cj.aKO > 0.0f) {
                ako = cj.aKO;
            }
            else {
                int n2;
                if (cj.aKN == 1.0f) {
                    n2 = this.axH;
                }
                else {
                    n2 = this.axI;
                }
                ako = n2;
            }
            axK.setTextSize(ako);
            this.axK.getTextBounds(this.axL, 0, 1, this.axG);
            aro.drawText(this.axL, 0, 1, (float)(0 + cj.width / 2), (float)(0 + cj.height / 2 + (this.axG.bottom - this.axG.top) / 2), (Paint)this.axK);
        }
        else {
            aro.drawBitmap(this.a(cj, true), 0.0f, 0.0f, (Paint)null);
        }
        return a;
    }
}
