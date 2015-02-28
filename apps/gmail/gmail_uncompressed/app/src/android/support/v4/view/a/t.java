package android.support.v4.view.a;

import java.util.*;
import android.os.*;

final class t implements z
{
    final /* synthetic */ q jV;
    final /* synthetic */ s jW;
    
    t(final s jw, final q jv) {
        this.jW = jw;
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
    public final boolean performAction(final int n, final int n2, final Bundle bundle) {
        return this.jV.performAction(n, n2, bundle);
    }
}
