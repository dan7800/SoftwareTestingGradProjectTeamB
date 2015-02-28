package com.google.android.common.http;

import android.content.*;
import com.google.android.gsf.*;
import android.util.*;
import java.util.*;
import java.util.regex.*;

public final class UrlRules
{
    private static final Pattern aWs;
    private static final Pattern aWt;
    private static UrlRules aWu;
    private static Object aWv;
    private final j[] aWw;
    private final Pattern aWx;
    
    static {
        aWs = Pattern.compile(" +");
        aWt = Pattern.compile("\\W");
        UrlRules.aWu = new UrlRules(new j[0]);
    }
    
    private UrlRules(final j[] aWw) {
        Arrays.sort(aWw);
        final StringBuilder sb = new StringBuilder("(");
        for (int i = 0; i < aWw.length; ++i) {
            if (i > 0) {
                sb.append(")|(");
            }
            sb.append(UrlRules.aWt.matcher(aWw[i].aWy).replaceAll("\\\\$0"));
        }
        this.aWx = Pattern.compile(sb.append(")").toString());
        this.aWw = aWw;
    }
    
    public static UrlRules a(final ContentResolver contentResolver) {
        while (true) {
            final Object e;
            final ArrayList<j> list;
            synchronized (UrlRules.class) {
                e = c.e(contentResolver);
                if (e == UrlRules.aWv) {
                    if (Log.isLoggable("UrlRules", 2)) {
                        Log.v("UrlRules", "Using cached rules, versionToken: " + e);
                    }
                    return UrlRules.aWu;
                }
                if (Log.isLoggable("UrlRules", 2)) {
                    Log.v("UrlRules", "Scanning for Gservices \"url:*\" rules");
                }
                final Map<String, String> a = c.a(contentResolver, "url:");
                list = new ArrayList<j>();
                for (final Map.Entry<String, String> entry : a.entrySet()) {
                    try {
                        final String substring = entry.getKey().substring(4);
                        final String s = entry.getValue();
                        if (s == null || s.length() == 0) {
                            continue;
                        }
                        if (Log.isLoggable("UrlRules", 2)) {
                            Log.v("UrlRules", "  Rule " + substring + ": " + s);
                        }
                        list.add(new j(substring, s));
                    }
                    catch (UrlRules$RuleFormatException ex) {
                        Log.e("UrlRules", "Invalid rule from Gservices", (Throwable)ex);
                    }
                }
            }
            UrlRules.aWu = new UrlRules(list.toArray(new j[list.size()]));
            UrlRules.aWv = e;
            if (Log.isLoggable("UrlRules", 2)) {
                Log.v("UrlRules", "New rules stored, versionToken: " + e);
            }
            return UrlRules.aWu;
        }
    }
    
    public final j do(final String s) {
        final Matcher matcher = this.aWx.matcher(s);
        if (matcher.lookingAt()) {
            for (int i = 0; i < this.aWw.length; ++i) {
                if (matcher.group(i + 1) != null) {
                    return this.aWw[i];
                }
            }
        }
        return j.aWB;
    }
}
