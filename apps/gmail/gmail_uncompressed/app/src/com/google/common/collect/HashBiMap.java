package com.google.common.collect;

import java.io.*;
import java.util.*;

public final class HashBiMap<K, V> extends AbstractBiMap<K, V>
{
    private static final long serialVersionUID;
    
    private HashBiMap() {
        super(new HashMap(), new HashMap());
    }
    
    public static <K, V> HashBiMap<K, V> Zg() {
        return new HashBiMap<K, V>();
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        final int int1 = objectInputStream.readInt();
        this.a((Map<K, V>)Maps.fq(int1), (Map<V, K>)Maps.fq(int1));
        for (int i = 0; i < int1; ++i) {
            super.put((K)objectInputStream.readObject(), (V)objectInputStream.readObject());
        }
    }
    
    private void writeObject(final ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(super.size());
        for (final Map.Entry<K, V> entry : super.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }
    
    @Override
    public final V put(final K k, final V v) {
        return super.put(k, v);
    }
}
