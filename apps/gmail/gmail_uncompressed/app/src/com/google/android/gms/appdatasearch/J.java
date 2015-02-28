package com.google.android.gms.appdatasearch;

import java.util.*;

public final class j implements Iterator<i>
{
    final /* synthetic */ SearchResults bwm;
    protected int bwn;
    private final Map<String, l>[] bwo;
    
    j(final SearchResults bwm) {
        this.bwm = bwm;
        Map<String, l>[] bwo;
        if (bwm.hasError()) {
            bwo = null;
        }
        else {
            bwo = (Map<String, l>[])new Map[bwm.bwh.length];
        }
        this.bwo = bwo;
    }
    
    @Override
    public final boolean hasNext() {
        return !this.bwm.hasError() && this.bwn < this.bwm.Jr();
    }
    
    @Override
    public final void remove() {
        throw new IllegalStateException("remove not supported");
    }
}
