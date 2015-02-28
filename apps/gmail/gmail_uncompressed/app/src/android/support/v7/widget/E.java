package android.support.v7.widget;

import android.util.*;
import android.content.*;
import android.content.res.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.support.v7.a.*;
import java.util.*;
import android.support.v4.view.*;

final class e extends L
{
    final /* synthetic */ ActionMenuPresenter Ce;
    final /* synthetic */ d Cf;
    
    e(final d cf, final View view, final ActionMenuPresenter ce) {
        this.Cf = cf;
        this.Ce = ce;
        super(view);
    }
    
    @Override
    public final H dA() {
        if (this.Cf.Cb.BV == null) {
            return null;
        }
        return this.Cf.Cb.BV.dA();
    }
    
    public final boolean dB() {
        this.Cf.Cb.showOverflowMenu();
        return true;
    }
    
    public final boolean dC() {
        if (this.Cf.Cb.BX != null) {
            return false;
        }
        this.Cf.Cb.hideOverflowMenu();
        return true;
    }
}
