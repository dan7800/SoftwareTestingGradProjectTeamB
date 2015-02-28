package com.google.common.collect;

import java.util.*;

class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V>
{
    final transient ImmutableMap<K, V> cCc;
    final transient ImmutableBiMap<V, K> cCd;
    
    RegularImmutableBiMap(final ImmutableMap<K, V> cCc) {
        this.cCc = cCc;
        final y<K, Object> y = new y<K, Object>();
        for (final Map.Entry<K, Object> entry : cCc.YZ()) {
            y.p((K)entry.getValue(), entry.getKey());
        }
        this.cCd = (ImmutableBiMap<V, K>)new RegularImmutableBiMap((ImmutableMap<Object, Object>)y.Zo(), (ImmutableBiMap<Object, Object>)this);
    }
    
    private RegularImmutableBiMap(final ImmutableMap<K, V> cCc, final ImmutableBiMap<V, K> cCd) {
        this.cCc = cCc;
        this.cCd = cCd;
    }
    
    @Override
    final boolean YW() {
        return this.cCc.YW() || this.cCd.Zj().YW();
    }
    
    @Override
    final ImmutableMap<K, V> Zj() {
        return this.cCc;
    }
    
    @Override
    public final ImmutableBiMap<V, K> Zk() {
        return this.cCd;
    }
}
