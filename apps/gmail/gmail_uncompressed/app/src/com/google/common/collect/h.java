package com.google.common.collect;

abstract class H<E> implements Iterable<E>
{
    @Override
    public String toString() {
        return I.a(super.iterator());
    }
}
