package com.google.android.mail.common.html.parser;

import java.util.*;
import com.google.android.mail.common.base.*;

public final class a
{
    private final Set<String> cpN;
    private final String name;
    private final int type;
    
    public a(final String s) {
        this(s, 0, null);
    }
    
    public a(final String name, final int type, final Set<String> cpN) {
        int n = 1;
        G.i(name, "Attribute name can not be null");
        int n2;
        if (cpN == null) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (type != 3) {
            n = 0;
        }
        G.c((n ^ n2) != 0x0, "Only ENUM_TYPE can have values != null");
        this.name = name;
        this.type = type;
        this.cpN = cpN;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o == this || (o instanceof a && this.name.equals(((a)o).name));
    }
    
    public final String getName() {
        return this.name;
    }
    
    @Override
    public final int hashCode() {
        return this.name.hashCode();
    }
    
    @Override
    public final String toString() {
        return this.name;
    }
}
