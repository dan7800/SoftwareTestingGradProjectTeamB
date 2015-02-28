package android.support.v4.view.a;

import java.util.*;
import android.os.*;

final class v implements C
{
    final /* synthetic */ q jV;
    final /* synthetic */ u jX;
    
    v(final u jx, final q jv) {
        this.jX = jx;
        this.jV = jv;
    }
    
    @Override
    public final Object G(final int n) {
        final i f = this.jV.F(n);
        if (f == null) {
            return null;
        }
        return f.br();
    }
    
    @Override
    public final List<Object> bv() {
        final q jv = this.jV;
        q.bv();
        final ArrayList<Object> list = new ArrayList<Object>();
        for (int size = null.size(), i = 0; i < size; ++i) {
            list.add(null.get(i).br());
        }
        return list;
    }
    
    @Override
    public final Object bx() {
        final q jv = this.jV;
        q.bw();
        return null;
    }
    
    @Override
    public final boolean performAction(final int n, final int n2, final Bundle bundle) {
        return this.jV.performAction(n, n2, bundle);
    }
}
