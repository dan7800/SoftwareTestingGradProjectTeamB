package android.support.v7.internal.view.menu;

import android.content.*;
import android.view.*;
import android.support.v4.view.*;
import java.util.*;

public abstract class d implements x
{
    private int cH;
    protected Context mContext;
    protected i ve;
    protected Context wA;
    protected LayoutInflater wB;
    protected LayoutInflater wC;
    private y wD;
    private int wE;
    private int wF;
    protected z wG;
    
    public d(final Context wa, final int we, final int wf) {
        this.wA = wa;
        this.wB = LayoutInflater.from(wa);
        this.wE = we;
        this.wF = wf;
    }
    
    public View a(final m m, final View view, final ViewGroup viewGroup) {
        A a;
        if (view instanceof A) {
            a = (A)view;
        }
        else {
            a = (A)this.wB.inflate(this.wF, viewGroup, false);
        }
        this.a(m, a);
        return (View)a;
    }
    
    @Override
    public void a(final Context mContext, final i ve) {
        this.mContext = mContext;
        this.wC = LayoutInflater.from(this.mContext);
        this.ve = ve;
    }
    
    @Override
    public void a(final i i, final boolean b) {
        if (this.wD != null) {
            this.wD.a(i, b);
        }
    }
    
    public abstract void a(final m p0, final A p1);
    
    public final void a(final y wd) {
        this.wD = wd;
    }
    
    @Override
    public boolean a(final D d) {
        return this.wD != null && this.wD.c(d);
    }
    
    public boolean b(final m m) {
        return true;
    }
    
    protected boolean b(final ViewGroup viewGroup, final int n) {
        viewGroup.removeViewAt(n);
        return true;
    }
    
    @Override
    public final boolean c(final m m) {
        return false;
    }
    
    public z d(final ViewGroup viewGroup) {
        if (this.wG == null) {
            (this.wG = (z)this.wB.inflate(this.wE, viewGroup, false)).e(this.ve);
            this.r(true);
        }
        return this.wG;
    }
    
    @Override
    public final boolean d(final m m) {
        return false;
    }
    
    public final y dD() {
        return this.wD;
    }
    
    @Override
    public boolean dE() {
        return false;
    }
    
    @Override
    public void r(final boolean b) {
        final ViewGroup viewGroup = (ViewGroup)this.wG;
        if (viewGroup != null) {
            int j;
            if (this.ve != null) {
                this.ve.dT();
                final ArrayList<m> ds = this.ve.dS();
                final int size = ds.size();
                int i = 0;
                j = 0;
                while (i < size) {
                    final m m = ds.get(i);
                    int n;
                    if (this.b(m)) {
                        final View child = viewGroup.getChildAt(j);
                        m dv;
                        if (child instanceof A) {
                            dv = ((A)child).dv();
                        }
                        else {
                            dv = null;
                        }
                        final View a = this.a(m, child, viewGroup);
                        if (m != dv) {
                            a.setPressed(false);
                            ad.x(a);
                        }
                        if (a != child) {
                            final ViewGroup viewGroup2 = (ViewGroup)a.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(a);
                            }
                            ((ViewGroup)this.wG).addView(a, j);
                        }
                        n = j + 1;
                    }
                    else {
                        n = j;
                    }
                    ++i;
                    j = n;
                }
            }
            else {
                j = 0;
            }
            while (j < viewGroup.getChildCount()) {
                if (!this.b(viewGroup, j)) {
                    ++j;
                }
            }
        }
    }
    
    public final void setId(final int ch) {
        this.cH = ch;
    }
}
