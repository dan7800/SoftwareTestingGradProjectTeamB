package com.android.mail.ui;

import android.content.*;
import android.util.*;
import com.android.mail.utils.*;
import android.view.*;
import java.util.*;
import com.android.mail.providers.*;
import android.widget.*;
import com.android.mail.c.*;
import android.graphics.*;
import android.database.*;

public class MiniDrawerView extends LinearLayout
{
    private bB aMd;
    private View aMe;
    private final LayoutInflater wC;
    
    public MiniDrawerView(final Context context) {
        this(context, null);
    }
    
    public MiniDrawerView(final Context context, final AttributeSet set) {
        super(context, set);
        this.wC = LayoutInflater.from(context);
    }
    
    private void df(final int n) {
        final LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams)this.aMe.getLayoutParams();
        this.aMe.measure(View$MeasureSpec.makeMeasureSpec(this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight(), Integer.MIN_VALUE), View$MeasureSpec.makeMeasureSpec(n - linearLayout$LayoutParams.bottomMargin - linearLayout$LayoutParams.topMargin, 1073741824));
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.aMe = this.findViewById(2131558834);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        if (this.getChildCount() == 0) {
            return;
        }
        final int n5 = this.getMeasuredHeight() - this.getPaddingBottom() - this.getPaddingTop();
        final int childCount = this.getChildCount();
        int i = 0;
        int n6 = 0;
        while (i < childCount) {
            final View child = this.getChildAt(i);
            int n7;
            if (!child.equals(this.aMe) && child.getVisibility() != 8) {
                final LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams)child.getLayoutParams();
                n7 = n6 + (linearLayout$LayoutParams.topMargin + linearLayout$LayoutParams.bottomMargin + child.getMeasuredHeight());
            }
            else {
                n7 = n6;
            }
            ++i;
            n6 = n7;
        }
        if (n6 <= n5) {
            super.onLayout(b, n, n2, n3, n4);
            return;
        }
        if (n6 <= n5) {
            this.df(n5 - n6);
            super.onLayout(b, n, n2, n3, n4);
            return;
        }
        if (this.getChildAt(-1 + this.getChildCount()).equals(this.aMe)) {
            E.b(E.TAG, "The ellipsis was the last item in the minidrawer and hiding it didn't help fit all the views", new Object[0]);
            return;
        }
        final View child2 = this.getChildAt(1 + this.indexOfChild(this.aMe));
        child2.setVisibility(8);
        final LinearLayout$LayoutParams linearLayout$LayoutParams2 = (LinearLayout$LayoutParams)child2.getLayoutParams();
        final int n8 = n6 - (linearLayout$LayoutParams2.topMargin + linearLayout$LayoutParams2.bottomMargin + child2.getMeasuredHeight());
        if (n8 <= n5) {
            this.df(n5 - n8);
            super.onLayout(b, n, n2, n3, n4);
            return;
        }
        E.b(E.TAG, "Hid two children in the minidrawer and still couldn't fit all the views", new Object[0]);
    }
    
    protected void onMeasure(final int n, final int n2) {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            this.getChildAt(i).setVisibility(0);
        }
        super.onMeasure(n, n2);
    }
    
    public final void refresh() {
        if (this.aMd != null && this.aMd.isAdded()) {
            final ListAdapter zq = this.aMd.zq();
            if (zq.getCount() > 0) {
                final View child = this.getChildAt(0);
                if (child != null) {
                    this.removeView(child);
                }
                final View view = zq.getView(0, child, (ViewGroup)this);
                view.setClickable(false);
                view.setFocusable(false);
                this.addView(view, 0);
            }
            final int n = 1 + this.indexOfChild(this.aMe);
            final int n2 = this.getChildCount() - n;
            final ArrayDeque arrayDeque = new ArrayDeque<View>(n2);
            for (int i = 0; i < n2; ++i) {
                final View child2 = this.getChildAt(n);
                arrayDeque.add(child2);
                this.removeView(child2);
            }
            for (int min = Math.min(zq.getCount(), 3), j = 1; j < min; ++j) {
                this.addView(zq.getView(j, (View)arrayDeque.poll(), (ViewGroup)this));
            }
            while (true) {
                final View child3 = this.getChildAt(1);
                if (child3 == this.aMe) {
                    break;
                }
                this.removeView(child3);
            }
            final b<Folder> zo = this.aMd.zo();
            if (zo != null && !zo.isClosed()) {
                int n3 = -1;
                int n4 = 0;
                while (true) {
                    final int n5 = n3 + 1;
                    if (!zo.moveToPosition(n5)) {
                        break;
                    }
                    final Folder folder = zo.sW();
                    int n6;
                    if (folder.uR()) {
                        final View inflate = this.wC.inflate(2130968727, (ViewGroup)this, false);
                        final ImageView imageView = (ImageView)inflate.findViewById(2131558866);
                        imageView.setTag((Object)new cA(this, folder, imageView));
                        imageView.setContentDescription((CharSequence)folder.name);
                        inflate.setActivated(this.aMd.o(folder));
                        this.addView(inflate, n4 + 1);
                        n6 = n4 + 1;
                    }
                    else {
                        n6 = n4;
                    }
                    n4 = n6;
                    n3 = n5;
                }
            }
        }
    }
    
    public boolean requestFocus(final int n, final Rect rect) {
        return super.requestFocus(130, rect);
    }
    
    public final void t(final bB aMd) {
        this.aMd = aMd;
        this.aMd.zq().registerDataSetObserver((DataSetObserver)new cB(this, (byte)0));
    }
}
