package com.google.android.gms.common.a;

import java.util.*;

public final class f
{
    public static void a(final StringBuilder sb, final HashMap<String, String> hashMap) {
        sb.append("{");
        final Iterator<String> iterator = hashMap.keySet().iterator();
        int n = 1;
        while (iterator.hasNext()) {
            final String s = iterator.next();
            int n2;
            if (n == 0) {
                sb.append(",");
                n2 = n;
            }
            else {
                n2 = 0;
            }
            final String s2 = hashMap.get(s);
            sb.append("\"").append(s).append("\":");
            if (s2 == null) {
                sb.append("null");
                n = n2;
            }
            else {
                sb.append("\"").append(s2).append("\"");
                n = n2;
            }
        }
        sb.append("}");
    }
}
