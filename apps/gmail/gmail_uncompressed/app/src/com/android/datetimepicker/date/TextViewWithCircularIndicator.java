package com.android.datetimepicker.date;

import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.datetimepicker.*;
import android.content.res.*;
import android.graphics.*;

public class TextViewWithCircularIndicator extends TextView
{
    private final int JB;
    private final int JC;
    private final String JD;
    private boolean JE;
    Paint mt;
    
    public TextViewWithCircularIndicator(final Context context, final AttributeSet set) {
        super(context, set);
        this.mt = new Paint();
        final Resources resources = context.getResources();
        this.JC = resources.getColor(d.Hh);
        this.JB = resources.getDimensionPixelOffset(e.Ht);
        this.JD = context.getResources().getString(h.HG);
        this.mt.setFakeBoldText(true);
        this.mt.setAntiAlias(true);
        this.mt.setColor(this.JC);
        this.mt.setTextAlign(Paint$Align.CENTER);
        this.mt.setStyle(Paint$Style.FILL);
        this.mt.setAlpha(60);
    }
    
    public final void P(final boolean je) {
        this.JE = je;
    }
    
    public CharSequence getContentDescription() {
        CharSequence charSequence = this.getText();
        if (this.JE) {
            charSequence = String.format(this.JD, charSequence);
        }
        return charSequence;
    }
    
    public void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        if (this.JE) {
            final int width = this.getWidth();
            final int height = this.getHeight();
            canvas.drawCircle((float)(width / 2), (float)(height / 2), (float)(Math.min(width, height) / 2), this.mt);
        }
    }
}
