package com.android.mail.ui;

import com.android.mail.providers.*;

public final class bX implements Comparable<bX>
{
    public String aKv;
    private final Folder aqp;
    private boolean axa;
    
    public bX(final Folder aqp, final boolean axa) {
        this.aqp = aqp;
        this.axa = axa;
    }
    
    public final int b(final bX bx) {
        if (this.equals(bx)) {
            return 0;
        }
        return this.aqp.name.compareToIgnoreCase(bx.aqp.name);
    }
    
    public final void bx(final boolean axa) {
        this.axa = axa;
    }
    
    public final boolean isSelected() {
        return this.axa;
    }
    
    public final Folder vT() {
        return this.aqp;
    }
}
