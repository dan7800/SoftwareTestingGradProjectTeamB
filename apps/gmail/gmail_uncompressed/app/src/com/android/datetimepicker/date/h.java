package com.android.datetimepicker.date;

import android.util.*;
import android.view.*;

public final class h implements Runnable
{
    final /* synthetic */ f IE;
    private int IF;
    
    protected h(final f ie) {
        this.IE = ie;
    }
    
    public final void aH(final int if1) {
        this.IE.mHandler.removeCallbacks((Runnable)this);
        this.IF = if1;
        this.IE.mHandler.postDelayed((Runnable)this, 40L);
    }
    
    @Override
    public final void run() {
        int n = 1;
        this.IE.Iz = this.IF;
        if (Log.isLoggable("MonthFragment", 3)) {
            Log.d("MonthFragment", "new scroll state: " + this.IF + " old state: " + this.IE.Iy);
        }
        if (this.IF == 0 && this.IE.Iy != 0 && this.IE.Iy != n) {
            this.IE.Iy = this.IF;
            View view = this.IE.getChildAt(0);
            f ie;
            for (int n2 = 0; view != null && view.getBottom() <= 0; view = ie.getChildAt(n2)) {
                ie = this.IE;
                ++n2;
            }
            if (view != null) {
                final int firstVisiblePosition = this.IE.getFirstVisiblePosition();
                final int lastVisiblePosition = this.IE.getLastVisiblePosition();
                if (firstVisiblePosition == 0 || lastVisiblePosition == -1 + this.IE.getCount()) {
                    n = 0;
                }
                final int top = view.getTop();
                final int bottom = view.getBottom();
                final int n3 = this.IE.getHeight() / 2;
                if (n != 0 && top < f.Io) {
                    if (bottom > n3) {
                        this.IE.smoothScrollBy(top, 250);
                        return;
                    }
                    this.IE.smoothScrollBy(bottom, 250);
                }
            }
            return;
        }
        this.IE.Iy = this.IF;
    }
}
