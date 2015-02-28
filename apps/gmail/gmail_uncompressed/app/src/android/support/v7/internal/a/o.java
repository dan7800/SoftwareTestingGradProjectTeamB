package android.support.v7.internal.a;

import android.support.v7.app.*;
import android.graphics.drawable.*;
import android.view.*;

public final class o extends e
{
    final /* synthetic */ j vc;
    private f vg;
    private Drawable vh;
    private CharSequence vi;
    private CharSequence vj;
    private int vk;
    private View vl;
    
    public final f dg() {
        return this.vg;
    }
    
    @Override
    public final CharSequence getContentDescription() {
        return this.vj;
    }
    
    @Override
    public final View getCustomView() {
        return this.vl;
    }
    
    @Override
    public final Drawable getIcon() {
        return this.vh;
    }
    
    @Override
    public final int getPosition() {
        return this.vk;
    }
    
    @Override
    public final CharSequence getText() {
        return this.vi;
    }
    
    @Override
    public final void select() {
        this.vc.a(this);
    }
}
