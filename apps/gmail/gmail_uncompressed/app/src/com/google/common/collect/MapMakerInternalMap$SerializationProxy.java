package com.google.common.collect;

import com.google.common.base.*;
import java.util.concurrent.*;
import java.io.*;
import java.util.*;

final class MapMakerInternalMap$SerializationProxy<K, V> extends MapMakerInternalMap$AbstractSerializationProxy<K, V>
{
    private static final long serialVersionUID = 3L;
    
    MapMakerInternalMap$SerializationProxy(final MapMakerInternalMap$Strength mapMakerInternalMap$Strength, final MapMakerInternalMap$Strength mapMakerInternalMap$Strength2, final Equivalence<Object> equivalence, final Equivalence<Object> equivalence2, final long n, final long n2, final int n3, final int n4, final Q<? super K, ? super V> q, final ConcurrentMap<K, V> concurrentMap) {
        super(mapMakerInternalMap$Strength, mapMakerInternalMap$Strength2, equivalence, equivalence2, n, n2, n3, n4, q, concurrentMap);
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        final int int1 = objectInputStream.readInt();
        final MapMaker mapMaker = new MapMaker();
        i.b(mapMaker.cAW == -1, "initial capacity was already set to %s", mapMaker.cAW);
        i.cp(int1 >= 0);
        mapMaker.cAW = int1;
        final MapMakerInternalMap$Strength keyStrength = super.keyStrength;
        i.b(mapMaker.keyStrength == null, "Key strength was already set to %s", mapMaker.keyStrength);
        mapMaker.keyStrength = i.ak(keyStrength);
        if (keyStrength != MapMakerInternalMap$Strength.cBU) {
            mapMaker.cAV = true;
        }
        final MapMakerInternalMap$Strength valueStrength = super.valueStrength;
        i.b(mapMaker.valueStrength == null, "Value strength was already set to %s", mapMaker.valueStrength);
        mapMaker.valueStrength = i.ak(valueStrength);
        if (valueStrength != MapMakerInternalMap$Strength.cBU) {
            mapMaker.cAV = true;
        }
        final Equivalence<Object> keyEquivalence = (Equivalence<Object>)super.keyEquivalence;
        i.b(mapMaker.keyEquivalence == null, "key equivalence was already set to %s", mapMaker.keyEquivalence);
        mapMaker.keyEquivalence = i.ak(keyEquivalence);
        mapMaker.cAV = true;
        final Equivalence<Object> valueEquivalence = (Equivalence<Object>)super.valueEquivalence;
        i.b(mapMaker.valueEquivalence == null, "value equivalence was already set to %s", mapMaker.valueEquivalence);
        mapMaker.valueEquivalence = i.ak(valueEquivalence);
        mapMaker.cAV = true;
        final int concurrencyLevel = super.concurrencyLevel;
        i.b(mapMaker.concurrencyLevel == -1, "concurrency level was already set to %s", mapMaker.concurrencyLevel);
        i.cp(concurrencyLevel > 0);
        mapMaker.concurrencyLevel = concurrencyLevel;
        final Q<? super K, ? super V> removalListener = (Q<? super K, ? super V>)super.removalListener;
        i.cq(mapMaker.removalListener == null);
        mapMaker.removalListener = i.ak((Q<K0, V0>)removalListener);
        mapMaker.cAV = true;
        if (super.expireAfterWriteNanos > 0L) {
            mapMaker.a(super.expireAfterWriteNanos, TimeUnit.NANOSECONDS);
        }
        if (super.expireAfterAccessNanos > 0L) {
            mapMaker.c(super.expireAfterAccessNanos, TimeUnit.NANOSECONDS);
        }
        if (super.maximumSize != -1) {
            final int maximumSize = super.maximumSize;
            i.b(mapMaker.maximumSize == -1, "maximum size was already set to %s", mapMaker.maximumSize);
            boolean b = false;
            if (maximumSize >= 0) {
                b = true;
            }
            i.c(b, "maximum size must not be negative");
            mapMaker.maximumSize = maximumSize;
            mapMaker.cAV = true;
            if (mapMaker.maximumSize == 0) {
                mapMaker.cAX = MapMaker$RemovalCause.cBc;
            }
        }
        this.cBk = (ConcurrentMap<K, V>)mapMaker.ZH();
        while (true) {
            final Object object = objectInputStream.readObject();
            if (object == null) {
                break;
            }
            super.cBk.put(object, objectInputStream.readObject());
        }
    }
    
    private Object readResolve() {
        return this.cBk;
    }
    
    private void writeObject(final ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(super.cBk.size());
        for (final Map.Entry<Object, Object> entry : super.cBk.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
        objectOutputStream.writeObject(null);
    }
}
