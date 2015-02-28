package android.support.v7.internal.widget;

import android.support.v7.c.*;
import android.view.*;

final class g implements View$OnClickListener
{
    final /* synthetic */ a ze;
    final /* synthetic */ ActionBarContextView zf;
    
    g(final ActionBarContextView zf, final a ze) {
        this.zf = zf;
        this.ze = ze;
    }
    
    public final void onClick(final View view) {
        this.ze.finish();
    }
}
