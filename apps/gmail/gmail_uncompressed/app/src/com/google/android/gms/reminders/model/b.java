package com.google.android.gms.reminders.model;

import com.google.android.gms.internal.*;

public final class b
{
    private Double bZl;
    private Double bZm;
    private Integer bZn;
    private Integer bZo;
    private String bZp;
    private String mName;
    
    public final Location Vs() {
        return new sl(this.bZl, this.bZm, this.mName, this.bZn, this.bZo, this.bZp);
    }
    
    public final b a(final Double bZl) {
        this.bZl = bZl;
        return this;
    }
    
    public final b b(final Double bZm) {
        this.bZm = bZm;
        return this;
    }
    
    public final b gA(final String bZp) {
        this.bZp = bZp;
        return this;
    }
    
    public final b gz(final String mName) {
        this.mName = mName;
        return this;
    }
    
    public final b i(final Integer bZn) {
        this.bZn = bZn;
        return this;
    }
    
    public final b j(final Integer bZo) {
        this.bZo = bZo;
        return this;
    }
}
