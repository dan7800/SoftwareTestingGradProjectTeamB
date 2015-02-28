package com.google.common.collect;

import java.util.*;

public enum SortedLists$KeyPresentBehavior
{
    cCA("FIRST_AFTER") {
        public final <E> int a(final Comparator<? super E> comparator, final E e, final List<? extends E> list, final int n) {
            return 1 + SortedLists$KeyPresentBehavior$4.cCy.a(comparator, e, list, n);
        }
    }, 
    cCB("LAST_BEFORE") {
        public final <E> int a(final Comparator<? super E> comparator, final E e, final List<? extends E> list, final int n) {
            return -1 + SortedLists$KeyPresentBehavior$5.cCz.a(comparator, e, list, n);
        }
    }, 
    cCx("ANY_PRESENT") {
        @Override
        final <E> int a(final Comparator<? super E> comparator, final E e, final List<? extends E> list, final int n) {
            return n;
        }
    }, 
    cCy("LAST_PRESENT") {
        @Override
        final <E> int a(final Comparator<? super E> comparator, final E e, final List<? extends E> list, int i) {
            int n = -1 + list.size();
            while (i < n) {
                final int n2 = 1 + (i + n) >>> 1;
                if (comparator.compare((E)list.get(n2), e) > 0) {
                    n = n2 - 1;
                }
                else {
                    i = n2;
                }
            }
            return i;
        }
    }, 
    cCz("FIRST_PRESENT") {
        @Override
        final <E> int a(final Comparator<? super E> comparator, final E e, final List<? extends E> list, int n) {
            int i = 0;
            while (i < n) {
                final int n2 = i + n >>> 1;
                if (comparator.compare((E)list.get(n2), e) < 0) {
                    i = n2 + 1;
                }
                else {
                    n = n2;
                }
            }
            return i;
        }
    };
    
    abstract <E> int a(final Comparator<? super E> p0, final E p1, final List<? extends E> p2, final int p3);
}
