package android.support.v7.widget;

import java.util.*;
import android.content.*;
import android.util.*;
import android.support.v7.b.*;
import android.content.res.*;
import java.lang.reflect.*;
import android.support.v4.view.*;
import android.view.*;

final class y
{
    static final /* synthetic */ boolean vb;
    private D DA;
    private D DB;
    final /* synthetic */ GridLayout DC;
    public final boolean De;
    public int Df;
    private int Dg;
    E<F, A> Dh;
    public boolean Di;
    E<B, D> Dj;
    public boolean Dk;
    E<B, D> Dl;
    public boolean Dm;
    public int[] Dn;
    public boolean Do;
    public int[] Dp;
    public boolean Dq;
    public x[] Dr;
    public boolean Ds;
    public int[] Dt;
    public boolean Du;
    public boolean Dv;
    public boolean Dw;
    public int[] Dx;
    public int[] Dy;
    boolean Dz;
    
    static {
        vb = !GridLayout.class.desiredAssertionStatus();
    }
    
    private y(final GridLayout dc, final boolean de) {
        this.DC = dc;
        this.Df = Integer.MIN_VALUE;
        this.Dg = Integer.MIN_VALUE;
        this.Di = false;
        this.Dk = false;
        this.Dm = false;
        this.Do = false;
        this.Dq = false;
        this.Ds = false;
        this.Du = false;
        this.Dw = false;
        this.Dz = true;
        this.DA = new D(0);
        this.DB = new D(-100000);
        this.De = de;
    }
    
    private E<B, D> K(final boolean b) {
        final GridLayout$Assoc<B, D> a = GridLayout$Assoc.a(B.class, D.class);
        final F[] array = (F[])this.fs().keys;
        for (int length = array.length, i = 0; i < length; ++i) {
            B b2;
            if (b) {
                b2 = array[i].Db;
            }
            else {
                b2 = array[i].Db.fD();
            }
            a.c(b2, new D());
        }
        return a.fq();
    }
    
    private void L(final boolean b) {
        int[] array;
        if (b) {
            array = this.Dn;
        }
        else {
            array = this.Dp;
        }
        for (int childCount = this.DC.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.DC.getChildAt(i);
            if (child.getVisibility() != 8) {
                final GridLayout dc = this.DC;
                final C ah = GridLayout.ah(child);
                F f;
                if (this.De) {
                    f = ah.Ec;
                }
                else {
                    f = ah.Eb;
                }
                final B db = f.Db;
                int n;
                if (b) {
                    n = db.DM;
                }
                else {
                    n = db.max;
                }
                array[n] = Math.max(array[n], this.DC.a(child, this.De, b));
            }
        }
    }
    
    private void a(final E<B, D> e, final boolean b) {
        int i = 0;
        final D[] array = (D[])e.values;
        for (int j = 0; j < array.length; ++j) {
            array[j].reset();
        }
        for (A[] array2 = (A[])this.fs().values; i < array2.length; ++i) {
            int k = array2[i].I(b);
            final D d = e.az(i);
            final int value = d.value;
            if (!b) {
                k = -k;
            }
            d.value = Math.max(value, k);
        }
    }
    
    private static void a(final List<x> list, final B b, final D d) {
        a(list, b, d, true);
    }
    
    private static void a(final List<x> list, final B b, final D d, final boolean b2) {
        if (b.size() == 0) {
            return;
        }
        if (b2) {
            final Iterator<x> iterator = list.iterator();
            while (iterator.hasNext()) {
                if (iterator.next().Db.equals(b)) {
                    return;
                }
            }
        }
        list.add(new x(b, d));
    }
    
    private static void a(final List<x> list, final E<B, D> e) {
        for (int i = 0; i < ((B[])e.keys).length; ++i) {
            a(list, ((B[])e.keys)[i], ((D[])e.values)[i], false);
        }
    }
    
