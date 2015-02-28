package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.*;
import com.google.android.gms.internal.*;

public final class b
{
    private boolean cbg;
    private boolean cbh;
    private int cbi;
    private boolean cbj;
    private boolean cbk;
    
    public b() {
        this.cbi = 1;
    }
    
    public final b Tk() {
        G.a(!this.cbk, "Cannot call setNoOptInRequired() in conjunction with setLowPower().");
        this.cbg = true;
        return this;
    }
    
    public final b Tl() {
        G.a(!this.cbk, "Cannot call setNoOptInRequired() in conjunction with setWakeUpOthers().");
        this.cbh = true;
        return this;
    }
    
    public final a Tm() {
        return new mt(!this.cbg, this.cbh, this.cbi, this.cbj, this.cbk);
    }
}
