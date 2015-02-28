package com.android.ex.chips;

import android.net.*;
import android.content.res.*;

abstract class v
{
    private final Uri adk;
    private final Uri adl;
    private final String[] eN;
    
    public v(final String[] en, final Uri adk, final Uri adl) {
        this.eN = en;
        this.adk = adk;
        this.adl = adl;
    }
    
    public final String[] getProjection() {
        return this.eN;
    }
    
    public abstract CharSequence getTypeLabel(final Resources p0, final int p1, final CharSequence p2);
    
    public final Uri mA() {
        return this.adk;
    }
    
    public final Uri mB() {
        return this.adl;
    }
}
