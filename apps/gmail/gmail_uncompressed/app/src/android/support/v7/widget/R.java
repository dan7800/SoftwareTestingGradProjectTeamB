package android.support.v7.widget;

import android.view.*;
import android.support.v4.view.*;

final class r extends w
{
    final /* synthetic */ w CY;
    final /* synthetic */ w CZ;
    
    r(final w cy, final w cz) {
        this.CY = cy;
        this.CZ = cz;
    }
    
    public final int d(final View view, final int n, final int n2) {
        int n3 = 1;
        if (ad.m(view) != n3) {
            n3 = 0;
        }
        w w;
        if (n3 == 0) {
            w = this.CY;
        }
        else {
            w = this.CZ;
        }
        return w.d(view, n, n2);
    }
    
    @Override
    final int k(final View view, final int n) {
        int n2 = 1;
        if (ad.m(view) != n2) {
            n2 = 0;
        }
        w w;
        if (n2 == 0) {
            w = this.CY;
        }
        else {
            w = this.CZ;
        }
        return w.k(view, n);
    }
}
