package com.google.android.gms.common.images;

import java.lang.ref.*;
import android.net.*;
import com.google.android.gms.common.internal.*;
import java.util.*;

public final class g extends e
{
    private WeakReference<a> bEJ;
    
    @Override
    protected final void KS() {
        if (this.bEJ.get() != null) {
            final Uri uri = this.bEF.uri;
        }
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof g)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final g g = (g)o;
        final a a = this.bEJ.get();
        final a a2 = g.bEJ.get();
        return a2 != null && a != null && E.b(a2, a) && E.b(g.bEF, this.bEF);
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bEF });
    }
}
