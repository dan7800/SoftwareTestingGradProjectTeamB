package com.android.mail.ui;

import android.support.v4.view.*;
import com.android.mail.utils.*;
import android.view.*;

public final class ao
{
    private ViewPager aGq;
    
    public ao(final ViewPager aGq) {
        this.aGq = aGq;
    }
    
    private int cP(final int n) {
        return Math.max(0, Math.min(-1 + this.aGq.bb().getCount(), n));
    }
    
    private int cQ(int n) {
        if (al.aH((View)this.aGq)) {
            n = -1 + this.aGq.bb().getCount() - n;
        }
        return n;
    }
    
    public final int xS() {
        return this.cQ(0);
    }
    
    public final int xT() {
        return this.cQ(-1 + this.aGq.bb().getCount());
    }
    
    public final int xU() {
        return this.cP(this.cQ(-1 + this.cQ(this.aGq.bd())));
    }
    
    public final int xV() {
        return this.cP(this.cQ(1 + this.cQ(this.aGq.bd())));
    }
}
