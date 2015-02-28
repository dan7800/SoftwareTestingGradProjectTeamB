package com.google.api.client.http;

import com.google.api.client.util.*;
import java.util.regex.*;
import java.util.*;
import java.nio.charset.*;

public final class s
{
    private static final Pattern cwW;
    private static final Pattern cwX;
    private static final Pattern cwY;
    private static final Pattern cwZ;
    private String cxa;
    private final SortedMap<String, String> cxb;
    private String cxc;
    private String type;
    
    static {
        cwW = Pattern.compile("[\\w!#$&.+\\-\\^_]+|[*]");
        cwX = Pattern.compile("[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+");
        cwY = Pattern.compile("\\s*(" + "[^\\s/=;\"]+" + ")/(" + "[^\\s/=;\"]+" + ")\\s*(" + ";.*" + ")?", 32);
        cwZ = Pattern.compile("\\s*;\\s*(" + "[^\\s/=;\"]+" + ")=(" + ("\"([^\"]*)\"" + "|" + "[^\\s;\"]*") + ")");
    }
    
    public s(final String s) {
        this.type = "application";
        this.cxa = "octet-stream";
        this.cxb = new TreeMap<String, String>();
        this.hn(s);
    }
    
    private boolean a(final s s) {
        return s != null && this.type.equalsIgnoreCase(s.type) && this.cxa.equalsIgnoreCase(s.cxa);
    }
    
    public static boolean ay(final String s, final String s2) {
        return (s == null && s2 == null) || (s != null && s2 != null && new s(s).a(new s(s2)));
    }
    
    private s hn(final String s) {
        final Matcher matcher = s.cwY.matcher(s);
        H.c(matcher.matches(), "Type must be in the 'maintype/subtype; parameter=value' format");
        final String group = matcher.group(1);
        H.c(s.cwW.matcher(group).matches(), "Type contains reserved characters");
        this.type = group;
        this.cxc = null;
        final String group2 = matcher.group(2);
        H.c(s.cwW.matcher(group2).matches(), "Subtype contains reserved characters");
        this.cxa = group2;
        this.cxc = null;
        final String group3 = matcher.group(3);
        if (group3 != null) {
            final Matcher matcher2 = s.cwZ.matcher(group3);
            while (matcher2.find()) {
                final String group4 = matcher2.group(1);
                String s2 = matcher2.group(3);
                if (s2 == null) {
                    s2 = matcher2.group(2);
                }
                this.ax(group4, s2);
            }
        }
        return this;
    }
    
    static boolean ho(final String s) {
        return s.cwX.matcher(s).matches();
    }
    
    public final String Xn() {
        if (this.cxc != null) {
            return this.cxc;
        }
        final StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append('/');
        sb.append(this.cxa);
        if (this.cxb != null) {
            for (final Map.Entry<String, String> entry : this.cxb.entrySet()) {
                String string = entry.getValue();
                sb.append("; ");
                sb.append(entry.getKey());
                sb.append("=");
                if (!ho(string)) {
                    string = "\"" + string.replace("\\", "\\\\").replace("\"", "\\\"") + "\"";
                }
                sb.append(string);
            }
        }
        return this.cxc = sb.toString();
    }
    
    public final Charset Xx() {
        final String parameter = this.getParameter("charset");
        if (parameter == null) {
            return null;
        }
        return Charset.forName(parameter);
    }
    
    public final s a(final Charset charset) {
        String name;
        if (charset == null) {
            name = null;
        }
        else {
            name = charset.name();
        }
        this.ax("charset", name);
        return this;
    }
    
    public final s ax(final String s, final String s2) {
        if (s2 == null) {
            this.cxc = null;
            this.cxb.remove(s.toLowerCase());
            return this;
        }
        H.c(s.cwX.matcher(s).matches(), "Name contains reserved characters");
        this.cxc = null;
        this.cxb.put(s.toLowerCase(), s2);
        return this;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof s) {
            final s s = (s)o;
            if (this.a(s) && this.cxb.equals(s.cxb)) {
                return true;
            }
        }
        return false;
    }
    
    public final String getParameter(final String s) {
        return this.cxb.get(s.toLowerCase());
    }
    
    @Override
    public final int hashCode() {
        return this.Xn().hashCode();
    }
    
    @Override
    public final String toString() {
        return this.Xn();
    }
}
