package com.google.common.collect;

import com.google.common.base.*;

public abstract class GenericMapMaker<K0, V0>
{
    Q<K0, V0> removalListener;
    
    final <K extends K0, V extends V0> Q<K, V> Zf() {
        return e.n((Q<K, V>)this.removalListener, (Q<K, V>)GenericMapMaker$NullListener.cAt);
    }
}
