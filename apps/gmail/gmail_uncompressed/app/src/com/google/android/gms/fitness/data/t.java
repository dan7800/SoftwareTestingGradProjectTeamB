package com.google.android.gms.fitness.data;

import java.util.*;

public final class t
{
    public static <T> int a(final T t, final List<T> list) {
        int index;
        if (t == null) {
            index = -1;
        }
        else {
            index = list.indexOf(t);
            if (index < 0) {
                list.add(t);
                return -1 + list.size();
            }
        }
        return index;
    }
}
