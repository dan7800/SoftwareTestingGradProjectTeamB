package com.google.android.mail.common.base;

public final class Splitter
{
    private final j cpr;
    private final boolean cps;
    private final I cpt;
    
    private Splitter(final I i) {
        this(i, false, j.coY);
    }
    
    private Splitter(final I cpt, final boolean cps, final j cpr) {
        this.cpt = cpt;
        this.cps = cps;
        this.cpr = cpr;
    }
    
    public static Splitter Wa() {
        return c(j.h('\n'));
    }
    
    public static Splitter c(final j j) {
        G.ak(j);
        return new Splitter(new H(j));
    }
    
    public final Splitter Wb() {
        return new Splitter(this.cpt, true, this.cpr);
    }
}
