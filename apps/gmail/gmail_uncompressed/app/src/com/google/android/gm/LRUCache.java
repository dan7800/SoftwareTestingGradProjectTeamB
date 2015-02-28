package com.google.android.gm;

import java.util.*;

public class LRUCache<K, V> extends LinkedHashMap<K, V>
{
    private static final long serialVersionUID = 1L;
    private final int maxCapacity;
    
    public LRUCache(final int n) {
        this(n, n);
    }
    
    private LRUCache(final int n, final int maxCapacity) {
        super(n, 0.75f, true);
        this.maxCapacity = maxCapacity;
    }
    
    public final void X(final K k) {
        synchronized (this) {
            this.put(k, null);
        }
    }
    
    @Override
    public void putAll(final Map<? extends K, ? extends V> map) {
        synchronized (this) {
            for (final Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                this.put((K)entry.getKey(), (V)entry.getValue());
            }
        }
    }
    // monitorexit(this)
    
    @Override
    protected boolean removeEldestEntry(final Map.Entry<K, V> entry) {
        synchronized (this) {
            return this.size() > this.maxCapacity;
        }
    }
}
