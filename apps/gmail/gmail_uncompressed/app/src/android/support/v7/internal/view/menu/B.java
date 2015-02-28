package android.support.v7.internal.view.menu;

import android.support.v7.internal.widget.*;
import android.support.v7.widget.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.support.v7.internal.b.*;
import android.text.method.*;
import android.text.*;
import android.content.res.*;
import android.os.*;
import android.graphics.*;
import android.support.v4.view.*;
import android.widget.*;
import android.view.*;

final class b extends L
{
    final /* synthetic */ ActionMenuItemView wz;
    
    public b(final ActionMenuItemView wz) {
        this.wz = wz;
        super((View)wz);
    }
    
    @Override
    public final H dA() {
        if (this.wz.wt != null) {
            return this.wz.wt.dA();
        }
        return null;
    }
    
    @Override
    protected final boolean dB() {
        final k b = this.wz.wr;
        boolean b2 = false;
        if (b != null) {
            final boolean e = this.wz.wr.e(this.wz.wq);
            b2 = false;
            if (e) {
                final H da = this.dA();
                b2 = false;
                if (da != null) {
                    final boolean showing = da.isShowing();
                    b2 = false;
                    if (showing) {
                        b2 = true;
                    }
                }
            }
        }
        return b2;
    }
    
    @Override
    protected final boolean dC() {
        final H da = this.dA();
        if (da != null) {
            da.dismiss();
            return true;
        }
        return false;
    }
}
