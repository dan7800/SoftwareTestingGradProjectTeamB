package android.support.v7.internal.view;

import android.content.*;
import android.support.v4.f.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;

public final class d implements b
{
    final Context mContext;
    final ActionMode$Callback vq;
    final n<a, c> vr;
    final n<Menu, Menu> vs;
    
    public d(final Context mContext, final ActionMode$Callback vq) {
        this.mContext = mContext;
        this.vq = vq;
        this.vr = new n<a, c>();
        this.vs = new n<Menu, Menu>();
    }
    
    private ActionMode d(final a a) {
        final c c = this.vr.get(a);
        if (c != null) {
            return c;
        }
        final c c2 = new c(this.mContext, a);
        this.vr.put(a, c2);
        return c2;
    }
    
    private Menu f(final Menu menu) {
        Menu a = this.vs.get(menu);
        if (a == null) {
            a = B.a(this.mContext, (android.support.v4.b.a.a)menu);
            this.vs.put(menu, a);
        }
        return a;
    }
    
    @Override
    public final boolean a(final a a, final Menu menu) {
        return this.vq.onCreateActionMode(this.d(a), this.f(menu));
    }
    
    @Override
    public final boolean a(final a a, final MenuItem menuItem) {
        return this.vq.onActionItemClicked(this.d(a), B.a(this.mContext, (android.support.v4.b.a.b)menuItem));
    }
    
    @Override
    public final boolean b(final a a, final Menu menu) {
        return this.vq.onPrepareActionMode(this.d(a), this.f(menu));
    }
    
    @Override
    public final void c(final a a) {
        this.vq.onDestroyActionMode(this.d(a));
    }
}
