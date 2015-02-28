package com.android.datetimepicker.date;

import android.content.*;
import android.graphics.drawable.*;
import android.content.res.*;
import com.android.datetimepicker.*;
import java.util.*;
import android.view.*;
import android.view.accessibility.*;
import android.widget.*;

public final class q extends ListView implements AdapterView$OnItemClickListener, d
{
    private final a IA;
    private s JF;
    private int JG;
    private int JH;
    private TextViewWithCircularIndicator JI;
    
    public q(final Context context, final a ia) {
        super(context);
        (this.IA = ia).a(this);
        this.setLayoutParams(new ViewGroup$LayoutParams(-1, -2));
        final Resources resources = context.getResources();
        this.JG = resources.getDimensionPixelOffset(e.Hn);
        this.JH = resources.getDimensionPixelOffset(e.Hu);
        this.setVerticalFadingEdgeEnabled(true);
        this.setFadingEdgeLength(this.JH / 3);
        this.g(context);
        this.setOnItemClickListener((AdapterView$OnItemClickListener)this);
        this.setSelector((Drawable)new StateListDrawable());
        this.setDividerHeight(0);
        this.gm();
    }
    
    private static int a(final TextView textView) {
        return Integer.valueOf(textView.getText().toString());
    }
    
    private void g(final Context context) {
        final ArrayList<String> list = new ArrayList<String>();
        for (int i = this.IA.gg(); i <= this.IA.gh(); ++i) {
            list.add(String.format("%d", i));
        }
        this.setAdapter((ListAdapter)(this.JF = new s(context, g.HD, list)));
    }
    
    public final void gm() {
        this.JF.notifyDataSetChanged();
        this.z(this.IA.gf().year - this.IA.gg(), this.JG / 2 - this.JH / 2);
    }
    
    public final int gw() {
        final View child = this.getChildAt(0);
        if (child == null) {
            return 0;
        }
        return child.getTop();
    }
    
    public final void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4096) {
            accessibilityEvent.setFromIndex(0);
            accessibilityEvent.setToIndex(0);
        }
    }
    
    public final void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        this.IA.ge();
        final TextViewWithCircularIndicator ji = (TextViewWithCircularIndicator)view;
        if (ji != null) {
            if (ji != this.JI) {
                if (this.JI != null) {
                    this.JI.P(false);
                    this.JI.requestLayout();
                }
                ji.P(true);
                ji.requestLayout();
                this.JI = ji;
            }
            this.IA.aE(a(ji));
            this.JF.notifyDataSetChanged();
        }
    }
    
    public final void z(final int n, final int n2) {
        this.post((Runnable)new r(this, n, n2));
    }
}
