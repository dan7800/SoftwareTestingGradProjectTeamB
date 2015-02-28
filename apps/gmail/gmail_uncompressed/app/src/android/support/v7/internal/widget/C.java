package android.support.v7.internal.widget;

import android.graphics.*;
import android.database.*;
import android.content.*;
import android.util.*;
import android.widget.*;
import android.view.*;
import android.support.v4.view.*;
import android.os.*;

final class c
{
    private final SparseArray<View> yG;
    final /* synthetic */ AbsSpinnerCompat yH;
    
    c(final AbsSpinnerCompat yh) {
        this.yH = yh;
        this.yG = (SparseArray<View>)new SparseArray();
    }
    
    final View ah(final int n) {
        final View view = (View)this.yG.get(n);
        if (view != null) {
            this.yG.delete(n);
        }
        return view;
    }
    
    public final void b(final int n, final View view) {
        this.yG.put(n, (Object)view);
    }
    
    final void clear() {
        final SparseArray<View> yg = this.yG;
        for (int size = yg.size(), i = 0; i < size; ++i) {
            final View view = (View)yg.valueAt(i);
            if (view != null) {
                AbsSpinnerCompat.a(this.yH, view);
            }
        }
        yg.clear();
    }
}
