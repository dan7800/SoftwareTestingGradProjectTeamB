package com.google.android.gm.provider;

import com.android.mail.utils.*;
import android.text.*;
import java.util.*;

public final class ad extends E
{
    public static String eD(String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            s = "";
        }
        else {
            final String tag = ad.TAG;
            if (!Gmail.dZ(s)) {
                return "userlabel:" + String.valueOf(s.hashCode());
            }
        }
        return s;
    }
    
    public static String l(final Set<String> set) {
        final String tag = ad.TAG;
        if (set != null) {
            final StringBuilder sb = new StringBuilder("[");
            final Iterator<String> iterator = set.iterator();
            int n = 0;
            while (iterator.hasNext()) {
                final String s = iterator.next();
                if (n > 0) {
                    sb.append(", ");
                }
                sb.append(eD(s));
                ++n;
            }
            sb.append(']');
            return sb.toString();
        }
        if (set != null) {
            return set.toString();
        }
        return "";
    }
}
