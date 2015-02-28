package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

public final class D<K, V> extends y<K, V>
{
    private final Comparator<? super K> comparator;
    
    public D(final Comparator<? super K> comparator) {
        this.comparator = i.ak(comparator);
    }
    
    private D<K, V> u(final K k, final V v) {
        this.cAz.add(ImmutableMap.s(k, v));
        return this;
    }
}
