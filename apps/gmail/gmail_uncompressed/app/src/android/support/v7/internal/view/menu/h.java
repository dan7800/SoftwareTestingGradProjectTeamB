package android.support.v7.internal.view.menu;

import java.util.*;
import android.content.*;
import android.widget.*;
import android.view.*;

final class h extends BaseAdapter
{
    private int xa;
    final /* synthetic */ g xb;
    
    public h(final g xb) {
        this.xb = xb;
        this.xa = -1;
        this.dI();
    }
    
    private void dI() {
        final m eb = this.xb.ve.eb();
        if (eb != null) {
            final ArrayList<m> dv = this.xb.ve.dV();
            for (int size = dv.size(), i = 0; i < size; ++i) {
                if (dv.get(i) == eb) {
                    this.xa = i;
                    return;
                }
            }
        }
        this.xa = -1;
    }
    
    public final m ae(final int n) {
        final ArrayList<m> dv = this.xb.ve.dV();
        int n2 = n + this.xb.wX;
        if (this.xa >= 0 && n2 >= this.xa) {
            ++n2;
        }
        return dv.get(n2);
    }
    
    public final int getCount() {
        final int n = this.xb.ve.dV().size() - this.xb.wX;
        if (this.xa < 0) {
            return n;
        }
        return n - 1;
    }
    
    public final long getItemId(final int n) {
        return n;
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        View inflate;
        if (view == null) {
            inflate = this.xb.wC.inflate(this.xb.wF, viewGroup, false);
        }
        else {
            inflate = view;
        }
        ((A)inflate).a(this.ae(n));
        return inflate;
    }
    
    public final void notifyDataSetChanged() {
        this.dI();
        super.notifyDataSetChanged();
    }
}
