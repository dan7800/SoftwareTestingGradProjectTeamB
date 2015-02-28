package android.support.v7.internal.view;

import android.content.*;
import android.os.*;
import android.view.*;
import android.support.v4.view.*;
import android.util.*;
import android.support.v7.a.*;
import android.content.res.*;

public final class a
{
    private Context mContext;
    
    private a(final Context mContext) {
        this.mContext = mContext;
    }
    
    public static a f(final Context context) {
        return new a(context);
    }
    
    public final int dh() {
        return this.mContext.getResources().getInteger(h.qy);
    }
    
    public final boolean di() {
        return Build$VERSION.SDK_INT >= 19 || !ar.b(ViewConfiguration.get(this.mContext));
    }
    
    public final int dj() {
        return this.mContext.getResources().getDisplayMetrics().widthPixels / 2;
    }
    
    public final boolean dk() {
        if (this.mContext.getApplicationInfo().targetSdkVersion >= 16) {
            return this.mContext.getResources().getBoolean(c.pz);
        }
        return this.mContext.getResources().getBoolean(c.pA);
    }
    
    public final int dl() {
        final TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes((AttributeSet)null, l.qP, b.actionBarStyle, 0);
        int n = obtainStyledAttributes.getLayoutDimension(l.qY, 0);
        final Resources resources = this.mContext.getResources();
        if (!this.dk()) {
            n = Math.min(n, resources.getDimensionPixelSize(e.pE));
        }
        obtainStyledAttributes.recycle();
        return n;
    }
    
    public final boolean dm() {
        return this.mContext.getApplicationInfo().targetSdkVersion < 14;
    }
    
    public final int dn() {
        return this.mContext.getResources().getDimensionPixelSize(e.pF);
    }
}
