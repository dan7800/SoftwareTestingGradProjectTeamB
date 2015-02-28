package com.google.common.base;

public final class e
{
    public static f ay(final Object o) {
        final String replaceAll = o.getClass().getName().replaceAll("\\$[0-9]+", "\\$");
        int n = replaceAll.lastIndexOf(36);
        if (n == -1) {
            n = replaceAll.lastIndexOf(46);
        }
        return new f(replaceAll.substring(n + 1), (byte)0);
    }
    
    public static boolean b(final Object o, final Object o2) {
        return o == o2 || (o != null && o.equals(o2));
    }
    
    public static <T> T n(final T t, final T t2) {
        if (t != null) {
            return t;
        }
        return i.ak(t2);
    }
}
