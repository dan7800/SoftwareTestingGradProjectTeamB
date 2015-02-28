package android.support.v7.widget;

import android.content.*;
import android.util.*;
import android.view.accessibility.*;
import android.support.v7.internal.view.menu.*;
import android.content.res.*;
import android.os.*;
import android.support.v7.internal.widget.*;
import android.view.*;

final class l implements j
{
    final /* synthetic */ ActionMenuView Cp;
    
    private l(final ActionMenuView cp) {
        this.Cp = cp;
    }
    
    @Override
    public final void a(final i i) {
        if (this.Cp.Ck != null) {
            this.Cp.Ck.a(i);
        }
    }
    
    @Override
    public final boolean a(final i i, final MenuItem menuItem) {
        return this.Cp.Co != null && this.Cp.Co.onMenuItemClick(menuItem);
    }
}
