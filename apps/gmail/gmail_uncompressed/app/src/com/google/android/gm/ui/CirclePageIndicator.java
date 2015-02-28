package com.google.android.gm.ui;

import android.support.v4.view.*;
import android.content.*;
import android.util.*;
import com.google.android.gm.*;
import android.content.res.*;
import android.graphics.*;
import android.view.*;

public class CirclePageIndicator extends View implements aM
{
    private ViewPager aGq;
    private final float bpw;
    private final float bpx;
    private Paint bpy;
    private Paint bpz;
    
    public CirclePageIndicator(final Context context, final AttributeSet set) {
        this(context, set, 2130772265);
    }
    
    public CirclePageIndicator(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        final Resources resources = context.getResources();
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, af.ry);
        try {
            (this.bpy = new Paint()).setStyle(Paint$Style.FILL);
            this.bpy.setAntiAlias(true);
            this.bpy.setColor(obtainStyledAttributes.getColor(0, 17170450));
            (this.bpz = new Paint()).setStyle(Paint$Style.FILL);
            this.bpz.setAntiAlias(true);
            this.bpz.setColor(obtainStyledAttributes.getColor(1, 17170451));
            this.bpw = obtainStyledAttributes.getDimension(2, resources.getDimension(2131493237));
            this.bpx = obtainStyledAttributes.getDimension(3, this.bpw);
        }
        finally {
            obtainStyledAttributes.recycle();
        }
    }
    
    private int Il() {
        return this.Im() + this.getPaddingLeft() + this.getPaddingRight();
    }
    
    private int Im() {
        if (this.aGq == null) {
            return 0;
        }
        final int count = this.getCount();
        return (int)(this.bpw * count + this.bpx * (count - 1));
    }
    
    private int In() {
        int n;
        if (this.aGq == null) {
            n = 0;
        }
        else {
            n = (int)this.bpw;
        }
        return n + this.getPaddingTop() + this.getPaddingBottom();
    }
    
    private int getCount() {
        if (this.aGq != null) {
            return this.aGq.bb().getCount();
        }
        return 0;
    }
    
    public final void D(final int n) {
        this.invalidate();
    }
    
    public final void E(final int n) {
    }
    
    public final void a(final int n, final float n2, final int n3) {
    }
    
    public final void e(final ViewPager aGq) {
        this.aGq = aGq;
    }
    
    protected void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        final float n = this.getMeasuredWidth() - (this.getPaddingLeft() + this.getPaddingRight());
        final float n2 = this.getMeasuredHeight() - (this.getPaddingTop() + this.getPaddingBottom());
        if (n > 0.0f && n2 > 0.0f) {
            final int count = this.getCount();
            int bd;
            if (this.aGq != null) {
                bd = this.aGq.bd();
            }
            else {
                bd = -1;
            }
            final float n3 = this.bpw / 2.0f;
            final float n4 = n3 + (this.getPaddingLeft() + n / 2.0f - this.Im() / 2);
            final float n5 = this.getPaddingTop() + n2 / 2.0f;
            float n6 = n4;
            for (int i = 0; i < count; ++i) {
                Paint paint;
                if (bd == i) {
                    paint = this.bpy;
                }
                else {
                    paint = this.bpz;
                }
                canvas.drawCircle(n6, n5, n3, paint);
                n6 += this.bpw + this.bpx;
            }
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        int n3 = 0;
        switch (View$MeasureSpec.getMode(n)) {
            default: {
                n3 = getDefaultSize(this.getSuggestedMinimumWidth(), n);
                break;
            }
            case 1073741824: {
                n3 = View$MeasureSpec.getSize(n);
                break;
            }
            case 0: {
                n3 = Math.max(this.Il(), this.getSuggestedMinimumWidth());
                break;
            }
            case Integer.MIN_VALUE: {
                n3 = Math.min(View$MeasureSpec.getSize(n), Math.max(this.Il(), this.getSuggestedMinimumWidth()));
                break;
            }
        }
        int n4 = 0;
        switch (View$MeasureSpec.getMode(n2)) {
            default: {
                n4 = getDefaultSize(this.getSuggestedMinimumHeight(), n2);
                break;
            }
            case 1073741824: {
                n4 = View$MeasureSpec.getSize(n2);
                break;
            }
            case 0: {
                n4 = Math.max(this.In(), this.getSuggestedMinimumHeight());
                break;
            }
            case Integer.MIN_VALUE: {
                n4 = Math.min(View$MeasureSpec.getSize(n2), Math.max(this.In(), this.getSuggestedMinimumHeight()));
                break;
            }
        }
        this.setMeasuredDimension(n3, n4);
    }
}
