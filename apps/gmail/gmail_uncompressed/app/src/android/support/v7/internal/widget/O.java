package android.support.v7.internal.widget;

import android.database.*;
import android.widget.*;
import android.support.v7.internal.widget.n$android.support.v7.internal.widget.*;
import android.content.*;
import android.view.accessibility.*;
import android.util.*;
import android.os.*;
import android.view.*;

final class o extends DataSetObserver
{
    private Parcelable Ag;
    final /* synthetic */ n Ah;
    
    o(final n ah) {
        this.Ah = ah;
        this.Ag = null;
    }
    
    public final void onChanged() {
        this.Ah.zS = true;
        this.Ah.zZ = this.Ah.zY;
        this.Ah.zY = this.Ah.getAdapter().getCount();
        if (this.Ah.getAdapter().hasStableIds() && this.Ag != null && this.Ah.zZ == 0 && this.Ah.zY > 0) {
            n.a(this.Ah, this.Ag);
            this.Ag = null;
        }
        else {
            this.Ah.eK();
        }
        this.Ah.eH();
        this.Ah.requestLayout();
    }
    
    public final void onInvalidated() {
        this.Ah.zS = true;
        if (this.Ah.getAdapter().hasStableIds()) {
            this.Ag = n.a(this.Ah);
        }
        this.Ah.zZ = this.Ah.zY;
        this.Ah.zY = 0;
        this.Ah.zV = -1;
        this.Ah.zW = Long.MIN_VALUE;
        this.Ah.zT = -1;
        this.Ah.zU = Long.MIN_VALUE;
        this.Ah.zN = false;
        this.Ah.eH();
        this.Ah.requestLayout();
    }
}
