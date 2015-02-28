package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

final class SortedLists
{
    public static <E> int a(List<? extends E> f, final E e, final Comparator<? super E> comparator, final SortedLists$KeyPresentBehavior sortedLists$KeyPresentBehavior, final SortedLists$KeyAbsentBehavior sortedLists$KeyAbsentBehavior) {
        i.ak(comparator);
        i.ak((List<? extends E>)f);
        i.ak(sortedLists$KeyPresentBehavior);
        i.ak(sortedLists$KeyAbsentBehavior);
        if (!(f instanceof RandomAccess)) {
            f = Lists.f((Iterable<?>)f);
        }
        int i = 0;
        int n = -1 + f.size();
        while (i <= n) {
            final int n2 = i + n >>> 1;
            final int compare = comparator.compare(e, f.get(n2));
            if (compare < 0) {
                n = n2 - 1;
            }
            else {
                if (compare <= 0) {
                    return i + sortedLists$KeyPresentBehavior.a(comparator, e, (List<? extends E>)f.subList(i, n + 1), n2 - i);
                }
                i = n2 + 1;
            }
        }
        return sortedLists$KeyAbsentBehavior.ft(i);
    }
}
