package com.google.common.collect;

import java.util.*;

public abstract class Ordering<T> implements Comparator<T>
{
    public static <C extends Comparable> Ordering<C> aaq() {
        return (Ordering<C>)NaturalOrdering.cCb;
    }
}
