package com.android.mail.utils;

import java.util.*;

public final class LruCache<K, V> extends LinkedHashMap<K, V>
{
    private static final long serialVersionUID = 1L;
    private final int maxCapacity;
    
    public LruCache() {
        this(7, 7);
    }
    
    private LruCache(final int n, final int n2) {
        super(7, 0.75f, true);
        this.maxCapacity = 7;
    }
    
    public final void e(final K k, final V v) {
        synchronized (this) {
            this.put(k, v);
        }
    }
    
    @Override
    public final void putAll(final Map<? extends K, ? extends V> map) {
        synchronized (this) {
            for (final Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                this.put((K)entry.getKey(), (V)entry.getValue());
            }
        }
    }
    // monitorexit(this)
    
    @Override
    protected final boolean removeEldestEntry(final Map.Entry<K, V> entry) {
        synchronized (this) {
            return this.size() > this.maxCapacity;
        }
    }
}
