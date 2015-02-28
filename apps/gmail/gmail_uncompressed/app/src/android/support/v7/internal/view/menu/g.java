package android.support.v7.internal.view.menu;

import android.content.*;
import android.widget.*;
import android.view.*;

public final class g implements x, AdapterView$OnItemClickListener
{
    Context mContext;
    i ve;
    LayoutInflater wC;
    private y wD;
    int wF;
    ExpandedMenuView wW;
    private int wX;
    int wY;
    h wZ;
    
    public g(final int wf, final int wy) {
        this.wF = wf;
        this.wY = wy;
    }
    
    public g(final Context mContext, final int n) {
        this(n, 0);
        this.mContext = mContext;
        this.wC = LayoutInflater.from(this.mContext);
    }
    
    @Override
    public final void a(final Context mContext, final i ve) {
        if (this.wY != 0) {
            this.mContext = (Context)new ContextThemeWrapper(mContext, this.wY);
            this.wC = LayoutInflater.from(this.mContext);
        }
        else if (this.mContext != null) {
            this.mContext = mContext;
            if (this.wC == null) {
                this.wC = LayoutInflater.from(this.mContext);
            }
        }
        this.ve = ve;
        if (this.wZ != null) {
            this.wZ.notifyDataSetChanged();
        }
    }
    
    @Override
    public final void a(final i i, final boolean b) {
        if (this.wD != null) {
            this.wD.a(i, b);
        }
    }
    
    public final void a(final y wd) {
        this.wD = wd;
    }
    
    @Override
    public final boolean a(final D d) {
        if (!d.hasVisibleItems()) {
            return false;
        }
        new l(d).ec();
        if (this.wD != null) {
            this.wD.c(d);
        }
        return true;
    }
    
    @Override
    public final boolean c(final m m) {
        return false;
    }
    
    public final z d(final ViewGroup viewGroup) {
        if (this.wW == null) {
            this.wW = (ExpandedMenuView)this.wC.inflate(android.support.v7.a.i.qD, viewGroup, false);
            if (this.wZ == null) {
                this.wZ = new h(this);
            }
            this.wW.setAdapter((ListAdapter)this.wZ);
            this.wW.setOnItemClickListener((AdapterView$OnItemClickListener)this);
        }
        return this.wW;
    }
    
    @Override
    public final boolean d(final m m) {
        return false;
    }
    
    @Override
    public final boolean dE() {
        return false;
    }
    
    public final ListAdapter getAdapter() {
        if (this.wZ == null) {
            this.wZ = new h(this);
        }
        return (ListAdapter)this.wZ;
    }
    
    public final void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        this.ve.a((MenuItem)this.wZ.ae(n), this, 0);
    }
    
    @Override
    public final void r(final boolean b) {
        if (this.wZ != null) {
            this.wZ.notifyDataSetChanged();
        }
    }
}
