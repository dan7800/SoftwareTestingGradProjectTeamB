package com.android.ex.chips.a;

import android.graphics.drawable.*;
import com.android.ex.chips.*;
import android.graphics.*;

public final class f extends d implements b
{
    private final e afA;
    
    public f(final Drawable drawable, final ae ae) {
        super(drawable);
        this.afA = new e(ae);
    }
    
    public final void aP(final String s) {
        this.afA.aP(s);
    }
    
    @Override
    public final void draw(final Canvas canvas) {
        this.Aj.draw(canvas);
    }
    
    @Override
    public final Rect getBounds() {
        return super.getBounds();
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
    
    public final String toString() {
        return this.afA.toString();
    }
}
