package com.android.ex.chips.a;

import android.text.style.*;
import com.android.ex.chips.*;
import android.graphics.*;

public final class c extends ReplacementSpan implements b
{
    private final e afA;
    
    public c(final ae ae) {
        this.afA = new e(ae);
    }
    
    public final void aP(final String s) {
        this.afA.aP(s);
    }
    
    public final void draw(final Canvas canvas) {
    }
    
    public final void draw(final Canvas canvas, final CharSequence charSequence, final int n, final int n2, final float n3, final int n4, final int n5, final int n6, final Paint paint) {
    }
    
    public final Rect getBounds() {
        return new Rect(0, 0, 0, 0);
    }
    
    public final int getSize(final Paint paint, final CharSequence charSequence, final int n, final int n2, final Paint$FontMetricsInt paint$FontMetricsInt) {
        return 0;
    }
    
    public final boolean isSelected() {
        return this.afA.isSelected();
    }
    
    public final long mX() {
        return this.afA.mX();
    }
    
    public final Long mY() {
        return this.afA.mY();
    }
    
    public final long mZ() {
        return this.afA.mZ();
    }
    
    public final String nd() {
        return this.afA.nd();
    }
    
    public final CharSequence ne() {
        return this.afA.ne();
    }
    
    public final ae nf() {
        return this.afA.nf();
    }
    
    public final CharSequence ng() {
        return this.afA.ng();
    }
    
    public final void setSelected(final boolean selected) {
        this.afA.setSelected(selected);
    }
}
