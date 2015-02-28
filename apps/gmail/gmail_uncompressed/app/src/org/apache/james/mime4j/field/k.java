package org.apache.james.mime4j.field;

import java.util.regex.*;

public abstract class k
{
    private static final Pattern cEm;
    private static final i cEn;
    private final String bck;
    private final String cEo;
    private final String name;
    
    static {
        cEm = Pattern.compile("^([\\x21-\\x39\\x3b-\\x7e]+)[ \t]*:");
        cEn = new i();
    }
    
    protected k(final String name, final String bck, final String cEo) {
        this.name = name;
        this.bck = bck;
        this.cEo = cEo;
    }
    
    public static k hW(final String s) {
        final String replaceAll = s.replaceAll("\r|\n", "");
        final Matcher matcher = k.cEm.matcher(replaceAll);
        if (!matcher.find()) {
            throw new IllegalArgumentException("Invalid field in string");
        }
        final String group = matcher.group(1);
        String s2 = replaceAll.substring(matcher.end());
        if (s2.length() > 0 && s2.charAt(0) == ' ') {
            s2 = s2.substring(1);
        }
        return k.cEn.g(group, s2, s);
    }
    
    @Override
    public String toString() {
        return this.cEo;
    }
}
