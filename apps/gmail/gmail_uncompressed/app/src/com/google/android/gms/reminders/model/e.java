package com.google.android.gms.reminders.model;

import com.google.android.gms.internal.*;

public final class e
{
    private Integer bZH;
    private Integer bZI;
    private Integer bZJ;
    
    public final Time Vv() {
        return new st(this.bZH, this.bZI, this.bZJ);
    }
    
    public final e l(final Integer bzh) {
        this.bZH = bzh;
        return this;
    }
    
    public final e m(final Integer bzi) {
        this.bZI = bzi;
        return this;
    }
    
    public final e n(final Integer bzj) {
        this.bZJ = bzj;
        return this;
    }
}
