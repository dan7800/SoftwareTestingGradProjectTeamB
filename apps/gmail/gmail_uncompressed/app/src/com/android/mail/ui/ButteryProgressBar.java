package com.android.mail.ui;

import android.view.*;
import android.content.*;
import android.util.*;
import com.android.mail.*;
import android.animation.*;
import android.graphics.drawable.*;
import android.content.res.*;
import android.graphics.*;

public class ButteryProgressBar extends View
{
    private final GradientDrawable aGr;
    private final ValueAnimator aGs;
    private final int aGt;
    private final int aGu;
    private final int aGv;
    private int aGw;
    private final float art;
    private final Paint mb;
    
    public ButteryProgressBar(final Context context) {
        this(context, null);
    }
    
    public ButteryProgressBar(final Context context, final AttributeSet set) {
        super(context, set);
        this.mb = new Paint();
        this.art = context.getResources().getDisplayMetrics().density;
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, i.rx);
        try {
            this.aGt = obtainStyledAttributes.getColor(0, context.getResources().getColor(17170450));
            this.aGu = obtainStyledAttributes.getDimensionPixelSize(1, Math.round(4.0f * this.art));
            this.aGv = obtainStyledAttributes.getDimensionPixelSize(2, Math.round(3.0f * this.art));
            obtainStyledAttributes.recycle();
            (this.aGs = new ValueAnimator()).setFloatValues(new float[] { 1.0f, 2.0f });
            this.aGs.setRepeatCount(-1);
            this.aGs.setInterpolator((TimeInterpolator)new aq((byte)0));
            this.aGs.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new ap(this));
            this.mb.setColor(this.aGt);
            this.aGr = new GradientDrawable(GradientDrawable$Orientation.TOP_BOTTOM, new int[] { 0x22000000 | (0xFFFFFF & this.aGt), 0 });
        }
        finally {
            obtainStyledAttributes.recycle();
        }
    }
    
    private void start() {
        if (this.getVisibility() != 0) {
            return;
        }
        this.aGs.start();
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.start();
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.aGs.cancel();
    }
    
    protected void onDraw(final Canvas canvas) {
        if (this.aGs.isStarted()) {
            this.aGr.draw(canvas);
            final float floatValue = (float)this.aGs.getAnimatedValue();
            final int width = this.getWidth();
            final int n = width >> -1 + this.aGw;
            for (int i = 0; i < this.aGw; ++i) {
                final float n2 = floatValue * (width >> i + 1);
                float n3;
                if (i == 0) {
                    n3 = width + n;
                }
                else {
                    n3 = 2.0f * n2;
                }
                canvas.drawRect(n2 + this.aGv - n, 0.0f, n3 - n, (float)this.aGu, this.mb);
            }
        }
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        if (b) {
            final int width = this.getWidth();
            this.aGr.setBounds(0, this.aGu, width, this.getHeight() - this.aGu);
            final float n5 = width / this.art / 300.0f;
            final float n6 = 1.0f + 0.3f * (n5 - 1.0f);
            final float n7 = 1.0f + 0.1f * (n5 - 1.0f);
            this.aGs.setDuration((long)(int)(n6 * 500.0f));
            this.aGw = (int)(n7 * 5.0f);
        }
    }
    
    protected void onVisibilityChanged(final View view, final int n) {
        super.onVisibilityChanged(view, n);
        if (n == 0) {
            this.start();
            return;
        }
        this.aGs.cancel();
    }
}
