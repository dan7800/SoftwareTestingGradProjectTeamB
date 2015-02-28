package com.google.common.collect;

import java.util.*;

public final class v<K, V> extends y<K, V>
{
    public final ImmutableBiMap<K, V> Zn() {
        final ImmutableMap<K, V> zo = (ImmutableMap<K, V>)super.Zo();
        if (zo.isEmpty()) {
            return ImmutableBiMap.Zh();
        }
        return new RegularImmutableBiMap<K, V>((ImmutableMap<Object, Object>)zo);
    }
    
    public final v<K, V> o(final K k, final V v) {
        super.p(k, v);
        return this;
    }
}
