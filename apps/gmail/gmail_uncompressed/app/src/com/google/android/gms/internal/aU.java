package com.google.android.gms.internal;

import java.util.*;

public final class au
{
    public static <T> boolean b(final List<T> list, final List<T> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        final Iterator<T> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (!list2.contains(iterator.next())) {
                return false;
            }
        }
        return true;
    }
}
