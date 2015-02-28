package com.google.common.collect;

import java.util.concurrent.*;
import java.io.*;
import com.google.common.base.*;

public final class MapMaker extends GenericMapMaker<Object, Object>
{
    boolean cAV;
    int cAW;
    MapMaker$RemovalCause cAX;
    int concurrencyLevel;
    long expireAfterAccessNanos;
    long expireAfterWriteNanos;
    Equivalence<Object> keyEquivalence;
    MapMakerInternalMap$Strength keyStrength;
    int maximumSize;
    l ticker;
    Equivalence<Object> valueEquivalence;
    MapMakerInternalMap$Strength valueStrength;
    
    public MapMaker() {
        this.cAW = -1;
        this.concurrencyLevel = -1;
        this.maximumSize = -1;
        this.expireAfterWriteNanos = -1L;
        this.expireAfterAccessNanos = -1L;
    }
    
    private void b(final long n, final TimeUnit timeUnit) {
        i.b(this.expireAfterWriteNanos == -1L, "expireAfterWrite was already set to %s ns", this.expireAfterWriteNanos);
        i.b(this.expireAfterAccessNanos == -1L, "expireAfterAccess was already set to %s ns", this.expireAfterAccessNanos);
        i.a(n >= 0L, "duration cannot be negative: %s %s", n, timeUnit);
    }
    
    final int ZD() {
        if (this.cAW == -1) {
            return 16;
        }
        return this.cAW;
    }
    
    final int ZE() {
        if (this.concurrencyLevel == -1) {
            return 4;
        }
        return this.concurrencyLevel;
    }
    
    final MapMakerInternalMap$Strength ZF() {
        return e.n(this.keyStrength, MapMakerInternalMap$Strength.cBU);
    }
    
    final MapMakerInternalMap$Strength ZG() {
        return e.n(this.valueStrength, MapMakerInternalMap$Strength.cBU);
    }
    
    public final <K, V> ConcurrentMap<K, V> ZH() {
        if (!this.cAV) {
            return new ConcurrentHashMap<K, V>(this.ZD(), 0.75f, this.ZE());
        }
        Serializable s;
        if (this.cAX == null) {
            s = new MapMakerInternalMap<Object, Object>(this);
        }
        else {
            s = new MapMaker$NullConcurrentMap<Object, Object>(this);
        }
        return (MapMakerInternalMap<K, V>)s;
    }
    
    @Deprecated
    final MapMaker a(final long n, final TimeUnit timeUnit) {
        this.b(n, timeUnit);
        this.expireAfterWriteNanos = timeUnit.toNanos(n);
        if (n == 0L && this.cAX == null) {
            this.cAX = MapMaker$RemovalCause.cBb;
        }
        this.cAV = true;
        return this;
    }
    
    @Deprecated
    final MapMaker c(final long n, final TimeUnit timeUnit) {
        this.b(n, timeUnit);
        this.expireAfterAccessNanos = timeUnit.toNanos(n);
        if (n == 0L && this.cAX == null) {
            this.cAX = MapMaker$RemovalCause.cBb;
        }
        this.cAV = true;
        return this;
    }
    
    @Override
    public final String toString() {
        final f ay = e.ay(this);
        if (this.cAW != -1) {
            ay.r("initialCapacity", this.cAW);
        }
        if (this.concurrencyLevel != -1) {
            ay.r("concurrencyLevel", this.concurrencyLevel);
        }
        if (this.maximumSize != -1) {
            ay.r("maximumSize", this.maximumSize);
        }
        if (this.expireAfterWriteNanos != -1L) {
            ay.A("expireAfterWrite", this.expireAfterWriteNanos + "ns");
        }
        if (this.expireAfterAccessNanos != -1L) {
            ay.A("expireAfterAccess", this.expireAfterAccessNanos + "ns");
        }
        if (this.keyStrength != null) {
            ay.A("keyStrength", a.hL(this.keyStrength.toString()));
        }
        if (this.valueStrength != null) {
            ay.A("valueStrength", a.hL(this.valueStrength.toString()));
        }
        if (this.keyEquivalence != null) {
            ay.az("keyEquivalence");
        }
        if (this.valueEquivalence != null) {
            ay.az("valueEquivalence");
        }
        if (this.removalListener != null) {
            ay.az("removalListener");
        }
        return ay.toString();
    }
}
