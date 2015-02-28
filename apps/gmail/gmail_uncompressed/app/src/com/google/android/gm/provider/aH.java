package com.google.android.gm.provider;

import java.util.*;

public final class ah
{
    private final long bhV;
    private final long bhW;
    private final Set<Long> bhX;
    private final Set<Long> bhY;
    private final boolean bhZ;
    
    public ah(final long bhV, final long bhW, final Set<Long> bhX, final Set<Long> bhY) {
        this.bhV = bhV;
        this.bhW = bhW;
        this.bhX = bhX;
        this.bhY = bhY;
        this.bhZ = false;
    }
    
    public final long FL() {
        return this.bhV;
    }
    
    public final long FM() {
        return this.bhW;
    }
    
    public final boolean FN() {
        return this.bhZ;
    }
    
    public final boolean n(final Set<Long> set) {
        if (!set.containsAll(this.bhX)) {
            return false;
        }
        final Iterator<Long> iterator = this.bhY.iterator();
        while (iterator.hasNext()) {
            if (set.contains(iterator.next())) {
                return false;
            }
        }
        return true;
    }
}
