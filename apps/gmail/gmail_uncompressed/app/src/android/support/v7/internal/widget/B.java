package android.support.v7.internal.widget;

import android.view.*;
import android.support.v4.view.*;

public final class b implements bk
{
    private boolean yt;
    int yu;
    final /* synthetic */ a yv;
    
    protected b(final a yv) {
        this.yv = yv;
        this.yt = false;
    }
    
    @Override
    public final void A(final View view) {
        this.yv.setVisibility(0);
        this.yt = false;
    }
    
    @Override
    public final void B(final View view) {
        if (!this.yt) {
            this.yv.ys = null;
            this.yv.setVisibility(this.yu);
            if (this.yv.yp != null && this.yv.yn != null) {
                this.yv.yn.setVisibility(this.yu);
            }
        }
    }
    
    @Override
    public final void C(final View view) {
        this.yt = true;
    }
    
    public final b a(final aV ys, final int yu) {
        this.yv.ys = ys;
        this.yu = yu;
        return this;
    }
}
