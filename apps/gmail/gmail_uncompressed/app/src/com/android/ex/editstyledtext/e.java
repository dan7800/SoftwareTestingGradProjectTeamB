package com.android.ex.editstyledtext;

import android.graphics.drawable.*;
import android.text.*;
import android.util.*;
import android.text.style.*;
import android.graphics.*;

public final class e extends ShapeDrawable
{
    private static boolean afS;
    private int GN;
    private Spannable afR;
    
    static {
        e.afS = false;
    }
    
    public final void bB(int gn) {
        if (e.afS) {
            Log.d("EditStyledTextSpan", "--- renewBounds:" + gn);
        }
        if (gn > 20) {
            gn -= 20;
        }
        this.setBounds(0, 0, this.GN = gn, 20);
    }
    
    public final void draw(final Canvas canvas) {
        final Spannable afR = this.afR;
        final f[] array = (f[])afR.getSpans(0, afR.length(), (Class)f.class);
    Label_0062:
        while (true) {
            if (array.length > 0) {
                for (final f f : array) {
                    if (f.getDrawable() == this) {
                        final f f2 = f;
                        break Label_0062;
                    }
                }
            }
            Label_0218: {
                break Label_0218;
                final Spannable afR2 = this.afR;
                final f f2;
                final ForegroundColorSpan[] array2 = (ForegroundColorSpan[])afR2.getSpans(afR2.getSpanStart((Object)f2), afR2.getSpanEnd((Object)f2), (Class)ForegroundColorSpan.class);
                if (e.afS) {
                    Log.d("EditStyledTextSpan", "--- renewColor:" + array2.length);
                }
                if (array2.length > 0) {
                    final int foregroundColor = array2[-1 + array2.length].getForegroundColor();
                    if (e.afS) {
                        Log.d("EditStyledTextSpan", "--- renewColor:" + foregroundColor);
                    }
                    this.getPaint().setColor(foregroundColor);
                }
                canvas.drawRect(new Rect(0, 9, this.GN, 11), this.getPaint());
                return;
            }
            Log.e("EditStyledTextSpan", "---renewBounds: Couldn't find");
            final f f2 = null;
            continue Label_0062;
        }
    }
}
