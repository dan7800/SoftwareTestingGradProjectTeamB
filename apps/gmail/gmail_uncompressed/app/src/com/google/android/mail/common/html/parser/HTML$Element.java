package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;

public final class HTML$Element
{
    private final boolean cpO;
    private final boolean cpP;
    private final boolean cpQ;
    private final HTML$Element$Flow cpR;
    private final String name;
    private final int type;
    
    public HTML$Element(final String name, final int type, final boolean cpO, final boolean cpP, final boolean cpQ, final HTML$Element$Flow cpR) {
        G.i(name, "Element name can not be null");
        G.i(cpR, "Element flow can not be null");
        this.name = name;
        this.type = type;
        this.cpO = cpO;
        this.cpP = cpP;
        this.cpQ = cpQ;
        this.cpR = cpR;
    }
    
    public final boolean Wc() {
        return this.cpQ;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o == this || (o instanceof HTML$Element && this.name.equals(((HTML$Element)o).name));
    }
    
    public final String getName() {
        return this.name;
    }
    
    public final int getType() {
        return this.type;
    }
    
    @Override
    public final int hashCode() {
        return this.name.hashCode();
    }
    
    public final boolean isEmpty() {
        return this.cpO;
    }
    
    @Override
    public final String toString() {
        return this.name;
    }
}
