package com.android.datetimepicker.date;

import android.support.v4.widget.*;
import android.support.v4.view.a.*;
import android.view.accessibility.*;
import android.os.*;
import android.content.*;
import android.util.*;
import com.android.datetimepicker.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.graphics.*;
import java.util.*;
import java.security.*;
import android.text.format.*;
import android.view.*;

public final class l extends w
{
    final /* synthetic */ k JA;
    private final Calendar Jz;
    private final Rect is;
    
    public l(final k ja, final View view) {
        this.JA = ja;
        super(view);
        this.is = new Rect();
        this.Jz = Calendar.getInstance();
    }
    
    private CharSequence aK(final int n) {
        this.Jz.set(this.JA.Jf, this.JA.Je, n);
        CharSequence charSequence = DateFormat.format((CharSequence)"dd MMMM yyyy", this.Jz.getTimeInMillis());
        if (n == this.JA.Ji) {
            charSequence = this.JA.getContext().getString(h.HG, new Object[] { charSequence });
        }
        return charSequence;
    }
    
    @Override
    protected final void a(final int n, final i i) {
        final Rect is = this.is;
        final int ir = this.JA.IR;
        final k ja = this.JA;
        final int gr = k.gr();
        final int jg = this.JA.Jg;
        final int n2 = (this.JA.GN - 2 * this.JA.IR) / this.JA.Jk;
        final int n3 = n - 1 + this.JA.gs();
        final int n4 = n3 / this.JA.Jk;
        final int n5 = ir + n2 * (n3 % this.JA.Jk);
        final int n6 = gr + n4 * jg;
        is.set(n5, n6, n2 + n5, jg + n6);
        i.setContentDescription(this.aK(n));
        i.setBoundsInParent(this.is);
        i.addAction(16);
        if (n == this.JA.Ji) {
            i.setSelected(true);
        }
    }
    
    @Override
    protected final void a(final int n, final AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setContentDescription(this.aK(n));
    }
    
    public final void aJ(final int n) {
        this.e(this.JA).performAction(n, 64, null);
    }
    
    @Override
    protected final void b(final List<Integer> list) {
        for (int i = 1; i <= this.JA.Jl; ++i) {
            list.add(i);
        }
    }
    
    @Override
    protected final int d(final float n, final float n2) {
        final int f = this.JA.f(n, n2);
        if (f >= 0) {
            return f;
        }
        return Integer.MIN_VALUE;
    }
    
    public final void gv() {
        final int bx = this.bX();
        if (bx != Integer.MIN_VALUE) {
            this.e(this.JA).performAction(bx, 128, null);
        }
    }
    
    @Override
    protected final boolean i(final int n, final int n2) {
        switch (n2) {
            default: {
                return false;
            }
            case 16: {
                this.JA.aI(n);
                return true;
            }
        }
    }
}
