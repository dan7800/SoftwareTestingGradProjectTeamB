package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E>
{
    public static <E> ImmutableSet<E> L(final Collection<? extends E> collection) {
        if (collection instanceof ImmutableSet && !(collection instanceof ImmutableSortedSet)) {
            final ImmutableSet<E> set = (ImmutableSet<E>)collection;
            if (!set.YW()) {
                return set;
            }
        }
        return (ImmutableSet<E>)M((Collection<?>)collection);
    }
    
    private static <E> ImmutableSet<E> M(final Collection<? extends E> collection) {
        final Object[] array = collection.toArray();
        switch (array.length) {
            default: {
                return (ImmutableSet<E>)i(array);
            }
            case 0: {
                return (ImmutableSet<E>)EmptyImmutableSet.cAs;
            }
            case 1: {
                return aG(array[0]);
            }
        }
    }
    
    public static <E> ImmutableSet<E> Zw() {
        return (ImmutableSet<E>)EmptyImmutableSet.cAs;
    }
    
    public static <E> z<E> Zx() {
        return new z<E>();
    }
    
    public static <E> ImmutableSet<E> a(final E e, final E e2, final E e3, final E e4, final E e5) {
        return i(e, e2, e3, e4, e5);
    }
    
    public static <E> ImmutableSet<E> a(final E e, final E e2, final E e3, final E e4, final E e5, final E e6, final E... array) {
        final Object[] array2 = new Object[6 + array.length];
        array2[0] = e;
        array2[1] = e2;
        array2[2] = e3;
        array2[3] = e4;
        array2[4] = e5;
        array2[5] = e6;
        for (int i = 6; i < array2.length; ++i) {
            array2[i] = array[i - 6];
        }
        return (ImmutableSet<E>)i(array2);
    }
    
    public static <E> ImmutableSet<E> aG(final E e) {
        return new SingletonImmutableSet<E>(e);
    }
    
    public static <E> ImmutableSet<E> b(final E e, final E e2, final E e3) {
        return i(e, e2, e3);
    }
    
    public static <E> ImmutableSet<E> b(final E e, final E e2, final E e3, final E e4) {
        return i(e, e2, e3, e4);
    }
    
    public static <E> ImmutableSet<E> d(final Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return L((Collection<? extends E>)l.a((Iterable<? extends E>)iterable));
        }
        return M((Collection<? extends E>)Lists.c((Iterator<?>)iterable.iterator()));
    }
    
    private static int fk(final int n) {
        if (n < 536870912) {
            return Integer.highestOneBit(n) << 2;
        }
        i.c(n < 1073741824, "collection too large");
        return 1073741824;
    }
    
    private static <E> ImmutableSet<E> i(Object... array) {
        int i;
        Object[] array2;
        int n;
        int n2;
        do {
            i = fk(array.length);
            array2 = new Object[i];
            n = i - 1;
            ArrayList<Object> list = null;
            int j = 0;
            n2 = 0;
            while (j < array.length) {
                final Object o = array[j];
                final int hashCode = o.hashCode();
                int fj = u.fj(hashCode);
                while (true) {
                    final int n3 = fj & n;
                    final Object o2 = array2[n3];
                    if (o2 == null) {
                        if (list != null) {
                            list.add(o);
                        }
                        array2[n3] = o;
                        n2 += hashCode;
                        break;
                    }
                    if (o2.equals(o)) {
                        if (list == null) {
                            list = new ArrayList<Object>(array.length);
                            for (int k = 0; k < j; ++k) {
                                list.add(array[k]);
                            }
                            break;
                        }
                        break;
                    }
                    else {
                        ++fj;
                    }
                }
                ++j;
            }
            if (list != null) {
                array = list.toArray();
            }
            if (array.length == 1) {
                return new SingletonImmutableSet<E>(array[0], n2);
            }
        } while (i > 2 * fk(array.length));
        return new RegularImmutableSet<E>(array, n2, array2, n);
    }
    
    public static <E> ImmutableSet<E> j(final E[] array) {
        switch (array.length) {
            default: {
                return (ImmutableSet<E>)i((Object[])array.clone());
            }
            case 0: {
                return (ImmutableSet<E>)EmptyImmutableSet.cAs;
            }
            case 1: {
                return aG(array[0]);
            }
        }
    }
    
    public static <E> ImmutableSet<E> t(final E e, final E e2) {
        return i(e, e2);
    }
    
    @Override
    public abstract aJ<E> YX();
    
    boolean Zc() {
        return false;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || ((!(o instanceof ImmutableSet) || !this.Zc() || !((ImmutableSet)o).Zc() || this.hashCode() == o.hashCode()) && Sets.b(this, o));
    }
    
    @Override
    public int hashCode() {
        final Iterator<Object> iterator = super.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Object next = iterator.next();
            int hashCode;
            if (next != null) {
                hashCode = next.hashCode();
            }
            else {
                hashCode = 0;
            }
            n += hashCode;
        }
        return n;
    }
    
    @Override
    Object writeReplace() {
        return new ImmutableSet$SerializedForm(this.toArray());
    }
}
