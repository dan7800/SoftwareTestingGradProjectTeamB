package android.support.v7.internal.widget;

import android.widget.*;
import android.support.v7.internal.widget.n$android.support.v7.internal.widget.*;
import android.content.*;
import android.view.accessibility.*;
import android.util.*;
import android.os.*;
import android.view.*;

final class r implements Runnable
{
    final /* synthetic */ n Ah;
    
    private r(final n ah) {
        this.Ah = ah;
    }
    
    @Override
    public final void run() {
        if (this.Ah.zS) {
            if (this.Ah.getAdapter() != null) {
                this.Ah.post((Runnable)this);
            }
            return;
        }
        this.Ah.eI();
    }
}
