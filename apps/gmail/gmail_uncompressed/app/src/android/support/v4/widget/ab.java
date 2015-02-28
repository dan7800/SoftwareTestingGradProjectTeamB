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

final class ab implements Animation$AnimationListener
{
    final /* synthetic */ W nz;
    
    ab(final W nz) {
        this.nz = nz;
    }
    
    public final void onAnimationEnd(final Animation animation) {
        if (!this.nz.nd) {
            W.i(this.nz);
        }
    }
    
    public final void onAnimationRepeat(final Animation animation) {
    }
    
    public final void onAnimationStart(final Animation animation) {
    }
}
