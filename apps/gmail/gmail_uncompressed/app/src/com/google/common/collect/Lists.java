package com.google.common.collect;

import com.google.common.base.*;
import com.google.common.primitives.*;
import java.util.*;

public final class Lists
{
    public static <F, T> List<T> a(final List<F> list, final b<? super F, ? extends T> b) {
        if (list instanceof RandomAccess) {
            return (List<T>)new Lists$TransformingRandomAccessList((List<Object>)list, (b<? super Object, ?>)b);
        }
        return (List<T>)new Lists$TransformingSequentialList((List<Object>)list, (b<? super Object, ?>)b);
    }
    
    public static <E> ArrayList<E> c(final Iterator<? extends E> iterator) {
        i.ak(iterator);
        final ArrayList<Object> list = (ArrayList<Object>)new ArrayList<E>();
        while (iterator.hasNext()) {
            list.add(iterator.next());
        }
        return (ArrayList<E>)list;
    }
    
    public static <E> ArrayList<E> f(final Iterable<? extends E> iterable) {
        i.ak(iterable);
        if (iterable instanceof Collection) {
            return new ArrayList<E>((Collection<? extends E>)l.a((Iterable<? extends E>)iterable));
        }
        return c((Iterator<? extends E>)iterable.iterator());
    }
    
    private static int fl(final int n) {
        i.cp(n >= 0);
        return Ints.bi(5L + n + n / 10);
    }
    
    public static <E> ArrayList<E> fm(final int n) {
        i.cp(n >= 0);
        return new ArrayList<E>(n);
    }
    
    public static <E> ArrayList<E> fn(final int n) {
        return new ArrayList<E>(fl(n));
    }
    
    public static <E> ArrayList<E> n(final E... array) {
        i.ak(array);
        final ArrayList<Object> list = new ArrayList<Object>(fl(array.length));
        Collections.addAll(list, array);
        return (ArrayList<E>)list;
    }
}
