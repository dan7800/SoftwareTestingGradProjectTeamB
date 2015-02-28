package com.google.api.client.googleapis.a;

import com.google.api.client.http.*;

final class d implements y
{
    final /* synthetic */ t cwA;
    final /* synthetic */ c cwB;
    final /* synthetic */ y cwz;
    
    d(final c cwB, final y cwz, final t cwA) {
        this.cwB = cwB;
        this.cwz = cwz;
        this.cwA = cwA;
    }
    
    @Override
    public final void b(final w w) {
        if (this.cwz != null) {
            this.cwz.b(w);
        }
        if (!w.XO() && this.cwA.XL()) {
            throw this.cwB.a(w);
        }
    }
}
