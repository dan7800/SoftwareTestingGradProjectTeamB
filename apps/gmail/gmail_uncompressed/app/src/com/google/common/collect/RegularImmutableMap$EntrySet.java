package com.google.common.collect;

import com.google.common.base.*;
import java.io.*;
import java.util.*;

class RegularImmutableMap$EntrySet<K, V> extends ImmutableSet$ArrayImmutableSet<Map.Entry<K, V>>
{
    final transient RegularImmutableMap<K, V> map;
    
    RegularImmutableMap$EntrySet(final RegularImmutableMap<K, V> map) {
        super(((RegularImmutableMap<Object, Object>)map).cCg);
        this.map = map;
    }
    
    @Override
    public boolean contains(final Object o) {
        final boolean b = o instanceof Map.Entry;
        boolean b2 = false;
        if (b) {
            final Map.Entry entry = (Map.Entry)o;
            final V value = this.map.get(entry.getKey());
            b2 = false;
            if (value != null) {
                final boolean equals = value.equals(entry.getValue());
                b2 = false;
                if (equals) {
                    b2 = true;
                }
            }
        }
        return b2;
    }
}
