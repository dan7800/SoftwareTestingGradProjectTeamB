package com.google.android.gms.internal;

import java.util.*;

final class dv
{
    final byte[] akI;
    final int tag;
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof dv)) {
                return false;
            }
            final dv dv = (dv)o;
            if (this.tag != dv.tag || !Arrays.equals(this.akI, dv.akI)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return 31 * (527 + this.tag) + Arrays.hashCode(this.akI);
    }
}
