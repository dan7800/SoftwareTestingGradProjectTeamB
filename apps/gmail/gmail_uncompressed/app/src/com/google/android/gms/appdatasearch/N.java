package com.google.android.gms.appdatasearch;

import java.util.*;

public final class n implements Iterator<m>
{
    final /* synthetic */ SuggestionResults bwA;
    private int bwn;
    
    public n(final SuggestionResults bwA) {
        this.bwA = bwA;
        this.bwn = 0;
    }
    
    @Override
    public final boolean hasNext() {
        return this.bwn < this.bwA.bwy.length;
    }
    
    @Override
    public final void remove() {
        throw new IllegalStateException("remove not supported");
    }
}
