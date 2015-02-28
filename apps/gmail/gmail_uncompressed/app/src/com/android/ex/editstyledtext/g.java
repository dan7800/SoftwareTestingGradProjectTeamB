package com.android.ex.editstyledtext;

import android.text.style.*;
import android.graphics.*;
import android.util.*;
import android.text.*;

public class g extends CharacterStyle
{
    private int Zr;
    private int afU;
    
    public final void bD(final int n) {
        final int zr = this.Zr;
        int alpha = Color.alpha(n);
        int red = Color.red(n);
        int green = Color.green(n);
        final int blue = Color.blue(n);
        if (alpha == 0) {
            alpha = 128;
        }
        while (true) {
            Label_0097: {
                int argb = 0;
                switch (zr) {
                    default: {
                        Log.e("EditStyledText", "--- getMarqueeColor: got illigal marquee ID.");
                        argb = 16777215;
                        break;
                    }
                    case 0: {
                        if (red > 128) {
                            red /= 2;
                            break Label_0097;
                        }
                        red = (255 - red) / 2;
                        break Label_0097;
                    }
                    case 1: {
                        if (green > 128) {
                            green /= 2;
                            break Label_0097;
                        }
                        green = (255 - green) / 2;
                        break Label_0097;
                    }
                    case 2: {
                        argb = 16777215;
                        break;
                    }
                }
                this.afU = argb;
                return;
            }
            int argb = Color.argb(alpha, red, green, blue);
            continue;
        }
    }
    
    public void updateDrawState(final TextPaint textPaint) {
        textPaint.bgColor = this.afU;
    }
}
