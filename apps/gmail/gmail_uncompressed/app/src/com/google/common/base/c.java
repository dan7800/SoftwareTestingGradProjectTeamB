package com.google.common.base;

import java.util.*;
import java.io.*;

public final class c
{
    private final String separator;
    
    private c(final String s) {
        this.separator = i.ak(s);
    }
    
    private StringBuilder a(final StringBuilder sb, final Iterator<?> iterator) {
        try {
            i.ak(sb);
            if (iterator.hasNext()) {
                sb.append(ax(iterator.next()));
                while (iterator.hasNext()) {
                    sb.append(this.separator);
                    sb.append(ax(iterator.next()));
                }
            }
        }
        catch (IOException ex) {
            throw new AssertionError((Object)ex);
        }
        return sb;
    }
    
    static CharSequence ax(final Object o) {
        i.ak(o);
        if (o instanceof CharSequence) {
            return (CharSequence)o;
        }
        return o.toString();
    }
    
    public static c hM(final String s) {
        return new c(s);
    }
    
    public final StringBuilder b(final StringBuilder sb, final Iterable<?> iterable) {
        return this.a(sb, iterable.iterator());
    }
    
    public final d hN(final String s) {
        return new d(this, s, (byte)0);
    }
}
