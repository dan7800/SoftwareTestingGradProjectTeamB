package com.google.common.collect;

final class RegularImmutableMap$NonTerminalEntry<K, V> extends ImmutableEntry<K, V> implements aD<K, V>
{
    final aD<K, V> next;
    
    RegularImmutableMap$NonTerminalEntry(final K k, final V v, final aD<K, V> next) {
        super(k, v);
        this.next = next;
    }
    
    @Override
    public final aD<K, V> aar() {
        return this.next;
    }
}
