package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

final class RegularImmutableSortedSet<E> extends ImmutableSortedSet<E>
{
    private final transient ImmutableList<E> cCm;
    
    RegularImmutableSortedSet(final ImmutableList<E> cCm, final Comparator<? super E> comparator) {
        super(comparator);
        this.cCm = cCm;
        i.cp(!cCm.isEmpty());
    }
    
    private ImmutableSortedSet<E> ao(final int n, final int n2) {
        if (n == 0 && n2 == this.size()) {
            return this;
        }
        if (n < n2) {
            return new RegularImmutableSortedSet((ImmutableList<Object>)this.cCm.al(n, n2), (Comparator<? super Object>)this.comparator);
        }
        return ImmutableSortedSet.a(this.comparator);
    }
    
    @Override
    final boolean YW() {
        return this.cCm.YW();
    }
    
    @Override
    public final aJ<E> YX() {
        return this.cCm.YX();
    }
    
    @Override
    final ImmutableList<E> Zq() {
        return new ImmutableSortedAsList<E>(this, this.cCm);
    }
    
    @Override
    final ImmutableSortedSet<E> a(final E e, final boolean b, final E e2, final boolean b2) {
        return this.n(e, true).m(e2, false);
    }
    
    @Override
    public final boolean contains(final Object o) {
        if (o != null) {
            try {
                if (Collections.binarySearch(this.cCm, o, (Comparator<? super Object>)this.comparator) >= 0) {
                    return true;
                }
            }
            catch (ClassCastException ex) {
                return false;
            }
        }
        return false;
    }
    
    @Override
    public final boolean containsAll(final Collection<?> collection) {
        int containsAll = 1;
        if (aH.a(this.comparator(), collection) && collection.size() > containsAll) {
            final aJ<E> yx = this.cCm.YX();
            final Iterator<?> iterator = collection.iterator();
            Object o = iterator.next();
            try {
                while (yx.hasNext()) {
                    final int v = this.v(yx.next(), o);
                    if (v == 0) {
                        if (!iterator.hasNext()) {
                            return containsAll != 0;
                        }
                        o = iterator.next();
                    }
                    else {
                        if (v > 0) {
                            return false;
                        }
                        continue;
                    }
                }
                return false;
            }
            catch (NullPointerException ex) {
                return false;
            }
            catch (ClassCastException ex2) {
                return false;
            }
            return false;
        }
        containsAll = (super.containsAll(collection) ? 1 : 0);
        return containsAll != 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof Set)) {
                return false;
            }
            final Set set = (Set)o;
            if (this.size() != set.size()) {
                return false;
            }
            if (aH.a(this.comparator, set)) {
                final Iterator<?> iterator = set.iterator();
                try {
                    final aJ<E> yx = this.cCm.YX();
                    while (yx.hasNext()) {
                        final Object next = yx.next();
                        final Object next2 = iterator.next();
                        if (next2 == null || this.v(next, next2) != 0) {
                            return false;
                        }
                    }
                    return true;
                }
                catch (ClassCastException ex) {
                    return false;
                }
                catch (NoSuchElementException ex2) {
                    return false;
                }
            }
            return this.containsAll(set);
        }
        return true;
    }
    
    @Override
    public final E first() {
        return this.cCm.get(0);
    }
    
    @Override
    final int indexOf(final Object o) {
        if (o != null) {
            try {
                final int a = SortedLists.a(this.cCm, o, (Comparator<? super Object>)this.comparator(), SortedLists$KeyPresentBehavior.cCx, SortedLists$KeyAbsentBehavior.cCv);
                if (a >= 0 && this.cCm.get(a).equals(o)) {
                    return a;
                }
            }
            catch (ClassCastException ex) {
                return -1;
            }
        }
        return -1;
    }
    
    @Override
    public final boolean isEmpty() {
        return false;
    }
    
    @Override
    public final E last() {
        return this.cCm.get(-1 + this.size());
    }
    
    @Override
    final ImmutableSortedSet<E> m(final E e, final boolean b) {
        int n;
        if (b) {
            n = SortedLists.a(this.cCm, (Object)i.ak((E)e), (Comparator<? super Object>)this.comparator(), SortedLists$KeyPresentBehavior.cCA, SortedLists$KeyAbsentBehavior.cCu);
        }
        else {
            n = SortedLists.a(this.cCm, (Object)i.ak((E)e), (Comparator<? super Object>)this.comparator(), SortedLists$KeyPresentBehavior.cCz, SortedLists$KeyAbsentBehavior.cCu);
        }
        return this.ao(0, n);
    }
    
    @Override
    final ImmutableSortedSet<E> n(final E e, final boolean b) {
        int n;
        if (b) {
            n = SortedLists.a(this.cCm, (Object)i.ak((E)e), (Comparator<? super Object>)this.comparator(), SortedLists$KeyPresentBehavior.cCz, SortedLists$KeyAbsentBehavior.cCu);
        }
        else {
            n = SortedLists.a(this.cCm, (Object)i.ak((E)e), (Comparator<? super Object>)this.comparator(), SortedLists$KeyPresentBehavior.cCA, SortedLists$KeyAbsentBehavior.cCu);
        }
        return this.ao(n, this.size());
    }
    
    @Override
    public final int size() {
        return this.cCm.size();
    }
    
    @Override
    public final Object[] toArray() {
        return this.cCm.toArray();
    }
    
    @Override
    public final <T> T[] toArray(final T[] array) {
        return this.cCm.toArray(array);
    }
}
