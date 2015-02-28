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

final class m implements y
{
    final /* synthetic */ ActionBarActivityDelegateBase oG;
    
    m(final ActionBarActivityDelegateBase og) {
        this.oG = og;
    }
    
    @Override
    public final void b(final Rect rect) {
        rect.top = ActionBarActivityDelegateBase.b(this.oG, rect.top);
    }
}
