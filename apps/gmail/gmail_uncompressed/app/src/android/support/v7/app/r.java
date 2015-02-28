package android.support.v7.app;

import android.graphics.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.menu.*;
import android.content.*;
import android.support.v7.a.*;
import android.os.*;
import android.widget.*;
import android.graphics.drawable.*;
import android.util.*;
import android.support.v4.view.*;
import android.support.v7.widget.*;
import android.view.*;
import android.support.v7.internal.widget.*;
import android.content.res.*;
import android.support.v4.app.*;
import android.app.*;

final class r implements y
{
    final /* synthetic */ ActionBarActivityDelegateBase oG;
    
    private r(final ActionBarActivityDelegateBase og) {
        this.oG = og;
    }
    
    @Override
    public final void a(i i, final boolean b) {
        final Object dz = i.dZ();
        boolean b2;
        if (dz != i) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        final ActionBarActivityDelegateBase og = this.oG;
        if (b2) {
            i = (i)dz;
        }
        final ActionBarActivityDelegateBase$PanelFeatureState a = og.e((Menu)i);
        if (a != null) {
            if (!b2) {
                this.oG.nX.closeOptionsMenu();
                this.oG.a(a, b);
                return;
            }
            this.oG.a(a.oI, a, (Menu)dz);
            this.oG.a(a, true);
        }
    }
    
    @Override
    public final boolean c(final i i) {
        if (i == null && this.oG.oa) {
            final android.support.v7.internal.a.i cp = this.oG.cP();
            if (cp != null && !this.oG.isDestroyed()) {
                cp.onMenuOpened(8, (Menu)i);
            }
        }
        return true;
    }
}
