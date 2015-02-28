package com.google.common.collect;

import java.util.*;

public final class Sets
{
    static boolean b(final Set<?> set, final Object o) {
        if (set != o) {
            if (o instanceof Set) {
                final Set set2 = (Set)o;
                try {
                    if (set.size() != set2.size() || !set.containsAll(set2)) {
                        return false;
                    }
                    return true;
                }
                catch (NullPointerException ex) {
                    return false;
                }
                catch (ClassCastException ex2) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }
    
    private static <E> HashSet<E> d(final Iterator<? extends E> iterator) {
        final HashSet<Object> set = (HashSet<Object>)new HashSet<E>();
        while (iterator.hasNext()) {
            set.add(iterator.next());
        }
        return (HashSet<E>)set;
    }
    
    public static <E> HashSet<E> fs(final int n) {
        return new HashSet<E>(Maps.fr(n));
    }
    
    public static <E> HashSet<E> g(final Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new HashSet<E>((Collection<? extends E>)l.a((Iterable<? extends E>)iterable));
        }
        return d((Iterator<? extends E>)iterable.iterator());
    }
    
    public static <E> LinkedHashSet<E> h(final Iterable<? extends E> iterable) {
        LinkedHashSet<E> set;
        if (iterable instanceof Collection) {
            set = new LinkedHashSet<E>((Collection<? extends E>)l.a((Iterable<? extends E>)iterable));
        }
        else {
            set = new LinkedHashSet<E>();
            final Iterator<? extends E> iterator = iterable.iterator();
            while (iterator.hasNext()) {
                set.add((E)iterator.next());
            }
        }
        return set;
    }
    
    public static <E> HashSet<E> p(final E... array) {
        final HashSet<? super E> fs = fs(array.length);
        Collections.addAll(fs, array);
        return (HashSet<E>)fs;
    }
}
