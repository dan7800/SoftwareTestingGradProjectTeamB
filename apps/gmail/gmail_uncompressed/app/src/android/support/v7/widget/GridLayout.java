package android.support.v7.widget;

import android.content.*;
import android.util.*;
import android.support.v7.b.*;
import android.content.res.*;
import java.lang.reflect.*;
import android.support.v4.view.*;
import android.view.*;
import java.util.*;

public class GridLayout extends ViewGroup
{
    private static final int CA;
    private static final int CB;
    private static final int CC;
    private static final int CD;
    private static final int CE;
    static final w CM;
    private static final w CN;
    private static final w CO;
    public static final w CP;
    public static final w CQ;
    public static final w CR;
    public static final w CS;
    public static final w CT;
    public static final w CU;
    public static final w CV;
    public static final w CW;
    public static final w CX;
    static final Printer Cw;
    static final Printer Cx;
    private static final int Cy;
    private static final int Cz;
    final y CF;
    final y CG;
    boolean CH;
    int CI;
    int CJ;
    int CK;
    Printer CL;
    int fI;
    
    static {
        Cw = (Printer)new LogPrinter(3, GridLayout.class.getName());
        Cx = (Printer)new n();
        Cy = c.tX;
        Cz = c.tY;
        CA = c.tV;
        CB = c.ua;
        CC = c.tU;
        CD = c.tZ;
        CE = c.tW;
        CM = new o();
        CN = new p();
        CO = new q();
        CP = GridLayout.CN;
        CQ = GridLayout.CO;
        CR = GridLayout.CN;
        CS = GridLayout.CO;
        CT = a(GridLayout.CR, GridLayout.CS);
        CU = a(GridLayout.CS, GridLayout.CR);
        CV = new s();
        CW = new t();
        CX = new v();
    }
    
    public GridLayout(final Context context) {
        this(context, null);
    }
    
