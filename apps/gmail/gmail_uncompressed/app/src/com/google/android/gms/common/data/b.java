package com.google.android.gms.common.data;

import com.google.android.gms.common.api.*;
import android.os.*;
import java.util.*;

public abstract class b<T> implements s, Iterable<T>
{
    protected final DataHolder bDT;
    
    protected b(final DataHolder bdt) {
        this.bDT = bdt;
        if (this.bDT != null) {
            this.bDT.Z(this);
        }
    }
    
    public final Bundle KJ() {
        return this.bDT.KJ();
    }
    
    @Deprecated
    public final void close() {
        this.release();
    }
    
    public abstract T get(final int p0);
    
    public final int getCount() {
        if (this.bDT == null) {
            return 0;
        }
        return this.bDT.getCount();
    }
    
    @Deprecated
    public final boolean isClosed() {
        return this.bDT == null || this.bDT.isClosed();
    }
    
    @Override
    public Iterator<T> iterator() {
        return new g<T>(this);
    }
    
    @Override
    public final void release() {
        if (this.bDT != null) {
            this.bDT.close();
        }
    }
}
