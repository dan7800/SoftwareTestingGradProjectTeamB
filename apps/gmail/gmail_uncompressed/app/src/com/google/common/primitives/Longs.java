package com.google.common.primitives;

import java.util.*;

public final class Longs
{
    public static List<Long> a(final long... array) {
        if (array.length == 0) {
            return Collections.emptyList();
        }
        return new Longs$LongArrayAsList(array);
    }
}
