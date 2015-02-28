package com.google.android.gms.reminders.model;

import com.google.android.gms.internal.*;

public final class a
{
    private Integer bZf;
    private Integer bZg;
    private Integer bZh;
    private Integer bZj;
    private Long bZk;
    private Time ckf;
    
    public final DateTime Vr() {
        return new sj(this.bZf, this.bZg, this.bZh, this.ckf, this.bZj, this.bZk);
    }
    
    public final a a(final Time time) {
        if (time != null) {
            this.ckf = time.KN();
        }
        return this;
    }
    
    public final a b(final Long bZk) {
        this.bZk = bZk;
        return this;
    }
    
    public final a e(final Integer bZf) {
        this.bZf = bZf;
        return this;
    }
    
    public final a f(final Integer bZg) {
        this.bZg = bZg;
        return this;
    }
    
    public final a g(final Integer bZh) {
        this.bZh = bZh;
        return this;
    }
    
    public final a h(final Integer bZj) {
        this.bZj = bZj;
        return this;
    }
}
