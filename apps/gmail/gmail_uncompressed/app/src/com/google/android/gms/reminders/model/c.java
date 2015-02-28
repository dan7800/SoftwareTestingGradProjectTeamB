package com.google.android.gms.reminders.model;

import com.google.android.gms.internal.*;

public final class c
{
    private Long bZD;
    private String bZE;
    private String bZF;
    
    public final TaskId Vt() {
        return new sp(this.bZD, this.bZE, this.bZF);
    }
    
    public final c c(final Long bzd) {
        this.bZD = bzd;
        return this;
    }
    
    public final c gB(final String bze) {
        this.bZE = bze;
        return this;
    }
    
    public final c gC(final String bzf) {
        this.bZF = bzf;
        return this;
    }
}
