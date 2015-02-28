package android.support.v4.widget;

import android.support.v4.view.a.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v4.content.*;
import android.graphics.*;
import android.support.v4.view.*;
import android.view.*;
import android.os.*;

final class g extends a
{
    final /* synthetic */ DrawerLayout ll;
    
    g(final DrawerLayout ll) {
        this.ll = ll;
    }
    
    @Override
    public final void a(final View view, final i i) {
        super.a(view, i);
        if (!DrawerLayout.O(view)) {
            i.setParent(null);
        }
    }
}
