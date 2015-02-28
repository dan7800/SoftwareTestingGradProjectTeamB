package com.android.mail.utils;

import com.google.common.collect.*;
import java.util.*;

public final class j<K, V>
{
    private final Map<K, Deque<V>> aPd;
    
    public j() {
        this.aPd = (Map<K, Deque<V>>)Maps.aan();
    }
    
    public final V S(final K k) {
        final Deque<V> deque = this.aPd.get(k);
        if (deque == null) {
            return null;
        }
        return deque.poll();
    }
    
    public final V T(final K k) {
        final Deque<V> deque = this.aPd.get(k);
        if (deque == null) {
            return null;
        }
        return deque.peek();
    }
    
    public final void a(final k<V> k) {
        final Iterator<Map.Entry<K, Deque<V>>> iterator = this.aPd.entrySet().iterator();
        while (iterator.hasNext()) {
            final Iterator<V> iterator2 = iterator.next().getValue().iterator();
            while (iterator2.hasNext()) {
                k.P(iterator2.next());
            }
        }
    }
    
    public final void d(final K k, final V v) {
        Deque<V> deque = this.aPd.get(k);
        if (deque == null) {
            deque = new LinkedList<V>();
            this.aPd.put(k, deque);
        }
        deque.add(v);
    }
}
