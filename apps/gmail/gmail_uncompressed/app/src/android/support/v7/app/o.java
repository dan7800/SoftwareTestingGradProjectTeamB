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

final class o implements y
{
    final /* synthetic */ ActionBarActivityDelegateBase oG;
    
    private o(final ActionBarActivityDelegateBase og) {
        this.oG = og;
    }
    
    @Override
    public final void a(final i i, final boolean b) {
        this.oG.b(i);
    }
    
    @Override
    public final boolean c(final i i) {
        final android.support.v7.internal.a.i cp = this.oG.cP();
        if (cp != null) {
            cp.onMenuOpened(8, (Menu)i);
        }
        return true;
    }
}