    private void a(final x[] array, final int[] array2) {
        int i = 0;
        String s;
        if (this.De) {
            s = "horizontal";
        }
        else {
            s = "vertical";
        }
        final int n = 1 + this.getCount();
        boolean[] array3 = null;
    Label_0237:
        for (int j = 0; j < array.length; ++j) {
            Arrays.fill(array2, 0);
            int k = 0;
            while (k < n) {
                final int length = array.length;
                int l = 0;
                boolean b = false;
                while (l < length) {
                    b |= a(array2, array[l]);
                    ++l;
                }
                if (!b) {
                    if (array3 != null) {
                        final ArrayList<x> list = new ArrayList<x>();
                        final ArrayList<x> list2 = new ArrayList<x>();
                        while (i < array.length) {
                            final x x = array[i];
                            if (array3[i]) {
                                list.add(x);
                            }
                            if (!x.Dd) {
                                list2.add(x);
                            }
                            ++i;
                        }
                        this.DC.CL.println(s + " constraints: " + this.d(list) + " are inconsistent; permanently removing: " + this.d(list2) + ". ");
                        break Label_0237;
                    }
                    break Label_0237;
                }
                else {
                    ++k;
                }
            }
            final boolean[] array4 = new boolean[array.length];
            for (int n2 = 0; n2 < n; ++n2) {
                for (int length2 = array.length, n3 = 0; n3 < length2; ++n3) {
                    array4[n3] |= a(array2, array[n3]);
                }
            }
            if (j == 0) {
                array3 = array4;
            }
            for (int n4 = 0; n4 < array.length; ++n4) {
                if (array4[n4]) {
                    final x x2 = array[n4];
                    if (x2.Db.DM >= x2.Db.max) {
                        x2.Dd = false;
                        break;
                    }
                }
            }
        }
    }
    
    private static boolean a(final int[] array, final x x) {
        if (x.Dd) {
            final B db = x.Db;
            final int dm = db.DM;
            final int max = db.max;
            final int n = x.Dc.value + array[dm];
            if (n > array[max]) {
                array[max] = n;
                return true;
            }
        }
        return false;
    }
    
    private x[] c(final List<x> list) {
        return new z(this, list.toArray(new x[list.size()])).fC();
    }
    
    private String d(final List<x> list) {
        String s;
        if (this.De) {
            s = "x";
        }
        else {
            s = "y";
        }
        final StringBuilder sb = new StringBuilder();
        final Iterator<x> iterator = list.iterator();
        StringBuilder append = sb;
        int n = 1;
        while (iterator.hasNext()) {
            final x x = iterator.next();
            if (n != 0) {
                n = 0;
            }
            else {
                append = append.append(", ");
            }
            final int dm = x.Db.DM;
            final int max = x.Db.max;
            final int value = x.Dc.value;
            String s2;
            if (dm < max) {
                s2 = s + max + "-" + s + dm + ">=" + value;
            }
            else {
                s2 = s + dm + "-" + s + max + "<=" + -value;
            }
            append.append(s2);
        }
        return append.toString();
    }
    
    private void d(final int[] array) {
        if (this.Dr == null) {
            final ArrayList<x> list = new ArrayList<x>();
            final ArrayList<x> list2 = new ArrayList<x>();
            a(list, this.ft());
            a(list2, this.fu());
            if (this.Dz) {
                for (int i = 0; i < this.getCount(); ++i) {
                    a(list, new B(i, i + 1), new D(0));
                }
            }
            final int count = this.getCount();
            a(list, new B(0, count), this.DA, false);
            a(list2, new B(count, 0), this.DB, false);
            this.Dr = GridLayout.a(this.c(list), this.c(list2));
        }
        if (!this.Ds) {
            this.fv();
            this.Ds = true;
        }
        this.a(this.Dr, array);
    }
    
    private int[] fA() {
        if (this.Dy == null) {
            this.Dy = new int[this.DC.getChildCount()];
        }
        return this.Dy;
    }
    
    private int fr() {
        if (this.Dg == Integer.MIN_VALUE) {
            final int childCount = this.DC.getChildCount();
            int i = 0;
            int max = -1;
            while (i < childCount) {
                final View child = this.DC.getChildAt(i);
                final GridLayout dc = this.DC;
                final C ah = GridLayout.ah(child);
                F f;
                if (this.De) {
                    f = ah.Ec;
                }
                else {
                    f = ah.Eb;
                }
                final B db = f.Db;
                max = Math.max(Math.max(Math.max(max, db.DM), db.max), db.size());
                ++i;
            }
            int n;
            if (max == -1) {
                n = Integer.MIN_VALUE;
            }
            else {
                n = max;
            }
            this.Dg = Math.max(0, n);
        }
        return this.Dg;
    }
    
