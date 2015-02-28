package android.support.v4.widget;

import android.content.*;
import android.graphics.drawable.*;
import android.view.animation.*;
import android.os.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.widget.*;
import android.util.*;
import android.view.*;

final class ac extends Animation
{
    final /* synthetic */ W nz;
    
    ac(final W nz) {
        this.nz = nz;
    }
    
    public final void applyTransformation(final float n, final Transformation transformation) {
        int n2;
        if (!this.nz.nv) {
            n2 = (int)(this.nz.nr - Math.abs(this.nz.nk));
        }
        else {
            n2 = (int)this.nz.nr;
        }
        this.nz.c(this.nz.ni + (int)(n * (n2 - this.nz.ni)) - this.nz.ng.getTop(), false);
    }
}
