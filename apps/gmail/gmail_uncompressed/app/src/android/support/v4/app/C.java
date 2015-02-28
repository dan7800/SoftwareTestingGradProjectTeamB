package android.support.v4.app;

import java.io.*;
import android.util.*;
import android.content.*;
import java.util.*;
import android.view.*;
import android.transition.*;
import android.os.*;

final class c implements ViewTreeObserver$OnPreDrawListener
{
    final /* synthetic */ Fragment F;
    final /* synthetic */ a G;
    final /* synthetic */ View H;
    final /* synthetic */ Object I;
    final /* synthetic */ ArrayList J;
    final /* synthetic */ f K;
    final /* synthetic */ boolean L;
    final /* synthetic */ Fragment M;
    
    c(final a g, final View h, final Object i, final ArrayList j, final f k, final boolean l, final Fragment f, final Fragment m) {
        this.G = g;
        this.H = h;
        this.I = i;
        this.J = j;
        this.K = k;
        this.L = l;
        this.F = f;
        this.M = m;
    }
    
    public final boolean onPreDraw() {
        this.H.getViewTreeObserver().removeOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)this);
        if (this.I != null) {
            A.a(this.I, this.J);
            this.J.clear();
            final android.support.v4.f.a a = android.support.v4.app.a.a(this.G, this.K, this.L, this.F);
            if (a.isEmpty()) {
                this.J.add(this.K.ab);
            }
            else {
                this.J.addAll(a.values());
            }
            A.b(this.I, this.J);
            android.support.v4.app.a.a(this.G, a, this.K);
            final a g = this.G;
            final f k = this.K;
            android.support.v4.app.a.a(this.F, this.M, this.L, a);
        }
        return true;
    }
}
