package android.support.v7.internal.widget;

import android.util.*;
import android.content.res.*;
import android.content.*;
import android.graphics.drawable.*;
import android.support.v4.content.*;
import android.support.v7.a.*;
import android.graphics.*;

public class U
{
    static final PorterDuff$Mode Bc;
    private static final V Bd;
    private static final int[] Be;
    private static final int[] Bf;
    private static final int[] Bg;
    private static final int[] Bh;
    private static final int[] Bi;
    private static final String TAG;
    private final TypedValue Bj;
    private ColorStateList Bk;
    private ColorStateList Bl;
    private ColorStateList Bm;
    private final Resources lR;
    private final Context mContext;
    
    static {
        TAG = U.class.getSimpleName();
        Bc = PorterDuff$Mode.SRC_IN;
        Bd = new V();
        Be = new int[] { f.pO, f.pR, f.pY, f.pQ, f.pP, f.pX, f.pS, f.pT, f.pW, f.pV, f.pU, f.pZ, f.qk, f.qi };
        Bf = new int[] { f.qh, f.qj, f.pM };
        Bg = new int[] { f.qc, f.pK, f.qb };
        Bh = new int[] { f.pN, f.qg, f.ql, f.qd, f.pI, f.pJ };
        Bi = new int[] { f.pL };
    }
    
    public U(final Context mContext) {
        this.mContext = mContext;
        this.lR = new X(mContext.getResources(), this);
        this.Bj = new TypedValue();
    }
    
    private int a(final int n, final float n2) {
        final int ap = this.ap(n);
        return (ap & 0xFFFFFF) | Math.round(n2 * Color.alpha(ap)) << 24;
    }
    
    public static Drawable a(final Context context, final int n) {
        int n2;
        if (a(U.Bg, n) || a(U.Be, n) || a(U.Bf, n) || a(U.Bh, n) || a(U.Bi, n)) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        if (n2 != 0) {
            return new U(context).getDrawable(n);
        }
        return c.a(context, n);
    }
    
    private static boolean a(final int[] array, final int n) {
        final int length = array.length;
        int n2 = 0;
        boolean b;
        while (true) {
            b = false;
            if (n2 >= length) {
                break;
            }
            if (array[n2] == n) {
                b = true;
                break;
            }
            ++n2;
        }
        return b;
    }
    
    private int ap(final int n) {
        if (this.mContext.getTheme().resolveAttribute(n, this.Bj, true)) {
            if (this.Bj.type >= 16 && this.Bj.type <= 31) {
                return this.Bj.data;
            }
            if (this.Bj.type == 3) {
                return this.lR.getColor(this.Bj.resourceId);
            }
        }
        return 0;
    }
    
    private int aq(final int n) {
        this.mContext.getTheme().resolveAttribute(16842803, this.Bj, true);
        return this.a(n, this.Bj.getFloat());
    }
    
    final void a(final int n, final Drawable drawable) {
        int n2;
        PorterDuff$Mode bc;
        int n3;
        int alpha;
        if (a(U.Be, n)) {
            n2 = b.colorControlNormal;
            bc = null;
            n3 = 1;
            alpha = -1;
        }
        else if (a(U.Bf, n)) {
            n2 = b.colorControlActivated;
            n3 = 1;
            alpha = -1;
            bc = null;
        }
        else if (a(U.Bg, n)) {
            final PorterDuff$Mode multiply = PorterDuff$Mode.MULTIPLY;
            n3 = 1;
            alpha = -1;
            bc = multiply;
            n2 = 16842801;
        }
        else if (n == f.qa) {
            n2 = 16842800;
            final int round = Math.round(40.8f);
            n3 = 1;
            alpha = round;
            bc = null;
        }
        else {
            alpha = -1;
            bc = null;
            n2 = 0;
            n3 = 0;
        }
        if (n3 != 0) {
            if (bc == null) {
                bc = U.Bc;
            }
            final int ap = this.ap(n2);
            final PorterDuffColorFilter a = U.Bd.a(ap, bc);
            ColorFilter colorFilter;
            if (a == null) {
                final PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(ap, bc);
                U.Bd.a(ap, bc, porterDuffColorFilter);
                colorFilter = (ColorFilter)porterDuffColorFilter;
            }
            else {
                colorFilter = (ColorFilter)a;
            }
            drawable.setColorFilter(colorFilter);
            if (alpha != -1) {
                drawable.setAlpha(alpha);
            }
        }
    }
    
    public final Drawable getDrawable(final int n) {
        final Drawable a = c.a(this.mContext, n);
        if (a != null) {
            if (a(U.Bh, n)) {
                if (this.Bk == null) {
                    final int ap = this.ap(b.colorControlNormal);
                    final int ap2 = this.ap(b.colorControlActivated);
                    final int[][] array = new int[7][];
                    final int[] array2 = new int[7];
                    array[0] = new int[] { -16842910 };
                    array2[0] = this.aq(b.colorControlNormal);
                    array[1] = new int[] { 16842908 };
                    array2[1] = ap2;
                    array[2] = new int[] { 16843518 };
                    array2[2] = ap2;
                    array[3] = new int[] { 16842919 };
                    array2[3] = ap2;
                    array[4] = new int[] { 16842912 };
                    array2[4] = ap2;
                    array[5] = new int[] { 16842913 };
                    array2[5] = ap2;
                    array[6] = new int[0];
                    array2[6] = ap;
                    this.Bk = new ColorStateList(array, array2);
                }
                return new S(a, this.Bk);
            }
            if (n == f.qf) {
                if (this.Bm == null) {
                    final int[][] array3 = new int[3][];
                    final int[] array4 = new int[3];
                    array3[0] = new int[] { -16842910 };
                    array4[0] = this.a(16842800, 0.1f);
                    array3[1] = new int[] { 16842912 };
                    array4[1] = this.a(b.colorControlActivated, 0.3f);
                    array3[2] = new int[0];
                    array4[2] = this.a(16842800, 0.3f);
                    this.Bm = new ColorStateList(array3, array4);
                }
                return new S(a, this.Bm);
            }
            if (n == f.qe) {
                if (this.Bl == null) {
                    final int[][] array5 = new int[3][];
                    final int[] array6 = new int[3];
                    array5[0] = new int[] { -16842910 };
                    array6[0] = this.aq(b.pv);
                    array5[1] = new int[] { 16842912 };
                    array6[1] = this.ap(b.colorControlActivated);
                    array5[2] = new int[0];
                    array6[2] = this.ap(b.pv);
                    this.Bl = new ColorStateList(array5, array6);
                }
                return new S(a, this.Bl, PorterDuff$Mode.MULTIPLY);
            }
            if (a(U.Bi, n)) {
                return this.lR.getDrawable(n);
            }
            this.a(n, a);
        }
        return a;
    }
}
