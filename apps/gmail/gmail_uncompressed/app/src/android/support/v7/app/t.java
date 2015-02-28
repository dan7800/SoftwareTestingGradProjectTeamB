package android.support.v7.app;

import android.support.v4.widget.*;
import android.graphics.drawable.*;
import android.app.*;
import android.os.*;
import android.view.*;

public final class t implements k
{
    private final u oW;
    private final DrawerLayout oX;
    private x oY;
    private Drawable oZ;
    private boolean pa;
    private boolean pb;
    private final int pc;
    private final int pd;
    
    public t(final Activity activity, final DrawerLayout drawerLayout) {
        this(activity, drawerLayout, 2131296653, 2131296654);
    }
    
    private t(final Activity activity, final DrawerLayout ox, final int n, final int n2) {
        this.pa = true;
        if (activity instanceof v) {
            this.oW = ((v)activity).cW();
        }
        else if (activity instanceof B) {
            this.oW = ((B)activity).cH();
        }
        else if (Build$VERSION.SDK_INT >= 18) {
            this.oW = new A(activity, (byte)0);
        }
        else if (Build$VERSION.SDK_INT >= 11) {
            this.oW = new z(activity, (byte)0);
        }
        else {
            this.oW = new y(activity);
        }
        this.oX = ox;
        this.pc = 2131296653;
        this.pd = 2131296654;
        this.oY = new w(activity, this.oW.cO());
        this.oZ = this.cQ();
    }
    
    private void Z(final int n) {
        this.oW.Z(n);
    }
    
    private void b(final Drawable drawable, final int n) {
        this.oW.b(drawable, n);
    }
    
    private Drawable cQ() {
        return this.oW.cQ();
    }
    
    @Override
    public final void P(final int n) {
    }
    
    @Override
    public final void Q(final View view) {
        this.oY.p(1.0f);
        if (this.pa) {
            this.Z(this.pd);
        }
    }
    
    @Override
    public final void R(final View view) {
        this.oY.p(0.0f);
        if (this.pa) {
            this.Z(this.pc);
        }
    }
    
    public final void cT() {
        if (this.oX.bM()) {
            this.oY.p(1.0f);
        }
        else {
            this.oY.p(0.0f);
        }
        if (this.pa) {
            final Drawable drawable = (Drawable)this.oY;
            int n;
            if (this.oX.bM()) {
                n = this.pd;
            }
            else {
                n = this.pc;
            }
            this.b(drawable, n);
        }
    }
    
    public final void cU() {
        if (!this.pb) {
            this.oZ = this.cQ();
        }
        this.cT();
    }
    
    public final void cV() {
        if (this.pa) {
            this.b(this.oZ, 0);
            this.pa = false;
        }
    }
    
    @Override
    public final void i(final View view, final float n) {
        this.oY.p(Math.min(1.0f, Math.max(0.0f, n)));
    }
    
    public final boolean onOptionsItemSelected(final MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == 16908332 && this.pa) {
            if (this.oX.bN()) {
                this.oX.bL();
            }
            else {
                this.oX.bK();
            }
            return true;
        }
        return false;
    }
    
    public final void setHomeAsUpIndicator(final int n) {
        Drawable drawable = null;
        if (n != 0) {
            drawable = this.oX.getResources().getDrawable(n);
        }
        if (drawable == null) {
            this.oZ = this.cQ();
            this.pb = false;
        }
        else {
            this.oZ = drawable;
            this.pb = true;
        }
        if (!this.pa) {
            this.b(this.oZ, 0);
        }
    }
}
