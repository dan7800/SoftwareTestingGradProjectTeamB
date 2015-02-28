package com.google.common.collect;

import java.io.*;
import java.util.*;

class AbstractBiMap$Inverse<K, V> extends AbstractBiMap<K, V>
{
    private static final long serialVersionUID;
    
    private AbstractBiMap$Inverse(final Map<K, V> map, final AbstractBiMap<V, K> abstractBiMap) {
        super(map, abstractBiMap, (byte)0);
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.a((AbstractBiMap<V, K>)objectInputStream.readObject());
    }
    
    private void writeObject(final ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.YQ());
    }
    
    Object readResolve() {
        return this.YQ().YQ();
    }
}
