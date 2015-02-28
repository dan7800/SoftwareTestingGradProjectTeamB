package com.google.common.collect;

import com.google.common.base.*;
import java.io.*;
import java.util.*;

class RegularImmutableMap$KeySet<K, V> extends ImmutableSet$TransformedImmutableSet<Map.Entry<K, V>, K>
{
    final RegularImmutableMap<K, V> map;
    
    RegularImmutableMap$KeySet(final RegularImmutableMap<K, V> map) {
        super(((RegularImmutableMap<Object, Object>)map).cCg, ((RegularImmutableMap<Object, Object>)map).cCi);
        this.map = map;
    }
    
    @Override
    final boolean YW() {
        return true;
    }
    
    @Override
    public boolean contains(final Object o) {
        return this.map.containsKey(o);
    }
}
