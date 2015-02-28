package android.support.v7.app;

import android.graphics.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.menu.*;
import android.content.*;
import android.os.*;
import android.widget.*;
import android.graphics.drawable.*;
import android.support.v7.a.*;
import android.util.*;
import android.support.v4.view.*;
import android.support.v7.widget.*;
import android.view.*;
import android.support.v7.internal.widget.*;
import android.content.res.*;
import android.support.v4.app.*;
import android.app.*;

final class l implements T
{
    final /* synthetic */ ActionBarActivityDelegateBase oG;
    
    l(final ActionBarActivityDelegateBase og) {
        this.oG = og;
    }
    
    @Override
    public final bn a(bn b) {
        final int systemWindowInsetTop = b.getSystemWindowInsetTop();
        final int b2 = ActionBarActivityDelegateBase.b(this.oG, systemWindowInsetTop);
        if (systemWindowInsetTop != b2) {
            b = b.b(b.getSystemWindowInsetLeft(), b2, b.getSystemWindowInsetRight(), b.getSystemWindowInsetBottom());
        }
        return b;
    }
}
