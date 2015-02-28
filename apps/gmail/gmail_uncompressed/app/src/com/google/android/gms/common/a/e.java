package com.google.android.gms.common.a;

import android.text.*;
import java.util.regex.*;

public final class e
{
    private static final Pattern bGg;
    private static final Pattern bGh;
    
    static {
        bGg = Pattern.compile("\\\\.");
        bGh = Pattern.compile("[\\\\\"/\b\f\n\r\t]");
    }
    
    public static String gb(final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final Matcher matcher = e.bGh.matcher(s);
            StringBuffer sb = null;
            while (matcher.find()) {
                if (sb == null) {
                    sb = new StringBuffer();
                }
                switch (matcher.group().charAt(0)) {
                    default: {
                        continue;
                    }
                    case '\b': {
                        matcher.appendReplacement(sb, "\\\\b");
                        continue;
                    }
                    case '\"': {
                        matcher.appendReplacement(sb, "\\\\\\\"");
                        continue;
                    }
                    case '\\': {
                        matcher.appendReplacement(sb, "\\\\\\\\");
                        continue;
                    }
                    case '/': {
                        matcher.appendReplacement(sb, "\\\\/");
                        continue;
                    }
                    case '\f': {
                        matcher.appendReplacement(sb, "\\\\f");
                        continue;
                    }
                    case '\n': {
                        matcher.appendReplacement(sb, "\\\\n");
                        continue;
                    }
                    case '\r': {
                        matcher.appendReplacement(sb, "\\\\r");
                        continue;
                    }
                    case '\t': {
                        matcher.appendReplacement(sb, "\\\\t");
                        continue;
                    }
                }
            }
            if (sb != null) {
                matcher.appendTail(sb);
                return sb.toString();
            }
        }
        return s;
    }
}
