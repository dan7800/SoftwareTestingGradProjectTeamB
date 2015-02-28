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

final class ad extends Animation
{
    final /* synthetic */ W nz;
    
    ad(final W nz) {
        this.nz = nz;
    }
    
    public final void applyTransformation(final float n, final Transformation transformation) {
        W.b(this.nz, n);
    }
}
