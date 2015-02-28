package android.support.v7.internal.widget;

import android.view.*;
import android.support.v7.widget.*;
import android.widget.*;
import android.content.*;
import android.util.*;

final class N implements AdapterView$OnItemClickListener
{
    final /* synthetic */ SpinnerCompat AW;
    final /* synthetic */ M AX;
    
    N(final M ax, final SpinnerCompat aw) {
        this.AX = ax;
        this.AW = aw;
    }
    
    public final void onItemClick(final AdapterView<?> adapterView, final View view, final int selection, final long n) {
        this.AX.AQ.setSelection(selection);
        if (this.AX.AQ.zR != null) {
            final SpinnerCompat aq = this.AX.AQ;
            this.AX.AV.getItemId(selection);
            aq.ad(view);
        }
        this.AX.dismiss();
    }
}