    private E<B, D> ft() {
        if (this.Dj == null) {
            this.Dj = this.K(true);
        }
        if (!this.Dk) {
            this.a(this.Dj, true);
            this.Dk = true;
        }
        return this.Dj;
    }
    
    private E<B, D> fu() {
        if (this.Dl == null) {
            this.Dl = this.K(false);
        }
        if (!this.Dm) {
            this.a(this.Dl, false);
            this.Dm = true;
        }
        return this.Dl;
    }
    
    private void fv() {
        this.ft();
        this.fu();
    }
    
    private boolean fy() {
        if (!this.Dw) {
            while (true) {
                for (int childCount = this.DC.getChildCount(), i = 0; i < childCount; ++i) {
                    final GridLayout dc = this.DC;
                    final C ah = GridLayout.ah(this.DC.getChildAt(i));
                    F f;
                    if (this.De) {
                        f = ah.Ec;
                    }
                    else {
                        f = ah.Eb;
                    }
                    if (f.weight != 0.0f) {
                        final boolean dv = true;
                        this.Dv = dv;
                        this.Dw = true;
                        return this.Dv;
                    }
                }
                final boolean dv = false;
                continue;
            }
        }
        return this.Dv;
    }
    
    private int[] fz() {
        if (this.Dx == null) {
            this.Dx = new int[this.DC.getChildCount()];
        }
        return this.Dx;
    }
    
    private void t(final int value, final int n) {
        this.DA.value = value;
        this.DB.value = -n;
        this.Du = false;
    }
    
    private int u(final int n, final int n2) {
        this.t(n, n2);
        return this.fB()[this.getCount()];
    }
    
    public final void J(final boolean dz) {
        this.Dz = dz;
        this.fk();
    }
    
    final x[][] a(final x[] array) {
        int i = 0;
        final int n = 1 + this.getCount();
        final x[][] array2 = new x[n][];
        final int[] array3 = new int[n];
        for (int length = array.length, j = 0; j < length; ++j) {
            final int dm = array[j].Db.DM;
            ++array3[dm];
        }
        for (int k = 0; k < array3.length; ++k) {
            array2[k] = new x[array3[k]];
        }
        Arrays.fill(array3, 0);
        while (i < array.length) {
            final x x = array[i];
            final int dm2 = x.Db.DM;
            array2[dm2][array3[dm2]++] = x;
            ++i;
        }
        return array2;
    }
    
    public final void av(final int df) {
        if (df != Integer.MIN_VALUE && df < this.fr()) {
            final StringBuilder sb = new StringBuilder();
            String s;
            if (this.De) {
                s = "column";
            }
            else {
                s = "row";
            }
            l(sb.append(s).append("Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child").toString());
        }
        this.Df = df;
    }
    
    public final int aw(final int n) {
        final int mode = View$MeasureSpec.getMode(n);
        final int size = View$MeasureSpec.getSize(n);
        int u = 0;
        switch (mode) {
            default: {
                final boolean vb = y.vb;
                u = 0;
                if (!vb) {
                    throw new AssertionError();
                }
                break;
            }
            case 0: {
                u = this.u(0, 100000);
                break;
            }
            case 1073741824: {
                return this.u(size, size);
            }
            case Integer.MIN_VALUE: {
                return this.u(0, size);
            }
        }
        return u;
    }
    
    public final void ax(final int n) {
        this.t(n, n);
        this.fB();
    }
    
