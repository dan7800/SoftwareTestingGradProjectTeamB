package com.google.android.gms.people.accountswitcherview;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.*;

class ShrinkingItem extends FrameLayout
{
    private float aoa;
    
    public ShrinkingItem(final Context context, final AttributeSet set) {
        super(context, set);
        this.aoa = 1.0f;
    }
    
    public ShrinkingItem(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.aoa = 1.0f;
    }
    
    protected void onMeasure(final int n, final int n2) {
        super.onMeasure(n, n2);
        int n3 = this.getMeasuredHeight();
        if (this.aoa != 1.0f) {
            n3 = Math.round(this.aoa * n3);
        }
        this.setMeasuredDimension(View$MeasureSpec.getSize(n), n3);
    }
}
