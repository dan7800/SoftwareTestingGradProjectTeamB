package com.google.common.collect;

import java.io.*;
import java.util.concurrent.*;
import com.google.common.base.*;
import java.util.*;

abstract class MapMakerInternalMap$AbstractSerializationProxy<K, V> extends p<K, V> implements Serializable
{
    private static final long serialVersionUID = 3L;
    transient ConcurrentMap<K, V> cBk;
    final int concurrencyLevel;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final Equivalence<Object> keyEquivalence;
    final MapMakerInternalMap$Strength keyStrength;
    final int maximumSize;
    final Q<? super K, ? super V> removalListener;
    final Equivalence<Object> valueEquivalence;
    final MapMakerInternalMap$Strength valueStrength;
    
    MapMakerInternalMap$AbstractSerializationProxy(final MapMakerInternalMap$Strength keyStrength, final MapMakerInternalMap$Strength valueStrength, final Equivalence<Object> keyEquivalence, final Equivalence<Object> valueEquivalence, final long expireAfterWriteNanos, final long expireAfterAccessNanos, final int maximumSize, final int concurrencyLevel, final Q<? super K, ? super V> removalListener, final ConcurrentMap<K, V> cBk) {
        this.keyStrength = keyStrength;
        this.valueStrength = valueStrength;
        this.keyEquivalence = keyEquivalence;
        this.valueEquivalence = valueEquivalence;
        this.expireAfterWriteNanos = expireAfterWriteNanos;
        this.expireAfterAccessNanos = expireAfterAccessNanos;
        this.maximumSize = maximumSize;
        this.concurrencyLevel = concurrencyLevel;
        this.removalListener = removalListener;
        this.cBk = cBk;
    }
    
    @Override
    protected final ConcurrentMap<K, V> Ze() {
        return this.cBk;
    }
}
