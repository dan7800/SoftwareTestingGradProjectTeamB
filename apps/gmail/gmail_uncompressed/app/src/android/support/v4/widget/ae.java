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

final class ae extends Animation
{
    final /* synthetic */ W nz;
    
    ae(final W nz) {
        this.nz = nz;
    }
    
    public final void applyTransformation(final float n, final Transformation transformation) {
        this.nz.m(this.nz.nj + n * -this.nz.nj);
        W.b(this.nz, n);
    }
}
