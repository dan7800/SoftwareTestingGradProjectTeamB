package com.google.android.common;

public final class a
{
    public static int dm(final String s) {
        if (s.contains("google.com")) {
            return 805306368;
        }
        if (s.contains("gmail.com") || s.contains("googlemail.com")) {
            return 268435456;
        }
        return 536870912;
    }
}
