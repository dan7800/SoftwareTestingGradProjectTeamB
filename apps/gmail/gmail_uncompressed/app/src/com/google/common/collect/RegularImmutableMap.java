package com.google.common.collect;

import com.google.common.base.*;
import java.io.*;
import java.util.*;

final class RegularImmutableMap<K, V> extends ImmutableMap<K, V>
{
    private static final long serialVersionUID;
    private transient ImmutableSet<Entry<K, V>> cAG;
    private transient ImmutableCollection<V> cAI;
    private final transient aD<K, V>[] cCg;
    private final transient aD<K, V>[] cCh;
    private final transient int cCi;
    private transient ImmutableSet<K> cCj;
    private final transient int mask;
    
    RegularImmutableMap(final Entry<?, ?>... array) {
        final int length = array.length;
        this.cCg = (aD<K, V>[])new aD[length];
        final int n = Integer.highestOneBit(length) << 1;
        i.a(n > 0, "table too large: %s", length);
        this.cCh = (aD<K, V>[])new aD[n];
        this.mask = n - 1;
        int i = 0;
        int cCi = 0;
        while (i < length) {
            final Entry<?, ?> entry = array[i];
            final Object key = entry.getKey();
            final int hashCode = key.hashCode();
            final int n2 = cCi + hashCode;
            final int n3 = u.fj(hashCode) & this.mask;
            aD<K, V> aar = this.cCh[n3];
            final Object value = entry.getValue();
            Serializable s;
            if (aar == null) {
                s = new RegularImmutableMap$TerminalEntry<Object, Object>(key, value);
            }
            else {
                s = new RegularImmutableMap$NonTerminalEntry<Object, Object>(key, value, aar);
            }
            final aD<K, V> ad = (aD<K, V>)s;
            this.cCh[n3] = ad;
            this.cCg[i] = ad;
            while (aar != null) {
                com.google.common.base.i.a(!key.equals(aar.getKey()), "duplicate key: %s", key);
                aar = aar.aar();
            }
            ++i;
            cCi = n2;
        }
        this.cCi = cCi;
    }
    
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    public final ImmutableSet<Entry<K, V>> YZ() {
        ImmutableSet<Entry<K, V>> cag = this.cAG;
        if (cag == null) {
            cag = (ImmutableSet<Entry<K, V>>)new RegularImmutableMap$EntrySet((RegularImmutableMap<Object, Object>)this);
            this.cAG = cag;
        }
        return cag;
    }
    
    @Override
    public final ImmutableSet<K> Za() {
        ImmutableSet<K> cCj = this.cCj;
        if (cCj == null) {
            cCj = (ImmutableSet<K>)new RegularImmutableMap$KeySet((RegularImmutableMap<Object, Object>)this);
            this.cCj = cCj;
        }
        return cCj;
    }
    
    @Override
    public final ImmutableCollection<V> Zb() {
        ImmutableCollection<V> cai = this.cAI;
        if (cai == null) {
            cai = new RegularImmutableMap$Values<V>(this);
            this.cAI = cai;
        }
        return cai;
    }
    
    @Override
    public final boolean containsValue(final Object o) {
        if (o != null) {
            final aD<K, V>[] cCg = this.cCg;
            for (int length = cCg.length, i = 0; i < length; ++i) {
                if (cCg[i].getValue().equals(o)) {
                    return true;
                }
            }
        }
        return false;
    }
    
    @Override
    public final V get(final Object o) {
        if (o != null) {
            for (Object aar = this.cCh[u.fj(o.hashCode()) & this.mask]; aar != null; aar = ((aD<Object, Object>)aar).aar()) {
                if (o.equals(((Map.Entry<Object, V>)aar).getKey())) {
                    return ((Map.Entry<Object, V>)aar).getValue();
                }
            }
        }
        return null;
    }
    
    @Override
    public final boolean isEmpty() {
        return false;
    }
    
    @Override
    public final int size() {
        return this.cCg.length;
    }
    
    @Override
    public final String toString() {
        final StringBuilder append = l.fh(this.size()).append('{');
        l.cAm.b(append, Arrays.asList(this.cCg));
        return append.append('}').toString();
    }
}
