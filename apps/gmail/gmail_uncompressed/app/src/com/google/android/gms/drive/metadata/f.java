package com.google.android.gms.drive.metadata;

import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public abstract class f<T> implements a<T>
{
    private final String bIb;
    private final Set<String> bIc;
    private final Set<String> bId;
    private final int bIe;
    
    protected f(final String s, final int bIe) {
        this.bIb = G.f(s, (Object)"fieldName");
        this.bIc = Collections.singleton(s);
        this.bId = Collections.emptySet();
        this.bIe = bIe;
    }
    
    protected f(final String s, final Collection<String> collection, final Collection<String> collection2, final int bIe) {
        this.bIb = G.f(s, (Object)"fieldName");
        this.bIc = Collections.unmodifiableSet((Set<? extends String>)new HashSet<String>(collection));
        this.bId = Collections.unmodifiableSet((Set<? extends String>)new HashSet<String>(collection2));
        this.bIe = bIe;
    }
    
    @Override
    public final String getName() {
        return this.bIb;
    }
    
    @Override
    public String toString() {
        return this.bIb;
    }
    
    @Override
    public final T w(final Bundle bundle) {
        G.f(bundle, "bundle");
        if (bundle.get(this.bIb) != null) {
            return this.x(bundle);
        }
        return null;
    }
    
    protected abstract T x(final Bundle p0);
}
