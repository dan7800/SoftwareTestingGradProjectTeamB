package android.support.v7.internal.view.menu;

import java.util.*;
import android.content.*;
import android.support.v7.widget.*;
import android.support.v7.a.*;
import android.content.res.*;
import android.util.*;
import android.widget.*;
import android.view.*;

final class w extends BaseAdapter
{
    private int xa;
    private i yg;
    final /* synthetic */ v yh;
    
    public w(final v yh, final i yg) {
        this.yh = yh;
        this.xa = -1;
        this.yg = yg;
        this.dI();
    }
    
    private void dI() {
        final m eb = this.yh.ve.eb();
        if (eb != null) {
            final ArrayList<m> dv = this.yh.ve.dV();
            for (int size = dv.size(), i = 0; i < size; ++i) {
                if (dv.get(i) == eb) {
                    this.xa = i;
                    return;
                }
            }
        }
        this.xa = -1;
    }
    
    public final m ae(int n) {
        ArrayList<m> list;
        if (this.yh.xV) {
            list = this.yg.dV();
        }
        else {
            list = this.yg.dS();
        }
        if (this.xa >= 0 && n >= this.xa) {
            ++n;
        }
        return list.get(n);
    }
    
    public final int getCount() {
        ArrayList<m> list;
        if (this.yh.xV) {
            list = this.yg.dV();
        }
        else {
            list = this.yg.dS();
        }
        if (this.xa < 0) {
            return list.size();
        }
        return -1 + list.size();
    }
    
    public final long getItemId(final int n) {
        return n;
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        View inflate;
        if (view == null) {
            inflate = this.yh.wC.inflate(v.xT, viewGroup, false);
        }
        else {
            inflate = view;
        }
        final ListMenuItemView listMenuItemView = (ListMenuItemView)inflate;
        if (this.yh.wV) {
            ((ListMenuItemView)inflate).dG();
        }
        listMenuItemView.a(this.ae(n));
        return inflate;
    }
    
    public final void notifyDataSetChanged() {
        this.dI();
        super.notifyDataSetChanged();
    }
}