    public GridLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public GridLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.CF = new y(this, true, (byte)0);
        this.CG = new y(this, false, (byte)0);
        this.fI = 0;
        this.CH = false;
        this.CI = 1;
        this.CK = 0;
        this.CL = GridLayout.Cw;
        this.CJ = context.getResources().getDimensionPixelOffset(b.tT);
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, c.rS);
        try {
            this.CG.av(obtainStyledAttributes.getInt(GridLayout.Cz, Integer.MIN_VALUE));
            this.fk();
            this.requestLayout();
            this.CF.av(obtainStyledAttributes.getInt(GridLayout.CA, Integer.MIN_VALUE));
            this.fk();
            this.requestLayout();
            final int int1 = obtainStyledAttributes.getInt(GridLayout.Cy, 0);
            if (this.fI != int1) {
                this.fI = int1;
                this.fk();
                this.requestLayout();
            }
            this.CH = obtainStyledAttributes.getBoolean(GridLayout.CB, false);
            this.requestLayout();
            this.CI = obtainStyledAttributes.getInt(GridLayout.CC, 1);
            this.requestLayout();
            this.CG.J(obtainStyledAttributes.getBoolean(GridLayout.CD, true));
            this.fk();
            this.requestLayout();
            this.CF.J(obtainStyledAttributes.getBoolean(GridLayout.CE, true));
            this.fk();
            this.requestLayout();
        }
        finally {
            obtainStyledAttributes.recycle();
        }
    }
    
    public static F a(final int n, final int n2, final w w, final float n3) {
        return new F(n != Integer.MIN_VALUE, n, n2, w, n3, (byte)0);
    }
    
    private static w a(final w w, final w w2) {
        return new r(w, w2);
    }
    
    static w a(final w w, final boolean b) {
        if (w != GridLayout.CM) {
            return w;
        }
        if (b) {
            return GridLayout.CR;
        }
        return GridLayout.CW;
    }
    
    private static void a(final C c, final int n, final int n2, final int n3, final int n4) {
        c.a(new B(n, n + n2));
        c.b(new B(n3, n3 + n4));
    }
    
    private void a(final C c, final boolean b) {
        String s;
        if (b) {
            s = "column";
        }
        else {
            s = "row";
        }
        F f;
        if (b) {
            f = c.Ec;
        }
        else {
            f = c.Eb;
        }
        final B db = f.Db;
        if (db.DM != Integer.MIN_VALUE && db.DM < 0) {
            l(s + " indices must be positive");
        }
        y y;
        if (b) {
            y = this.CF;
        }
        else {
            y = this.CG;
        }
        final int df = y.Df;
        if (df != Integer.MIN_VALUE) {
            if (db.max > df) {
                l(s + " indices (start + span) mustn't exceed the " + s + " count");
            }
            if (db.size() > df) {
                l(s + " span mustn't exceed the " + s + " count");
            }
        }
    }
    
    static <T> T[] a(final T[] array, final T[] array2) {
        final Object[] array3 = (Object[])Array.newInstance(array.getClass().getComponentType(), array.length + array2.length);
        System.arraycopy(array, 0, array3, 0, array.length);
        System.arraycopy(array2, 0, array3, array.length, array2.length);
        return (T[])array3;
    }
    
    static C ah(final View view) {
        return (C)view.getLayoutParams();
    }
    
    static boolean au(final int n) {
        return (n & 0x2) != 0x0;
    }
    
    private int b(final View view, final boolean b, final boolean b2) {
        if (this.CI == 1) {
            return this.a(view, b, b2);
        }
        y y;
        if (b) {
            y = this.CF;
        }
        else {
            y = this.CG;
        }
        int[] array;
        if (b2) {
            array = y.fw();
        }
        else {
            array = y.fx();
        }
        final C c = (C)view.getLayoutParams();
        F f;
        if (b) {
            f = c.Ec;
        }
        else {
            f = c.Eb;
        }
        int n;
        if (b2) {
            n = f.Db.DM;
        }
        else {
            n = f.Db.max;
        }
        return array[n];
    }
    
    private void b(final int n, final int n2, final boolean b) {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                final C c = (C)child.getLayoutParams();
                if (b) {
                    this.c(child, n, n2, c.width, c.height);
                    y.a(this.CF, i);
                    y.a(this.CG, i);
                }
                else {
                    final boolean b2 = this.fI == 0;
                    F f;
                    if (b2) {
                        f = c.Ec;
                    }
                    else {
                        f = c.Eb;
                    }
                    if (f.Eg == GridLayout.CX) {
                        final B db = f.Db;
                        y y;
                        if (b2) {
                            y = this.CF;
                        }
                        else {
                            y = this.CG;
                        }
                        final int[] fb = y.fB();
                        final int n3 = fb[db.max] - fb[db.DM] - this.c(child, b2);
                        if (b2) {
                            this.c(child, n, n2, n3, c.height);
                        }
                        else {
                            this.c(child, n, n2, c.width, n3);
                        }
                    }
                }
            }
        }
    }
    
    private int c(final View view, final boolean b) {
        return this.b(view, b, true) + this.b(view, b, false);
    }
    
    static int c(final int[] array) {
        int max = -1;
        for (int i = 0; i < array.length; ++i) {
            max = Math.max(max, array[i]);
        }
        return max;
    }
    
    private void c(final View view, final int n, final int n2, final int n3, final int n4) {
        view.measure(getChildMeasureSpec(n, this.c(view, true), n3), getChildMeasureSpec(n2, this.c(view, false), n4));
    }
    
    private static int d(final View view, final boolean b) {
        if (b) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }
    
    static w f(final int n, final boolean b) {
        int n2;
        if (b) {
            n2 = 7;
        }
        else {
            n2 = 112;
        }
        int n3;
        if (b) {
            n3 = 0;
        }
        else {
            n3 = 4;
        }
        switch ((n2 & n) >> n3) {
            default: {
                return GridLayout.CM;
            }
            case 3: {
                if (b) {
                    return GridLayout.CT;
                }
                return GridLayout.CP;
            }
            case 5: {
                if (b) {
                    return GridLayout.CU;
                }
                return GridLayout.CQ;
            }
            case 7: {
                return GridLayout.CX;
            }
            case 1: {
                return GridLayout.CV;
            }
            case 8388611: {
                return GridLayout.CR;
            }
            case 8388613: {
                return GridLayout.CS;
            }
        }
    }
    
    private boolean fj() {
        return ad.m((View)this) == 1;
    }
    
    private void fk() {
        this.CK = 0;
        if (this.CF != null) {
            this.CF.fk();
        }
        if (this.CG != null) {
            this.CG.fk();
        }
        this.fl();
    }
    
    private void fl() {
        if (this.CF != null && this.CG != null) {
            this.CF.fl();
            this.CG.fl();
        }
    }
    
    private int fm() {
        int n = 1;
        int n2;
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i, n = n2) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                n2 = n * 31 + ((C)child.getLayoutParams()).hashCode();
            }
            else {
                n2 = n;
            }
        }
        return n;
    }
    
    private void fn() {
        while (this.CK != 0) {
            if (this.CK == this.fm()) {
                return;
            }
            this.CL.println("The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec.");
            this.fk();
        }
        boolean b;
        if (this.fI == 0) {
            b = true;
        }
        else {
            b = false;
        }
        y y;
        if (b) {
            y = this.CF;
        }
        else {
            y = this.CG;
        }
        int df;
        if (y.Df != Integer.MIN_VALUE) {
            df = y.Df;
        }
        else {
            df = 0;
        }
        int dm = 0;
        int n = 0;
        final int[] array = new int[df];
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final C c = (C)this.getChildAt(i).getLayoutParams();
            F f;
            if (b) {
                f = c.Eb;
            }
            else {
                f = c.Ec;
            }
            final B db = f.Db;
            final boolean ef = f.Ef;
            final int size = db.size();
            if (ef) {
                dm = db.DM;
            }
            F f2;
            if (b) {
                f2 = c.Ec;
            }
            else {
                f2 = c.Eb;
            }
            final B db2 = f2.Db;
            final boolean ef2 = f2.Ef;
            int n2 = db2.size();
            if (df != 0) {
                int min;
                if (ef2) {
                    min = Math.min(db2.DM, df);
                }
                else {
                    min = 0;
                }
                n2 = Math.min(n2, df - min);
            }
            int dm2;
            if (ef2) {
                dm2 = db2.DM;
            }
            else {
                dm2 = n;
            }
            if (df != 0) {
                if (!ef || !ef2) {
                    while (true) {
                        final int n3 = dm2 + n2;
                        int n4 = 0;
                        Label_0204: {
                            if (n3 > array.length) {
                                n4 = 0;
                            }
                            else {
                                for (int j = dm2; j < n3; ++j) {
                                    if (array[j] > dm) {
                                        n4 = 0;
                                        break Label_0204;
                                    }
                                }
                                n4 = 1;
                            }
                        }
                        if (n4 != 0) {
                            break;
                        }
                        if (ef2) {
                            ++dm;
                        }
                        else if (dm2 + n2 <= df) {
                            ++dm2;
                        }
                        else {
                            ++dm;
                            dm2 = 0;
                        }
                    }
                }
                final int n5 = dm2 + n2;
                final int n6 = dm + size;
                final int length = array.length;
                Arrays.fill(array, Math.min(dm2, length), Math.min(n5, length), n6);
            }
            if (b) {
                a(c, dm, size, dm2, n2);
            }
            else {
                a(c, dm2, n2, dm, size);
            }
            n = dm2 + n2;
        }
        this.CK = this.fm();
    }
    
    public static F fo() {
        return a(Integer.MIN_VALUE, 1, GridLayout.CM, 0.0f);
    }
    
    private static void l(final String s) {
        throw new IllegalArgumentException(s + ". ");
    }
    
    private static int q(final int n, final int n2) {
        return View$MeasureSpec.makeMeasureSpec(View$MeasureSpec.getSize(n + n2), View$MeasureSpec.getMode(n));
    }
    
    final int a(final View view, final boolean b, boolean b2) {
        final C c = (C)view.getLayoutParams();
        int n;
        if (b) {
            if (b2) {
                n = c.leftMargin;
            }
            else {
                n = c.rightMargin;
            }
        }
        else if (b2) {
            n = c.topMargin;
        }
        else {
            n = c.bottomMargin;
        }
        if (n != Integer.MIN_VALUE) {
            return n;
        }
        if (!this.CH) {
            return 0;
        }
        F f;
        if (b) {
            f = c.Ec;
        }
        else {
            f = c.Eb;
        }
        y y;
        if (b) {
            y = this.CF;
        }
        else {
            y = this.CG;
        }
        final B db = f.Db;
        if (b && this.fj()) {
            if (!b2) {
                b2 = true;
            }
            else {
                b2 = false;
            }
        }
        if (b2) {
            if (db.DM != 0) {}
        }
        else {
            final int max = db.max;
            y.getCount();
        }
        if (view.getClass() == U.class) {
            return 0;
        }
        return this.CJ / 2;
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (!(viewGroup$LayoutParams instanceof C)) {
            return false;
        }
        final C c = (C)viewGroup$LayoutParams;
        this.a(c, true);
        this.a(c, false);
        return true;
    }
    
    final int e(final View view, final boolean b) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        return d(view, b) + this.c(view, b);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        this.fn();
        final int n5 = n3 - n;
        final int n6 = n4 - n2;
        final int paddingLeft = this.getPaddingLeft();
        final int paddingTop = this.getPaddingTop();
        final int paddingRight = this.getPaddingRight();
        final int paddingBottom = this.getPaddingBottom();
        this.CF.ax(n5 - paddingLeft - paddingRight);
        this.CG.ax(n6 - paddingTop - paddingBottom);
        final int[] fb = this.CF.fB();
        final int[] fb2 = this.CG.fB();
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                final C c = (C)child.getLayoutParams();
                final F ec = c.Ec;
                final F eb = c.Eb;
                final B db = ec.Db;
                final B db2 = eb.Db;
                final int n7 = fb[db.DM];
                final int n8 = fb2[db2.DM];
                final int n9 = fb[db.max];
                final int n10 = fb2[db2.max];
                final int n11 = n9 - n7;
                final int n12 = n10 - n8;
                final int d = d(child, true);
                final int d2 = d(child, false);
                final w a = a(ec.Eg, true);
                final w a2 = a(eb.Eg, false);
                final A a3 = this.CF.fs().az(i);
                final A a4 = this.CG.fs().az(i);
                final int k = a.k(child, n11 - a3.I(true));
                final int j = a2.k(child, n12 - a4.I(true));
                final int b2 = this.b(child, true, true);
                final int b3 = this.b(child, false, true);
                final int b4 = this.b(child, true, false);
                final int b5 = this.b(child, false, false);
                final int n13 = b2 + b4;
                final int n14 = b3 + b5;
                final int a5 = a3.a(this, child, a, d + n13, true);
                final int a6 = a4.a(this, child, a2, d2 + n14, false);
                final int s = a.s(d, n11 - n13);
                final int s2 = a2.s(d2, n12 - n14);
                final int n15 = a5 + (n7 + k);
                int n16;
                if (!this.fj()) {
                    n16 = n15 + (paddingLeft + b2);
                }
                else {
                    n16 = n5 - s - paddingRight - b4 - n15;
                }
                final int n17 = b3 + (a6 + (j + (paddingTop + n8)));
                if (s != child.getMeasuredWidth() || s2 != child.getMeasuredHeight()) {
                    child.measure(View$MeasureSpec.makeMeasureSpec(s, 1073741824), View$MeasureSpec.makeMeasureSpec(s2, 1073741824));
                }
                child.layout(n16, n17, s + n16, s2 + n17);
            }
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        this.fn();
        this.fl();
        final int n3 = this.getPaddingLeft() + this.getPaddingRight();
        final int n4 = this.getPaddingTop() + this.getPaddingBottom();
        final int q = q(n, -n3);
        final int q2 = q(n2, -n4);
        this.b(q, q2, true);
        int n5;
        int n6;
        if (this.fI == 0) {
            n5 = this.CF.aw(q);
            this.b(q, q2, false);
            n6 = this.CG.aw(q2);
        }
        else {
            n6 = this.CG.aw(q2);
            this.b(q, q2, false);
            n5 = this.CF.aw(q);
        }
        this.setMeasuredDimension(ad.resolveSizeAndState(Math.max(n5 + n3, this.getSuggestedMinimumWidth()), n, 0), ad.resolveSizeAndState(Math.max(n6 + n4, this.getSuggestedMinimumHeight()), n2, 0));
    }
    
    public void requestLayout() {
        super.requestLayout();
        this.fk();
    }
}
