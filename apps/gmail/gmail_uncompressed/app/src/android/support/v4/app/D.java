package android.support.v4.app;

import java.io.*;
import android.util.*;
import android.content.*;
import java.util.*;
import android.view.*;
import android.transition.*;
import android.os.*;

final class d implements ViewTreeObserver$OnPreDrawListener
{
    final /* synthetic */ a G;
    final /* synthetic */ View H;
    final /* synthetic */ f K;
    final /* synthetic */ int N;
    final /* synthetic */ Object O;
    
    d(final a g, final View h, final f k, final int n, final Object o) {
        this.G = g;
        this.H = h;
        this.K = k;
        this.N = n;
        this.O = o;
    }
    
    public final boolean onPreDraw() {
        this.H.getViewTreeObserver().removeOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)this);
        this.G.a(this.K, this.N, this.O);
        return true;
    }
}
