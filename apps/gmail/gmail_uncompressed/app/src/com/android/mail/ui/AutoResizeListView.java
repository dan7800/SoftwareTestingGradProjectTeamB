package com.android.mail.ui;

import android.widget.*;
import android.graphics.*;
import android.content.*;
import android.util.*;
import android.view.*;

public class AutoResizeListView extends ListView
{
    private final Rect aea;
    private final int[] aeb;
    
    public AutoResizeListView(final Context context) {
        this(context, null);
    }
    
    public AutoResizeListView(final Context context, final AttributeSet set) {
        super(context, set);
        this.aea = new Rect();
        this.aeb = new int[2];
    }
    
    protected void onMeasure(final int n, final int n2) {
        this.getWindowVisibleDisplayFrame(this.aea);
        this.getLocationInWindow(this.aeb);
        final int n3 = this.aea.bottom - this.aeb[1];
        final int mode = View$MeasureSpec.getMode(n2);
        int n4 = View$MeasureSpec.getSize(n2);
        if (mode != 1073741824) {
            n4 = Math.min(n3, n4);
        }
        super.onMeasure(n, View$MeasureSpec.makeMeasureSpec(n4, mode));
    }
}
