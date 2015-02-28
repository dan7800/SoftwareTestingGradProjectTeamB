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

final class k implements Runnable
{
    final /* synthetic */ ActionBarActivityDelegateBase oG;
    
    k(final ActionBarActivityDelegateBase og) {
        this.oG = og;
    }
    
    @Override
    public final void run() {
        if ((0x1 & this.oG.oA) != 0x0) {
            ActionBarActivityDelegateBase.a(this.oG, 0);
        }
        if ((0x100 & this.oG.oA) != 0x0) {
            ActionBarActivityDelegateBase.a(this.oG, 8);
        }
        this.oG.oz = false;
        this.oG.oA = 0;
    }
}