    public final int[] fB() {
        if (this.Dt == null) {
            this.Dt = new int[1 + this.getCount()];
        }
        if (!this.Du) {
            final int[] dt = this.Dt;
            if (!this.fy()) {
                this.d(dt);
            }
            else {
                Arrays.fill(this.fA(), 0);
                this.d(dt);
                final int childCount = this.DC.getChildCount();
                int i = 0;
                float n = 0.0f;
                int n2 = 0;
                while (i < childCount) {
                    final View child = this.DC.getChildAt(i);
                    final GridLayout dc = this.DC;
                    final C ah = GridLayout.ah(child);
                    F f;
                    if (this.De) {
                        f = ah.Ec;
                    }
                    else {
                        f = ah.Eb;
                    }
                    final float weight = f.weight;
                    float n4;
                    int n5;
                    if (weight != 0.0f) {
                        final GridLayout dc2 = this.DC;
                        final int n3 = n2 + (d(child, this.De) - this.fz()[i]);
                        n4 = weight + n;
                        n5 = n3;
                    }
                    else {
                        n4 = n;
                        n5 = n2;
                    }
                    ++i;
                    n2 = n5;
                    n = n4;
                }
                float n7;
                int n8;
                for (int childCount2 = this.DC.getChildCount(), j = 0; j < childCount2; ++j, n2 = n8, n = n7) {
                    final GridLayout dc3 = this.DC;
                    final C ah2 = GridLayout.ah(this.DC.getChildAt(j));
                    F f2;
                    if (this.De) {
                        f2 = ah2.Ec;
                    }
                    else {
                        f2 = ah2.Eb;
                    }
                    final float weight2 = f2.weight;
                    if (weight2 != 0.0f) {
                        final int round = Math.round(weight2 * n2 / n);
                        this.Dy[j] = round;
                        final int n6 = n2 - round;
                        n7 = n - weight2;
                        n8 = n6;
                    }
                    else {
                        n7 = n;
                        n8 = n2;
                    }
                }
                this.Ds = false;
                this.Dk = false;
                this.Dm = false;
                this.Di = false;
                this.d(dt);
            }
            if (!this.Dz) {
                final int n9 = dt[0];
                for (int length = dt.length, k = 0; k < length; ++k) {
                    dt[k] -= n9;
                }
            }
            this.Du = true;
        }
        return this.Dt;
    }
    
    public final void fk() {
        this.Dg = Integer.MIN_VALUE;
        this.Dh = null;
        this.Dj = null;
        this.Dl = null;
        this.Dn = null;
        this.Dp = null;
        this.Dr = null;
        this.Dt = null;
        this.Dx = null;
        this.Dy = null;
        this.Dw = false;
        this.fl();
    }
    
    public final void fl() {
        this.Di = false;
        this.Dk = false;
        this.Dm = false;
        this.Do = false;
        this.Dq = false;
        this.Ds = false;
        this.Du = false;
    }
    
    public final E<F, A> fs() {
        if (this.Dh == null) {
            final GridLayout$Assoc<F, A> a = GridLayout$Assoc.a(F.class, A.class);
            for (int childCount = this.DC.getChildCount(), i = 0; i < childCount; ++i) {
                final View child = this.DC.getChildAt(i);
                final GridLayout dc = this.DC;
                final C ah = GridLayout.ah(child);
                F f;
                if (this.De) {
                    f = ah.Ec;
                }
                else {
                    f = ah.Eb;
                }
                final GridLayout dc2 = this.DC;
                a.c(f, GridLayout.a(f.Eg, this.De).fp());
            }
            this.Dh = a.fq();
        }
        if (!this.Di) {
            final A[] array = (A[])this.Dh.values;
            for (int j = 0; j < array.length; ++j) {
                array[j].reset();
            }
            for (int childCount2 = this.DC.getChildCount(), k = 0; k < childCount2; ++k) {
                final View child2 = this.DC.getChildAt(k);
                final GridLayout dc3 = this.DC;
                final C ah2 = GridLayout.ah(child2);
                F f2;
                if (this.De) {
                    f2 = ah2.Ec;
                }
                else {
                    f2 = ah2.Eb;
                }
                int e;
                if (f2.weight == 0.0f) {
                    e = this.DC.e(child2, this.De);
                }
                else {
                    e = this.fz()[k] + this.fA()[k];
                }
                this.Dh.az(k).a(this.DC, child2, f2, this, e);
            }
            this.Di = true;
        }
        return this.Dh;
    }
    
    public final int[] fw() {
        if (this.Dn == null) {
            this.Dn = new int[1 + this.getCount()];
        }
        if (!this.Do) {
            this.L(true);
            this.Do = true;
        }
        return this.Dn;
    }
    
    public final int[] fx() {
        if (this.Dp == null) {
            this.Dp = new int[1 + this.getCount()];
        }
        if (!this.Dq) {
            this.L(false);
            this.Dq = true;
        }
        return this.Dp;
    }
    
    public final int getCount() {
        return Math.max(this.Df, this.fr());
    }
}
