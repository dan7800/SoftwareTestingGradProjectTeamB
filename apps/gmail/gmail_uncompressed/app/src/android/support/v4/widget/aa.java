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

final class aa extends Animation
{
    final /* synthetic */ int nA;
    final /* synthetic */ int nB;
    final /* synthetic */ W nz;
    
    aa(final W nz, final int na, final int nb) {
        this.nz = nz;
        this.nA = na;
        this.nB = nb;
    }
    
    public final void applyTransformation(final float n, final Transformation transformation) {
        this.nz.nl.setAlpha((int)(this.nA + n * (this.nB - this.nA)));
    }
}
