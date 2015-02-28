package android.support.v7.internal.view;

import android.support.v4.view.*;
import android.support.v7.internal.view.menu.*;
import android.support.v7.a.*;
import android.content.res.*;
import android.app.*;
import android.content.*;
import android.support.v4.b.a.*;
import android.util.*;
import android.view.*;
import org.xmlpull.v1.*;
import java.io.*;

final class g
{
    private Menu vA;
    private int vB;
    private int vC;
    private int vD;
    private int vE;
    private boolean vF;
    private boolean vG;
    private boolean vH;
    private int vI;
    private int vJ;
    private CharSequence vK;
    private CharSequence vL;
    private int vM;
    private char vN;
    private char vO;
    private int vP;
    private boolean vQ;
    private boolean vR;
    private boolean vS;
    private int vT;
    private int vU;
    private String vV;
    private String vW;
    private String vX;
    private n vY;
    final /* synthetic */ e vZ;
    
    public g(final e vz, final Menu va) {
        this.vZ = vz;
        this.vA = va;
        this.dq();
    }
    
    private <T> T a(final String s, final Class<?>[] array, final Object[] array2) {
        try {
            return (T)this.vZ.mContext.getClassLoader().loadClass(s).getConstructor(array).newInstance(array2);
        }
        catch (Exception ex) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + s, (Throwable)ex);
            return null;
        }
    }
    
    private void h(final MenuItem menuItem) {
        boolean b = true;
        menuItem.setChecked(this.vQ).setVisible(this.vR).setEnabled(this.vS).setCheckable(this.vP > 0 && b).setTitleCondensed(this.vL).setIcon(this.vM).setAlphabeticShortcut(this.vN).setNumericShortcut(this.vO);
        if (this.vT >= 0) {
            J.a(menuItem, this.vT);
        }
        if (this.vX != null) {
            if (this.vZ.mContext.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            menuItem.setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new f(e.c(this.vZ), this.vX));
        }
        if (this.vP >= 2) {
            if (menuItem instanceof m) {
                ((m)menuItem).u(b);
            }
            else if (menuItem instanceof o) {
                ((o)menuItem).eo();
            }
        }
        if (this.vV != null) {
            J.a(menuItem, this.a(this.vV, e.vt, this.vZ.vv));
        }
        else {
            b = false;
        }
        if (this.vU > 0) {
            if (!b) {
                J.b(menuItem, this.vU);
            }
            else {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            }
        }
        if (this.vY != null) {
            J.a(menuItem, this.vY);
        }
    }
    
    private static char k(final String s) {
        if (s == null) {
            return '\0';
        }
        return s.charAt(0);
    }
    
    public final void a(final AttributeSet set) {
        final TypedArray obtainStyledAttributes = this.vZ.mContext.obtainStyledAttributes(set, l.sm);
        this.vB = obtainStyledAttributes.getResourceId(l.sp, 0);
        this.vC = obtainStyledAttributes.getInt(l.sq, 0);
        this.vD = obtainStyledAttributes.getInt(l.sr, 0);
        this.vE = obtainStyledAttributes.getInt(l.sn, 0);
        this.vF = obtainStyledAttributes.getBoolean(l.ss, true);
        this.vG = obtainStyledAttributes.getBoolean(l.so, true);
        obtainStyledAttributes.recycle();
    }
    
    public final void b(final AttributeSet set) {
        int n = 1;
        final TypedArray obtainStyledAttributes = this.vZ.mContext.obtainStyledAttributes(set, l.st);
        this.vI = obtainStyledAttributes.getResourceId(l.sC, 0);
        this.vJ = ((obtainStyledAttributes.getInt(l.sD, this.vC) & 0xFFFF0000) | (obtainStyledAttributes.getInt(l.sG, this.vD) & 0xFFFF));
        this.vK = obtainStyledAttributes.getText(l.sH);
        this.vL = obtainStyledAttributes.getText(l.sI);
        this.vM = obtainStyledAttributes.getResourceId(l.sB, 0);
        this.vN = k(obtainStyledAttributes.getString(l.sx));
        this.vO = k(obtainStyledAttributes.getString(l.sE));
        if (obtainStyledAttributes.hasValue(l.sy)) {
            int vp;
            if (obtainStyledAttributes.getBoolean(l.sy, false)) {
                vp = n;
            }
            else {
                vp = 0;
            }
            this.vP = vp;
        }
        else {
            this.vP = this.vE;
        }
        this.vQ = obtainStyledAttributes.getBoolean(l.sz, false);
        this.vR = obtainStyledAttributes.getBoolean(l.sJ, this.vF);
        this.vS = obtainStyledAttributes.getBoolean(l.sA, this.vG);
        this.vT = obtainStyledAttributes.getInt(l.sK, -1);
        this.vX = obtainStyledAttributes.getString(l.sF);
        this.vU = obtainStyledAttributes.getResourceId(l.su, 0);
        this.vV = obtainStyledAttributes.getString(l.sw);
        this.vW = obtainStyledAttributes.getString(l.sv);
        if (this.vW == null) {
            n = 0;
        }
        if (n != 0 && this.vU == 0 && this.vV == null) {
            this.vY = this.a(this.vW, e.vu, this.vZ.vw);
        }
        else {
            if (n != 0) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
            }
            this.vY = null;
        }
        obtainStyledAttributes.recycle();
        this.vH = false;
    }
    
    public final void dq() {
        this.vB = 0;
        this.vC = 0;
        this.vD = 0;
        this.vE = 0;
        this.vF = true;
        this.vG = true;
    }
    
    public final void dr() {
        this.vH = true;
        this.h(this.vA.add(this.vB, this.vI, this.vJ, this.vK));
    }
    
    public final SubMenu ds() {
        this.vH = true;
        final SubMenu addSubMenu = this.vA.addSubMenu(this.vB, this.vI, this.vJ, this.vK);
        this.h(addSubMenu.getItem());
        return addSubMenu;
    }
    
    public final boolean dt() {
        return this.vH;
    }
}
