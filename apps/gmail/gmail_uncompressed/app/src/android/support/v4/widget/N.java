package android.support.v4.widget;

import android.view.*;

final class n extends aj
{
    final /* synthetic */ DrawerLayout ll;
    private final int ls;
    private ag lt;
    private final Runnable lu;
    
    public n(final DrawerLayout ll, final int ls) {
        this.ll = ll;
        this.lu = new o(this);
        this.ls = ls;
    }
    
    private void bT() {
        int n = 3;
        if (this.ls == n) {
            n = 5;
        }
        final View n2 = this.ll.N(n);
        if (n2 != null) {
            this.ll.L(n2);
        }
    }
    
    @Override
    public final void Q(final int n) {
        final DrawerLayout ll = this.ll;
        final int ls = this.ls;
        ll.a(n, this.lt.ct());
    }
    
    @Override
    public final boolean S(final View view) {
        final DrawerLayout ll = this.ll;
        return DrawerLayout.J(view) && this.ll.f(view, this.ls) && this.ll.F(view) == 0;
    }
    
    @Override
    public final void T(final View view) {
        ((l)view.getLayoutParams()).ln = false;
        this.bT();
    }
    
    @Override
    public final int U(final View view) {
        final DrawerLayout ll = this.ll;
        if (DrawerLayout.J(view)) {
            return view.getWidth();
        }
        return 0;
    }
    
    @Override
    public final int V(final View view) {
        return view.getTop();
    }
    
    public final void a(final ag lt) {
        this.lt = lt;
    }
    
    public final void bS() {
        this.ll.removeCallbacks(this.lu);
    }
    
    @Override
    public final void bU() {
        this.ll.postDelayed(this.lu, 160L);
    }
    
    @Override
    public final void g(final int n, final int n2) {
        View view;
        if ((n & 0x1) == 0x1) {
            view = this.ll.N(3);
        }
        else {
            view = this.ll.N(5);
        }
        if (view != null && this.ll.F(view) == 0) {
            this.lt.i(view, n2);
        }
    }
    
    @Override
    public final void g(final View view, final int n) {
        final int width = view.getWidth();
        float n2;
        if (this.ll.f(view, 3)) {
            n2 = (width + n) / width;
        }
        else {
            n2 = (this.ll.getWidth() - n) / width;
        }
        this.ll.h(view, n2);
        int visibility;
        if (n2 == 0.0f) {
            visibility = 4;
        }
        else {
            visibility = 0;
        }
        view.setVisibility(visibility);
        this.ll.invalidate();
    }
    
    @Override
    public final int h(final View view, final int n) {
        if (this.ll.f(view, 3)) {
            return Math.max(-view.getWidth(), Math.min(n, 0));
        }
        final int width = this.ll.getWidth();
        return Math.max(width - view.getWidth(), Math.min(n, width));
    }
    
    @Override
    public final void j(final View view, final float n) {
        final DrawerLayout ll = this.ll;
        final float g = DrawerLayout.G(view);
        final int width = view.getWidth();
        int width2;
        if (this.ll.f(view, 3)) {
            if (n > 0.0f || (n == 0.0f && g > 0.5f)) {
                width2 = 0;
            }
            else {
                width2 = -width;
            }
        }
        else {
            width2 = this.ll.getWidth();
            if (n < 0.0f || (n == 0.0f && g > 0.5f)) {
                width2 -= width;
            }
        }
        this.lt.l(width2, view.getTop());
        this.ll.invalidate();
    }
}
