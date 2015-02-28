package com.google.android.gms.people.accountswitcherview;

import android.widget.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;

final class j extends p
{
    public final String cgm;
    public final int chq;
    final /* synthetic */ i chr;
    
    public j(final i chr, final ImageView aKf, final String acw, final String cgm, final int chq) {
        this.chr = chr;
        super(chr);
        this.aKf = aKf;
        this.acw = acw;
        this.cgm = cgm;
        this.chq = chq;
    }
    
    @Override
    public final void oV() {
        q.cgK.a(this.chr.bbm, this.acw, this.cgm, this.chq).a(new k(this));
    }
}
