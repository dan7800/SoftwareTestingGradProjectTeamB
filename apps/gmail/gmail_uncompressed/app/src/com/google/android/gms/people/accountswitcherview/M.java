package com.google.android.gms.people.accountswitcherview;

import android.widget.*;
import com.google.android.gms.people.*;
import com.google.android.gms.common.api.*;

final class m extends p
{
    public final String cgm;
    final /* synthetic */ l cht;
    public final int width;
    
    public m(final l cht, final ImageView aKf, final String acw, final String cgm, final int width) {
        this.cht = cht;
        super(cht);
        this.aKf = aKf;
        this.acw = acw;
        this.cgm = cgm;
        this.width = width;
    }
    
    public final void a(final com.google.android.gms.people.m m) {
        this.cht.a(m.Jk(), m.getParcelFileDescriptor(), this, l.cl(this.cht.getContext()), this.width);
    }
    
    @Override
    public final void oV() {
        q.cgK.b(this.cht.bbm, this.acw, this.cgm, this.width).a(new n(this));
    }
}
