package com.google.android.mail.common.base;

import java.util.*;

public final class b
{
    private final Map<Character, String> map;
    private int max;
    
    public b() {
        this.max = -1;
        this.map = new HashMap<Character, String>();
    }
    
    public final char[][] VR() {
        final char[][] array = new char[1 + this.max][];
        for (final Map.Entry<Character, String> entry : this.map.entrySet()) {
            array[(char)entry.getKey()] = entry.getValue().toCharArray();
        }
        return array;
    }
    
    public final a VS() {
        return new c(this.VR());
    }
    
    public final b a(final char max, final String s) {
        this.map.put(max, s);
        if (max > this.max) {
            this.max = max;
        }
        return this;
    }
    
    public final b a(final char[] array, final String s) {
        for (int length = array.length, i = 0; i < length; ++i) {
            this.a(array[i], s);
        }
        return this;
    }
}
