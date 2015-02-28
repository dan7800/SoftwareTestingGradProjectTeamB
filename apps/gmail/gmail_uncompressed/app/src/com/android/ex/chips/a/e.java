package com.android.ex.chips.a;

import com.android.ex.chips.*;
import android.text.*;

final class e implements a
{
    private final Long adT;
    private final CharSequence afD;
    private final CharSequence afE;
    private final ae afF;
    private boolean afG;
    private CharSequence afH;
    private final long afu;
    private final long afv;
    private final String afz;
    
    public e(final ae afF) {
        this.afG = false;
        this.afD = afF.getDisplayName();
        this.afE = afF.mU().trim();
        this.afu = afF.mX();
        this.adT = afF.mY();
        this.afz = afF.nd();
        this.afv = afF.mZ();
        this.afF = afF;
    }
    
    @Override
    public final void aP(final String afH) {
        if (TextUtils.isEmpty((CharSequence)afH)) {
            this.afH = afH;
            return;
        }
        this.afH = afH.trim();
    }
    
    @Override
    public final boolean isSelected() {
        return this.afG;
    }
    
    @Override
    public final long mX() {
        return this.afu;
    }
    
    @Override
    public final Long mY() {
        return this.adT;
    }
    
    @Override
    public final long mZ() {
        return this.afv;
    }
    
    @Override
    public final String nd() {
        return this.afz;
    }
    
    @Override
    public final CharSequence ne() {
        return this.afE;
    }
    
    @Override
    public final ae nf() {
        return this.afF;
    }
    
    @Override
    public final CharSequence ng() {
        if (!TextUtils.isEmpty(this.afH)) {
            return this.afH;
        }
        return this.afF.mU();
    }
    
    @Override
    public final void setSelected(final boolean afG) {
        this.afG = afG;
    }
    
    @Override
    public final String toString() {
        return (Object)this.afD + " <" + (Object)this.afE + ">";
    }
}
