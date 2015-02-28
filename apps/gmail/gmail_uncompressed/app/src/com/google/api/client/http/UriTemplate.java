package com.google.api.client.http;

import com.google.api.client.util.a.*;
import com.google.api.client.util.*;
import java.util.*;

public final class UriTemplate
{
    static final Map<Character, UriTemplate$CompositeOutput> cxK;
    
    static {
        cxK = new HashMap<Character, UriTemplate$CompositeOutput>();
        UriTemplate$CompositeOutput.values();
    }
    
    private static String a(final String s, final Object o, final boolean b) {
        final Map<String, Object> am = am(o);
        final StringBuilder sb = new StringBuilder();
        int n;
        for (int length = s.length(), i = 0; i < length; i = n) {
            final int index = s.indexOf(123, i);
            if (index == -1) {
                sb.append(s.substring(i));
                break;
            }
            sb.append(s.substring(i, index));
            final int index2 = s.indexOf(125, index + 2);
            final String substring = s.substring(index + 1, index2);
            n = index2 + 1;
            final boolean endsWith = substring.endsWith("*");
            final UriTemplate$CompositeOutput uriTemplate$CompositeOutput = UriTemplate.cxK.get(substring.charAt(0));
            UriTemplate$CompositeOutput cxS;
            if (uriTemplate$CompositeOutput == null) {
                cxS = UriTemplate$CompositeOutput.cxS;
            }
            else {
                cxS = uriTemplate$CompositeOutput;
            }
            final int yb = cxS.Yb();
            int length2 = substring.length();
            if (endsWith) {
                --length2;
            }
            final String substring2 = substring.substring(yb, length2);
            Object o2 = am.remove(substring2);
            if (o2 != null) {
                if (o2 instanceof Iterator) {
                    o2 = a(substring2, (Iterator<?>)o2, endsWith, cxS);
                }
                else if (o2 instanceof Iterable || ((Enum<?>)o2).getClass().isArray()) {
                    o2 = a(substring2, O.au(o2).iterator(), endsWith, cxS);
                }
                else if (((Enum<?>)o2).getClass().isEnum()) {
                    final String name = t.a((Enum<?>)o2).getName();
                    if (name != null) {
                        o2 = a.hA(name);
                    }
                }
                else if (!m.as(o2)) {
                    o2 = a(substring2, am(o2), endsWith, cxS);
                }
                else {
                    o2 = a.hA(o2.toString());
                }
                sb.append(o2);
            }
            else {}
        }
        j.a(am.entrySet(), sb);
        return sb.toString();
    }
    
    private static String a(final String s, final Iterator<?> iterator, final boolean b, final UriTemplate$CompositeOutput uriTemplate$CompositeOutput) {
        if (!iterator.hasNext()) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        sb.append(uriTemplate$CompositeOutput.XY());
        String xz;
        if (b) {
            xz = uriTemplate$CompositeOutput.XZ();
        }
        else {
            xz = ",";
            if (uriTemplate$CompositeOutput.Ya()) {
                sb.append(a.hA(s));
                sb.append("=");
            }
        }
        while (iterator.hasNext()) {
            if (b && uriTemplate$CompositeOutput.Ya()) {
                sb.append(a.hA(s));
                sb.append("=");
            }
            sb.append(uriTemplate$CompositeOutput.ht(iterator.next().toString()));
            if (iterator.hasNext()) {
                sb.append(xz);
            }
        }
        return sb.toString();
    }
    
    private static String a(final String s, final Map<String, Object> map, final boolean b, final UriTemplate$CompositeOutput uriTemplate$CompositeOutput) {
        if (map.isEmpty()) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        sb.append(uriTemplate$CompositeOutput.XY());
        String s2;
        String s3;
        if (b) {
            final String xz = uriTemplate$CompositeOutput.XZ();
            s2 = "=";
            s3 = xz;
        }
        else {
            if (uriTemplate$CompositeOutput.Ya()) {
                sb.append(a.hA(s));
                sb.append("=");
            }
            s2 = ",";
            s3 = ",";
        }
        final Iterator<Map.Entry<String, Object>> iterator = map.entrySet().iterator();
        while (iterator.hasNext()) {
            final Map.Entry<String, Object> entry = iterator.next();
            final String ht = uriTemplate$CompositeOutput.ht(entry.getKey());
            final String ht2 = uriTemplate$CompositeOutput.ht(entry.getValue().toString());
            sb.append(ht);
            sb.append(s2);
            sb.append(ht2);
            if (iterator.hasNext()) {
                sb.append(s3);
            }
        }
        return sb.toString();
    }
    
    private static Map<String, Object> am(final Object o) {
        final LinkedHashMap<Object, Object> linkedHashMap = new LinkedHashMap<Object, Object>();
        for (final Map.Entry<String, Object> entry : m.ar(o).entrySet()) {
            final Object value = entry.getValue();
            if (value != null && !m.aq(value)) {
                linkedHashMap.put(entry.getKey(), value);
            }
        }
        return (Map<String, Object>)linkedHashMap;
    }
    
    public static String b(final String s, String s2, final Object o) {
        if (s2.startsWith("/")) {
            final j j = new j(s);
            j.Xo();
            s2 = j.Xn() + s2;
        }
        else if (!s2.startsWith("http://") && !s2.startsWith("https://")) {
            s2 = s + s2;
        }
        return a(s2, o, true);
    }
}
