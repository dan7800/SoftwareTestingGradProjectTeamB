package com.google.common.collect;

import java.io.*;
import com.google.common.base.*;
import java.util.*;

class ImmutableMap$SerializedForm implements Serializable
{
    private static final long serialVersionUID;
    private final Object[] keys;
    private final Object[] values;
    
    ImmutableMap$SerializedForm(final ImmutableMap<?, ?> immutableMap) {
        this.keys = new Object[immutableMap.size()];
        this.values = new Object[immutableMap.size()];
        final Iterator iterator = immutableMap.YZ().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Map.Entry<Object, V> entry = iterator.next();
            this.keys[n] = entry.getKey();
            this.values[n] = entry.getValue();
            ++n;
        }
    }
    
    final Object a(final y<Object, Object> y) {
        for (int i = 0; i < this.keys.length; ++i) {
            y.p(this.keys[i], this.values[i]);
        }
        return y.Zo();
    }
    
    Object readResolve() {
        return this.a(new y<Object, Object>());
    }
}
