package com.google.common.collect;

final class MapMaker$RemovalNotification<K, V> extends ImmutableEntry<K, V>
{
    private static final long serialVersionUID;
    private final MapMaker$RemovalCause cause;
    
    MapMaker$RemovalNotification(final K k, final V v, final MapMaker$RemovalCause cause) {
        super(k, v);
        this.cause = cause;
    }
}
