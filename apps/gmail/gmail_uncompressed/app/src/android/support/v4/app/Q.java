package android.support.v4.app;

import android.content.*;
import java.io.*;
import android.app.*;
import android.view.animation.*;
import android.view.*;
import java.util.*;
import android.util.*;
import android.content.res.*;
import android.os.*;
import android.support.v4.f.*;

final class q extends p implements LayoutInflater$Factory
{
    static boolean DEBUG;
    static final boolean bA;
    static final Interpolator bW;
    static final Interpolator bX;
    static final Interpolator bY;
    static final Interpolator bZ;
    k aG;
    ArrayList<Runnable> bB;
    Runnable[] bC;
    boolean bD;
    ArrayList<Fragment> bE;
    ArrayList<Fragment> bF;
    ArrayList<Integer> bG;
    ArrayList<a> bH;
    ArrayList<Fragment> bI;
    ArrayList<a> bJ;
    ArrayList<Integer> bK;
    ArrayList bL;
    int bM;
    Fragment bN;
    boolean bO;
    boolean bP;
    boolean bQ;
    String bR;
    boolean bS;
    Bundle bT;
    SparseArray<Parcelable> bU;
    Runnable bV;
    o bo;
    
    static {
        q.DEBUG = false;
        final int sdk_INT = Build$VERSION.SDK_INT;
        boolean ba = false;
        if (sdk_INT >= 11) {
            ba = true;
        }
        bA = ba;
        bW = (Interpolator)new DecelerateInterpolator(2.5f);
        bX = (Interpolator)new DecelerateInterpolator(1.5f);
        bY = (Interpolator)new AccelerateInterpolator(2.5f);
        bZ = (Interpolator)new AccelerateInterpolator(1.5f);
    }
    
    q() {
        this.bM = 0;
        this.bT = null;
        this.bU = null;
        this.bV = new r(this);
    }
    
    private void K() {
        if (this.bP) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.bR != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.bR);
        }
    }
    
    private void M() {
        if (this.bL != null) {
            for (int i = 0; i < this.bL.size(); ++i) {
                this.bL.get(i);
            }
        }
    }
    
    private Fragment a(final Bundle bundle, final String s) {
        final int int1 = bundle.getInt(s, -1);
        Fragment fragment;
        if (int1 == -1) {
            fragment = null;
        }
        else {
            if (int1 >= this.bE.size()) {
                this.a(new IllegalStateException("Fragment no longer exists for key " + s + ": index " + int1));
            }
            fragment = this.bE.get(int1);
            if (fragment == null) {
                this.a(new IllegalStateException("Fragment no longer exists for key " + s + ": index " + int1));
                return fragment;
            }
        }
        return fragment;
    }
    
    private static Animation a(final float n, final float n2) {
        final AlphaAnimation alphaAnimation = new AlphaAnimation(n, n2);
        alphaAnimation.setInterpolator(q.bX);
        alphaAnimation.setDuration(220L);
        return (Animation)alphaAnimation;
    }
    
    private static Animation a(final float n, final float n2, final float n3, final float n4) {
        final AnimationSet set = new AnimationSet(false);
        final ScaleAnimation scaleAnimation = new ScaleAnimation(n, n2, n, n2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(q.bW);
        scaleAnimation.setDuration(220L);
        set.addAnimation((Animation)scaleAnimation);
        final AlphaAnimation alphaAnimation = new AlphaAnimation(n3, n4);
        alphaAnimation.setInterpolator(q.bX);
        alphaAnimation.setDuration(220L);
        set.addAnimation((Animation)alphaAnimation);
        return (Animation)set;
    }
    
    private Animation a(final Fragment fragment, final int n, final boolean b, int windowAnimations) {
        final int as = fragment.aS;
        Fragment.j();
        if (fragment.aS != 0) {
            final Animation loadAnimation = AnimationUtils.loadAnimation((Context)this.aG, fragment.aS);
            if (loadAnimation != null) {
                return loadAnimation;
            }
        }
        if (n == 0) {
            return null;
        }
        int n2 = -1;
        switch (n) {
            case 4097: {
                if (b) {
                    n2 = 1;
                    break;
                }
                n2 = 2;
                break;
            }
            case 8194: {
                if (b) {
                    n2 = 3;
                    break;
                }
                n2 = 4;
                break;
            }
            case 4099: {
                if (b) {
                    n2 = 5;
                    break;
                }
                n2 = 6;
                break;
            }
        }
        if (n2 < 0) {
            return null;
        }
        switch (n2) {
            default: {
                if (windowAnimations == 0 && this.aG.getWindow() != null) {
                    windowAnimations = this.aG.getWindow().getAttributes().windowAnimations;
                }
                if (windowAnimations == 0) {
                    return null;
                }
                return null;
            }
            case 1: {
                final k ag = this.aG;
                return a(1.125f, 1.0f, 0.0f, 1.0f);
            }
            case 2: {
                final k ag2 = this.aG;
                return a(1.0f, 0.975f, 1.0f, 0.0f);
            }
            case 3: {
                final k ag3 = this.aG;
                return a(0.975f, 1.0f, 0.0f, 1.0f);
            }
            case 4: {
                final k ag4 = this.aG;
                return a(1.0f, 1.075f, 1.0f, 0.0f);
            }
            case 5: {
                final k ag5 = this.aG;
                return a(0.0f, 1.0f);
            }
            case 6: {
                final k ag6 = this.aG;
                return a(1.0f, 0.0f);
            }
        }
    }
    
    private void a(final int n, final a a) {
        synchronized (this) {
            if (this.bJ == null) {
                this.bJ = new ArrayList<a>();
            }
            int i = this.bJ.size();
            if (n < i) {
                if (q.DEBUG) {
                    Log.v("FragmentManager", "Setting back stack index " + n + " to " + a);
                }
                this.bJ.set(n, a);
            }
            else {
                while (i < n) {
                    this.bJ.add(null);
                    if (this.bK == null) {
                        this.bK = new ArrayList<Integer>();
                    }
                    if (q.DEBUG) {
                        Log.v("FragmentManager", "Adding available back stack index " + i);
                    }
                    this.bK.add(i);
                    ++i;
                }
                if (q.DEBUG) {
                    Log.v("FragmentManager", "Adding back stack index " + n + " with " + a);
                }
                this.bJ.add(a);
            }
        }
    }
    
    private void a(final RuntimeException ex) {
        Log.e("FragmentManager", ex.getMessage());
        Log.e("FragmentManager", "Activity state:");
        final PrintWriter printWriter = new PrintWriter(new e("FragmentManager"));
        while (true) {
            Label_0079: {
                if (this.aG == null) {
                    break Label_0079;
                }
                try {
                    this.aG.dump("  ", null, printWriter, new String[0]);
                    throw ex;
                }
                catch (Exception ex2) {
                    Log.e("FragmentManager", "Failed dumping state", (Throwable)ex2);
                    throw ex;
                }
                try {
                    this.dump("  ", null, printWriter, new String[0]);
                    continue;
                }
                catch (Exception ex3) {
                    Log.e("FragmentManager", "Failed dumping state", (Throwable)ex3);
                    continue;
                }
            }
            continue;
        }
    }
    
    private void c(final int n) {
        this.a(n, 0, 0, false);
    }
    
    private Fragment d(final int n) {
        if (this.bF != null) {
            for (int i = -1 + this.bF.size(); i >= 0; --i) {
                final Fragment fragment = this.bF.get(i);
                if (fragment != null && fragment.aJ == n) {
                    return fragment;
                }
            }
        }
        Label_0056: {
            break Label_0056;
        }
        if (this.bE != null) {
            for (int j = -1 + this.bE.size(); j >= 0; --j) {
                final Fragment fragment = this.bE.get(j);
                if (fragment != null && fragment.aJ == n) {
                    return fragment;
                }
            }
        }
        return null;
    }
    
    private void d(final Fragment fragment) {
        this.a(fragment, this.bM, 0, 0, false);
    }
    
    private void e(final Fragment fragment) {
        if (fragment.aV != null) {
            if (this.bU == null) {
                this.bU = (SparseArray<Parcelable>)new SparseArray();
            }
            else {
                this.bU.clear();
            }
            fragment.aV.saveHierarchyState((SparseArray)this.bU);
            if (this.bU.size() > 0) {
                fragment.as = this.bU;
                this.bU = null;
            }
        }
    }
    
    public static int f(final int n) {
        switch (n) {
            default: {
                return 0;
            }
            case 4097: {
                return 8194;
            }
            case 8194: {
                return 4097;
            }
            case 4099: {
                return 4099;
            }
        }
    }
    
    @Override
    public final z H() {
        return new a(this);
    }
    
    @Override
    public final List<Fragment> I() {
        return this.bE;
    }
    
    final void J() {
        if (this.bE != null) {
            for (int i = 0; i < this.bE.size(); ++i) {
                final Fragment fragment = this.bE.get(i);
                if (fragment != null && fragment.aW) {
                    if (this.bD) {
                        this.bS = true;
                    }
                    else {
                        fragment.aW = false;
                        this.a(fragment, this.bM, 0, 0, false);
                    }
                }
            }
        }
    }
    
    public final boolean L() {
        if (this.bD) {
            throw new IllegalStateException("Recursive entry to executePendingTransactions");
        }
        if (Looper.myLooper() != this.aG.mHandler.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of process");
        }
        boolean b = false;
        while (true) {
            boolean b2 = false;
            Label_0262: {
                synchronized (this) {
                    if (this.bB == null || this.bB.size() == 0) {
                        // monitorexit(this)
                        if (this.bS) {
                            int i = 0;
                            b2 = false;
                            while (i < this.bE.size()) {
                                final Fragment fragment = this.bE.get(i);
                                if (fragment != null && fragment.aY != null) {
                                    b2 |= fragment.aY.Z();
                                }
                                ++i;
                            }
                            break Label_0262;
                        }
                        break;
                    }
                    else {
                        final int size = this.bB.size();
                        if (this.bC == null || this.bC.length < size) {
                            this.bC = new Runnable[size];
                        }
                        this.bB.toArray(this.bC);
                        this.bB.clear();
                        this.aG.mHandler.removeCallbacks(this.bV);
                        // monitorexit(this)
                        this.bD = true;
                        for (int j = 0; j < size; ++j) {
                            this.bC[j].run();
                            this.bC[j] = null;
                        }
                    }
                }
                this.bD = false;
                b = true;
                continue;
            }
            if (!b2) {
                this.bS = false;
                this.J();
                break;
            }
            break;
        }
        return b;
    }
    
    final ArrayList<Fragment> N() {
        final ArrayList<Fragment> be = this.bE;
        ArrayList<Fragment> list = null;
        if (be != null) {
            for (int i = 0; i < this.bE.size(); ++i) {
                final Fragment fragment = this.bE.get(i);
                if (fragment != null && fragment.aN) {
                    if (list == null) {
                        list = new ArrayList<Fragment>();
                    }
                    list.add(fragment);
                    fragment.aO = true;
                    int y;
                    if (fragment.av != null) {
                        y = fragment.av.y;
                    }
                    else {
                        y = -1;
                    }
                    fragment.aw = y;
                    if (q.DEBUG) {
                        Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                    }
                }
            }
        }
        return list;
    }
    
    final Parcelable O() {
        this.L();
        if (q.bA) {
            this.bP = true;
        }
        if (this.bE != null && this.bE.size() > 0) {
            final int size = this.bE.size();
            final FragmentState[] cf = new FragmentState[size];
            int i = 0;
            int n = 0;
            while (i < size) {
                final Fragment fragment = this.bE.get(i);
                int n2;
                if (fragment != null) {
                    if (fragment.y < 0) {
                        this.a(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.y));
                    }
                    final FragmentState fragmentState = new FragmentState(fragment);
                    cf[i] = fragmentState;
                    if (fragment.ao > 0 && fragmentState.ar == null) {
                        if (this.bT == null) {
                            this.bT = new Bundle();
                        }
                        fragment.d(this.bT);
                        Bundle bt;
                        if (!this.bT.isEmpty()) {
                            bt = this.bT;
                            this.bT = null;
                        }
                        else {
                            bt = null;
                        }
                        if (fragment.aU != null) {
                            this.e(fragment);
                        }
                        if (fragment.as != null) {
                            if (bt == null) {
                                bt = new Bundle();
                            }
                            bt.putSparseParcelableArray("android:view_state", (SparseArray)fragment.as);
                        }
                        if (!fragment.aX) {
                            if (bt == null) {
                                bt = new Bundle();
                            }
                            bt.putBoolean("android:user_visible_hint", fragment.aX);
                        }
                        fragmentState.ar = bt;
                        if (fragment.av != null) {
                            if (fragment.av.y < 0) {
                                this.a(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.av));
                            }
                            if (fragmentState.ar == null) {
                                fragmentState.ar = new Bundle();
                            }
                            final Bundle ar = fragmentState.ar;
                            final Fragment av = fragment.av;
                            if (av.y < 0) {
                                this.a(new IllegalStateException("Fragment " + av + " is not currently in the FragmentManager"));
                            }
                            ar.putInt("android:target_state", av.y);
                            if (fragment.ax != 0) {
                                fragmentState.ar.putInt("android:target_req_state", fragment.ax);
                            }
                        }
                    }
                    else {
                        fragmentState.ar = fragment.ar;
                    }
                    if (q.DEBUG) {
                        Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.ar);
                    }
                    n2 = 1;
                }
                else {
                    n2 = n;
                }
                ++i;
                n = n2;
            }
            if (n != 0) {
                int[] cg = null;
                Label_0742: {
                    if (this.bF != null) {
                        final int size2 = this.bF.size();
                        if (size2 > 0) {
                            cg = new int[size2];
                            for (int j = 0; j < size2; ++j) {
                                cg[j] = this.bF.get(j).y;
                                if (cg[j] < 0) {
                                    this.a(new IllegalStateException("Failure saving state: active " + this.bF.get(j) + " has cleared index: " + cg[j]));
                                }
                                if (q.DEBUG) {
                                    Log.v("FragmentManager", "saveAllState: adding fragment #" + j + ": " + this.bF.get(j));
                                }
                            }
                            break Label_0742;
                        }
                    }
                    cg = null;
                }
                final ArrayList<a> bh = this.bH;
                BackStackState[] ch = null;
                if (bh != null) {
                    final int size3 = this.bH.size();
                    ch = null;
                    if (size3 > 0) {
                        ch = new BackStackState[size3];
                        for (int k = 0; k < size3; ++k) {
                            ch[k] = new BackStackState(this.bH.get(k));
                            if (q.DEBUG) {
                                Log.v("FragmentManager", "saveAllState: adding back stack #" + k + ": " + this.bH.get(k));
                            }
                        }
                    }
                }
                final FragmentManagerState fragmentManagerState = new FragmentManagerState();
                fragmentManagerState.cf = cf;
                fragmentManagerState.cg = cg;
                fragmentManagerState.ch = ch;
                return (Parcelable)fragmentManagerState;
            }
            if (q.DEBUG) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
                return null;
            }
        }
        return null;
    }
    
    public final void P() {
        this.bP = false;
    }
    
    public final void Q() {
        this.bP = false;
        this.c(1);
    }
    
    public final void R() {
        this.bP = false;
        this.c(2);
    }
    
    public final void S() {
        this.bP = false;
        this.c(4);
    }
    
    public final void T() {
        this.c(4);
    }
    
    public final void U() {
        this.c(2);
    }
    
    public final void V() {
        this.c(1);
    }
    
    public final void W() {
        this.bQ = true;
        this.L();
        this.c(0);
        this.aG = null;
        this.bo = null;
        this.bN = null;
    }
    
    public final void X() {
        if (this.bF != null) {
            for (int i = 0; i < this.bF.size(); ++i) {
                final Fragment fragment = this.bF.get(i);
                if (fragment != null) {
                    fragment.v();
                }
            }
        }
    }
    
    final LayoutInflater$Factory Y() {
        return (LayoutInflater$Factory)this;
    }
    
    public final int a(final a a) {
        synchronized (this) {
            if (this.bK == null || this.bK.size() <= 0) {
                if (this.bJ == null) {
                    this.bJ = new ArrayList<a>();
                }
                final int size = this.bJ.size();
                if (q.DEBUG) {
                    Log.v("FragmentManager", "Setting back stack index " + size + " to " + a);
                }
                this.bJ.add(a);
                return size;
            }
            final int intValue = this.bK.remove(-1 + this.bK.size());
            if (q.DEBUG) {
                Log.v("FragmentManager", "Adding back stack index " + intValue + " with " + a);
            }
            this.bJ.set(intValue, a);
            return intValue;
        }
    }
    
    final void a(final int bm, final int n, final int n2, final boolean b) {
        if (this.aG == null && bm != 0) {
            throw new IllegalStateException("No activity");
        }
        if (b || this.bM != bm) {
            this.bM = bm;
            if (this.bE != null) {
                int i = 0;
                boolean b2 = false;
            Label_0116_Outer:
                while (i < this.bE.size()) {
                    final Fragment fragment = this.bE.get(i);
                    while (true) {
                        Label_0170: {
                            if (fragment == null) {
                                break Label_0170;
                            }
                            this.a(fragment, bm, n, n2, false);
                            if (fragment.aY == null) {
                                break Label_0170;
                            }
                            final boolean b3 = b2 | fragment.aY.Z();
                            ++i;
                            b2 = b3;
                            continue Label_0116_Outer;
                        }
                        final boolean b3 = b2;
                        continue;
                    }
                }
                if (!b2) {
                    this.J();
                }
                if (this.bO && this.aG != null && this.bM == 5) {
                    this.aG.D();
                    this.bO = false;
                }
            }
        }
    }
    
    final void a(final Parcelable parcelable, final ArrayList<Fragment> list) {
        if (parcelable != null) {
            final FragmentManagerState fragmentManagerState = (FragmentManagerState)parcelable;
            if (fragmentManagerState.cf != null) {
                if (list != null) {
                    for (int i = 0; i < list.size(); ++i) {
                        final Fragment cj = list.get(i);
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + cj);
                        }
                        final FragmentState fragmentState = fragmentManagerState.cf[cj.y];
                        fragmentState.cj = cj;
                        cj.as = null;
                        cj.aE = 0;
                        cj.aC = false;
                        cj.ay = false;
                        cj.av = null;
                        if (fragmentState.ar != null) {
                            fragmentState.ar.setClassLoader(this.aG.getClassLoader());
                            cj.as = (SparseArray<Parcelable>)fragmentState.ar.getSparseParcelableArray("android:view_state");
                            cj.ar = fragmentState.ar;
                        }
                    }
                }
                this.bE = new ArrayList<Fragment>(fragmentManagerState.cf.length);
                if (this.bG != null) {
                    this.bG.clear();
                }
                for (int j = 0; j < fragmentManagerState.cf.length; ++j) {
                    final FragmentState fragmentState2 = fragmentManagerState.cf[j];
                    if (fragmentState2 != null) {
                        final Fragment a = fragmentState2.a(this.aG, this.bN);
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "restoreAllState: active #" + j + ": " + a);
                        }
                        this.bE.add(a);
                        fragmentState2.cj = null;
                    }
                    else {
                        this.bE.add(null);
                        if (this.bG == null) {
                            this.bG = new ArrayList<Integer>();
                        }
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "restoreAllState: avail #" + j);
                        }
                        this.bG.add(j);
                    }
                }
                if (list != null) {
                    for (int k = 0; k < list.size(); ++k) {
                        final Fragment fragment = list.get(k);
                        if (fragment.aw >= 0) {
                            if (fragment.aw < this.bE.size()) {
                                fragment.av = this.bE.get(fragment.aw);
                            }
                            else {
                                Log.w("FragmentManager", "Re-attaching retained fragment " + fragment + " target no longer exists: " + fragment.aw);
                                fragment.av = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.cg != null) {
                    this.bF = new ArrayList<Fragment>(fragmentManagerState.cg.length);
                    for (int l = 0; l < fragmentManagerState.cg.length; ++l) {
                        final Fragment fragment2 = this.bE.get(fragmentManagerState.cg[l]);
                        if (fragment2 == null) {
                            this.a(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.cg[l]));
                        }
                        fragment2.ay = true;
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "restoreAllState: added #" + l + ": " + fragment2);
                        }
                        if (this.bF.contains(fragment2)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.bF.add(fragment2);
                    }
                }
                else {
                    this.bF = null;
                }
                if (fragmentManagerState.ch == null) {
                    this.bH = null;
                    return;
                }
                this.bH = new ArrayList<a>(fragmentManagerState.ch.length);
                for (int n = 0; n < fragmentManagerState.ch.length; ++n) {
                    final a a2 = fragmentManagerState.ch[n].a(this);
                    if (q.DEBUG) {
                        Log.v("FragmentManager", "restoreAllState: back stack #" + n + " (index " + a2.y + "): " + a2);
                        a2.a("  ", new PrintWriter(new e("FragmentManager")), false);
                    }
                    this.bH.add(a2);
                    if (a2.y >= 0) {
                        this.a(a2.y, a2);
                    }
                }
            }
        }
    }
    
    public final void a(final Fragment fragment, final int n, final int n2) {
        if (q.DEBUG) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.aE);
        }
        boolean b;
        if (!fragment.e()) {
            b = true;
        }
        else {
            b = false;
        }
        if (!fragment.aM || b) {
            if (this.bF != null) {
                this.bF.remove(fragment);
            }
            if (fragment.aP && fragment.aQ) {
                this.bO = true;
            }
            fragment.ay = false;
            fragment.az = true;
            int n3;
            if (b) {
                n3 = 0;
            }
            else {
                n3 = 1;
            }
            this.a(fragment, n3, n, n2, false);
        }
    }
    
    final void a(final Fragment fragment, int ao, final int n, final int n2, final boolean b) {
        if ((!fragment.ay || fragment.aM) && ao > 1) {
            ao = 1;
        }
        if (fragment.az && ao > fragment.ao) {
            ao = fragment.ao;
        }
        if (fragment.aW && fragment.ao < 4 && ao > 3) {
            ao = 3;
        }
        if (fragment.ao < ao) {
            if (fragment.aB && !fragment.aC) {
                return;
            }
            if (fragment.ap != null) {
                fragment.ap = null;
                this.a(fragment, fragment.aq, 0, 0, true);
            }
            Label_0513: {
                switch (fragment.ao) {
                    case 0: {
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "moveto CREATED: " + fragment);
                        }
                        if (fragment.ar != null) {
                            fragment.ar.setClassLoader(this.aG.getClassLoader());
                            fragment.as = (SparseArray<Parcelable>)fragment.ar.getSparseParcelableArray("android:view_state");
                            fragment.av = this.a(fragment.ar, "android:target_state");
                            if (fragment.av != null) {
                                fragment.ax = fragment.ar.getInt("android:target_req_state", 0);
                            }
                            if (!(fragment.aX = fragment.ar.getBoolean("android:user_visible_hint", true))) {
                                fragment.aW = true;
                                if (ao > 3) {
                                    ao = 3;
                                }
                            }
                        }
                        fragment.aG = this.aG;
                        fragment.aI = this.bN;
                        q af;
                        if (this.bN != null) {
                            af = this.bN.aH;
                        }
                        else {
                            af = this.aG.bn;
                        }
                        fragment.aF = af;
                        fragment.aR = false;
                        fragment.onAttach(this.aG);
                        if (!fragment.aR) {
                            throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onAttach()");
                        }
                        if (fragment.aI == null) {
                            final k ag = this.aG;
                            k.E();
                        }
                        if (!fragment.aO) {
                            fragment.b(fragment.ar);
                        }
                        fragment.aO = false;
                        if (!fragment.aB) {
                            break Label_0513;
                        }
                        final LayoutInflater a = fragment.a(fragment.ar);
                        final Bundle ar = fragment.ar;
                        fragment.aU = fragment.b(a, null);
                        if (fragment.aU != null) {
                            fragment.aV = fragment.aU;
                            fragment.aU = (View)S.d(fragment.aU);
                            if (fragment.aL) {
                                fragment.aU.setVisibility(8);
                            }
                            final View au = fragment.aU;
                            final Bundle ar2 = fragment.ar;
                            Fragment.k();
                            break Label_0513;
                        }
                        fragment.aV = null;
                        break Label_0513;
                    }
                    case 1: {
                        if (ao > 1) {
                            if (q.DEBUG) {
                                Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
                            }
                            if (!fragment.aB) {
                                ViewGroup at;
                                if (fragment.d != 0) {
                                    at = (ViewGroup)this.bo.findViewById(fragment.d);
                                    if (at == null && !fragment.aD) {
                                        this.a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.d) + " (" + fragment.getResources().getResourceName(fragment.d) + ") for fragment " + fragment));
                                    }
                                }
                                else {
                                    at = null;
                                }
                                fragment.aT = at;
                                final LayoutInflater a2 = fragment.a(fragment.ar);
                                final Bundle ar3 = fragment.ar;
                                fragment.aU = fragment.b(a2, at);
                                if (fragment.aU != null) {
                                    fragment.aV = fragment.aU;
                                    fragment.aU = (View)S.d(fragment.aU);
                                    if (at != null) {
                                        final Animation a3 = this.a(fragment, n, true, n2);
                                        if (a3 != null) {
                                            fragment.aU.startAnimation(a3);
                                        }
                                        at.addView(fragment.aU);
                                    }
                                    if (fragment.aL) {
                                        fragment.aU.setVisibility(8);
                                    }
                                    final View au2 = fragment.aU;
                                    final Bundle ar4 = fragment.ar;
                                    Fragment.k();
                                }
                                else {
                                    fragment.aV = null;
                                }
                            }
                            fragment.c(fragment.ar);
                            if (fragment.aU != null) {
                                final Bundle ar5 = fragment.ar;
                                fragment.d();
                            }
                            fragment.ar = null;
                        }
                    }
                    case 2:
                    case 3: {
                        if (ao > 3) {
                            if (q.DEBUG) {
                                Log.v("FragmentManager", "moveto STARTED: " + fragment);
                            }
                            fragment.t();
                        }
                    }
                    case 4: {
                        if (ao > 4) {
                            if (q.DEBUG) {
                                Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                            }
                            fragment.aA = true;
                            fragment.u();
                            fragment.ar = null;
                            fragment.as = null;
                            break;
                        }
                        break;
                    }
                }
            }
        }
        else if (fragment.ao > ao) {
            switch (fragment.ao) {
                case 3: {
                    if (ao < 3) {
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "movefrom STOPPED: " + fragment);
                        }
                        fragment.y();
                    }
                }
                case 2: {
                    if (ao < 2) {
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        if (fragment.aU != null && !this.aG.isFinishing() && fragment.as == null) {
                            this.e(fragment);
                        }
                        fragment.z();
                        if (fragment.aU != null && fragment.aT != null) {
                            Animation a4;
                            if (this.bM > 0 && !this.bQ) {
                                a4 = this.a(fragment, n, false, n2);
                            }
                            else {
                                a4 = null;
                            }
                            if (a4 != null) {
                                fragment.ap = fragment.aU;
                                fragment.aq = ao;
                                a4.setAnimationListener((Animation$AnimationListener)new t(this, fragment));
                                fragment.aU.startAnimation(a4);
                            }
                            fragment.aT.removeView(fragment.aU);
                        }
                        fragment.aT = null;
                        fragment.aU = null;
                        fragment.aV = null;
                    }
                }
                case 1: {
                    if (ao > 0) {
                        break;
                    }
                    if (this.bQ && fragment.ap != null) {
                        final View ap = fragment.ap;
                        fragment.ap = null;
                        ap.clearAnimation();
                    }
                    if (fragment.ap != null) {
                        fragment.aq = ao;
                        ao = 1;
                        break;
                    }
                    if (q.DEBUG) {
                        Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                    }
                    if (!fragment.aO) {
                        fragment.A();
                    }
                    fragment.aR = false;
                    fragment.onDetach();
                    if (!fragment.aR) {
                        throw new SuperNotCalledException("Fragment " + fragment + " did not call through to super.onDetach()");
                    }
                    if (b) {
                        break;
                    }
                    if (fragment.aO) {
                        fragment.aG = null;
                        fragment.aI = null;
                        fragment.aF = null;
                        fragment.aH = null;
                        break;
                    }
                    if (fragment.y >= 0) {
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "Freeing fragment index " + fragment);
                        }
                        this.bE.set(fragment.y, null);
                        if (this.bG == null) {
                            this.bG = new ArrayList<Integer>();
                        }
                        this.bG.add(fragment.y);
                        this.aG.a(fragment.at);
                        fragment.l();
                        break;
                    }
                    break;
                }
                case 5: {
                    if (ao < 5) {
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "movefrom RESUMED: " + fragment);
                        }
                        fragment.w();
                        fragment.aA = false;
                    }
                }
                case 4: {
                    if (ao < 4) {
                        if (q.DEBUG) {
                            Log.v("FragmentManager", "movefrom STARTED: " + fragment);
                        }
                        fragment.x();
                    }
                }
            }
        }
        fragment.ao = ao;
    }
    
    public final void a(final Fragment fragment, final boolean b) {
        if (this.bF == null) {
            this.bF = new ArrayList<Fragment>();
        }
        if (q.DEBUG) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        if (fragment.y < 0) {
            if (this.bG == null || this.bG.size() <= 0) {
                if (this.bE == null) {
                    this.bE = new ArrayList<Fragment>();
                }
                fragment.a(this.bE.size(), this.bN);
                this.bE.add(fragment);
            }
            else {
                fragment.a(this.bG.remove(-1 + this.bG.size()), this.bN);
                this.bE.set(fragment.y, fragment);
            }
            if (q.DEBUG) {
                Log.v("FragmentManager", "Allocated fragment index " + fragment);
            }
        }
        if (!fragment.aM) {
            if (this.bF.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.bF.add(fragment);
            fragment.ay = true;
            fragment.az = false;
            if (fragment.aP && fragment.aQ) {
                this.bO = true;
            }
            if (b) {
                this.d(fragment);
            }
        }
    }
    
    public final void a(final k ag, final o bo, final Fragment bn) {
        if (this.aG != null) {
            throw new IllegalStateException("Already attached");
        }
        this.aG = ag;
        this.bo = bo;
        this.bN = bn;
    }
    
    public final void a(final Runnable runnable, final boolean b) {
        if (!b) {
            this.K();
        }
        synchronized (this) {
            if (this.bQ || this.aG == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
        if (this.bB == null) {
            this.bB = new ArrayList<Runnable>();
        }
        this.bB.add(runnable);
        if (this.bB.size() == 1) {
            this.aG.mHandler.removeCallbacks(this.bV);
            this.aG.mHandler.post(this.bV);
        }
    }
    // monitorexit(this)
    
    @Override
    public final Fragment b(final String s) {
        if (this.bF != null && s != null) {
            for (int i = -1 + this.bF.size(); i >= 0; --i) {
                final Fragment fragment = this.bF.get(i);
                if (fragment != null && s.equals(fragment.aK)) {
                    return fragment;
                }
            }
        }
        Label_0063: {
            break Label_0063;
        }
        if (this.bE != null && s != null) {
            for (int j = -1 + this.bE.size(); j >= 0; --j) {
                final Fragment fragment = this.bE.get(j);
                if (fragment != null && s.equals(fragment.aK)) {
                    return fragment;
                }
            }
        }
        return null;
    }
    
    @Override
    public final void b(final int n) {
        if (n < 0) {
            throw new IllegalArgumentException("Bad id: " + n);
        }
        this.a(new s(this, n, 1), false);
    }
    
    public final void b(final Fragment fragment, final int n, final int n2) {
        if (q.DEBUG) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.aL) {
            fragment.aL = true;
            if (fragment.aU != null) {
                final Animation a = this.a(fragment, n, false, n2);
                if (a != null) {
                    fragment.aU.startAnimation(a);
                }
                fragment.aU.setVisibility(8);
            }
            if (fragment.ay && fragment.aP && fragment.aQ) {
                this.bO = true;
            }
            Fragment.g();
        }
    }
    
    final void b(final a a) {
        if (this.bH == null) {
            this.bH = new ArrayList<a>();
        }
        this.bH.add(a);
        this.M();
    }
    
    final boolean b(final int n, final int n2) {
        if (this.bH != null) {
            if (n < 0 && (n2 & 0x1) == 0x0) {
                final int n3 = -1 + this.bH.size();
                if (n3 < 0) {
                    return false;
                }
                final a a = this.bH.remove(n3);
                final SparseArray sparseArray = new SparseArray();
                final SparseArray sparseArray2 = new SparseArray();
                a.b((SparseArray<Fragment>)sparseArray, (SparseArray<Fragment>)sparseArray2);
                a.a(true, null, (SparseArray<Fragment>)sparseArray, (SparseArray<Fragment>)sparseArray2);
            }
            else {
                int n4 = -1;
                if (n >= 0) {
                    int i;
                    for (i = -1 + this.bH.size(); i >= 0; --i) {
                        final a a2 = this.bH.get(i);
                        if (n >= 0 && n == a2.y) {
                            break;
                        }
                    }
                    if (i < 0) {
                        return false;
                    }
                    if ((n2 & 0x1) != 0x0) {
                        --i;
                        while (i >= 0) {
                            final a a3 = this.bH.get(i);
                            if (n < 0 || n != a3.y) {
                                break;
                            }
                            --i;
                        }
                    }
                    n4 = i;
                }
                if (n4 == -1 + this.bH.size()) {
                    return false;
                }
                final ArrayList<a> list = new ArrayList<a>();
                for (int j = -1 + this.bH.size(); j > n4; --j) {
                    list.add(this.bH.remove(j));
                }
                final int n5 = -1 + list.size();
                final SparseArray sparseArray3 = new SparseArray();
                final SparseArray sparseArray4 = new SparseArray();
                for (int k = 0; k <= n5; ++k) {
                    list.get(k).b((SparseArray<Fragment>)sparseArray3, (SparseArray<Fragment>)sparseArray4);
                }
                f f = null;
                f a4;
                for (int l = 0; l <= n5; ++l, f = a4) {
                    if (q.DEBUG) {
                        Log.v("FragmentManager", "Popping back stack state: " + list.get(l));
                    }
                    a4 = list.get(l).a(l == n5, f, (SparseArray<Fragment>)sparseArray3, (SparseArray<Fragment>)sparseArray4);
                }
            }
            this.M();
            return true;
        }
        return false;
    }
    
    public final boolean b(final Menu menu, final MenuInflater menuInflater) {
        ArrayList<Fragment> bi = null;
        boolean b;
        if (this.bF != null) {
            int i = 0;
            b = false;
            while (i < this.bF.size()) {
                final Fragment fragment = this.bF.get(i);
                if (fragment != null && fragment.a(menu, menuInflater)) {
                    b = true;
                    if (bi == null) {
                        bi = new ArrayList<Fragment>();
                    }
                    bi.add(fragment);
                }
                final boolean b2 = b;
                ++i;
                b = b2;
            }
        }
        else {
            b = false;
        }
        final ArrayList<Fragment> bi2 = this.bI;
        int j = 0;
        if (bi2 != null) {
            while (j < this.bI.size()) {
                final Fragment fragment2 = this.bI.get(j);
                if (bi == null || !bi.contains(fragment2)) {
                    Fragment.onDestroyOptionsMenu();
                }
                ++j;
            }
        }
        this.bI = bi;
        return b;
    }
    
    public final void c(final Fragment fragment, final int n, final int n2) {
        if (q.DEBUG) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.aL) {
            fragment.aL = false;
            if (fragment.aU != null) {
                final Animation a = this.a(fragment, n, true, n2);
                if (a != null) {
                    fragment.aU.startAnimation(a);
                }
                fragment.aU.setVisibility(0);
            }
            if (fragment.ay && fragment.aP && fragment.aQ) {
                this.bO = true;
            }
            Fragment.g();
        }
    }
    
    public final boolean c(final Menu menu) {
        boolean b;
        if (this.bF != null) {
            int i = 0;
            b = false;
            while (i < this.bF.size()) {
                final Fragment fragment = this.bF.get(i);
                if (fragment != null && fragment.a(menu)) {
                    b = true;
                }
                ++i;
            }
        }
        else {
            b = false;
        }
        return b;
    }
    
    public final boolean c(final MenuItem menuItem) {
        final ArrayList<Fragment> bf = this.bF;
        boolean b = false;
        if (bf != null) {
            int n = 0;
            while (true) {
                final int size = this.bF.size();
                b = false;
                if (n >= size) {
                    break;
                }
                final Fragment fragment = this.bF.get(n);
                if (fragment != null && fragment.a(menuItem)) {
                    b = true;
                    break;
                }
                ++n;
            }
        }
        return b;
    }
    
    public final void d(final Fragment fragment, final int n, final int n2) {
        if (q.DEBUG) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.aM) {
            fragment.aM = true;
            if (fragment.ay) {
                if (this.bF != null) {
                    if (q.DEBUG) {
                        Log.v("FragmentManager", "remove from detach: " + fragment);
                    }
                    this.bF.remove(fragment);
                }
                if (fragment.aP && fragment.aQ) {
                    this.bO = true;
                }
                this.a(fragment, 1, n, n2, fragment.ay = false);
            }
        }
    }
    
    public final void d(final Menu menu) {
        if (this.bF != null) {
            for (int i = 0; i < this.bF.size(); ++i) {
                final Fragment fragment = this.bF.get(i);
                if (fragment != null) {
                    fragment.b(menu);
                }
            }
        }
    }
    
    public final boolean d(final MenuItem menuItem) {
        final ArrayList<Fragment> bf = this.bF;
        boolean b = false;
        if (bf != null) {
            int n = 0;
            while (true) {
                final int size = this.bF.size();
                b = false;
                if (n >= size) {
                    break;
                }
                final Fragment fragment = this.bF.get(n);
                if (fragment != null && fragment.b(menuItem)) {
                    b = true;
                    break;
                }
                ++n;
            }
        }
        return b;
    }
    
    public final void dispatchConfigurationChanged(final Configuration configuration) {
        if (this.bF != null) {
            for (int i = 0; i < this.bF.size(); ++i) {
                final Fragment fragment = this.bF.get(i);
                if (fragment != null) {
                    fragment.a(configuration);
                }
            }
        }
    }
    
    public final void dispatchResume() {
        this.bP = false;
        this.c(5);
    }
    
    public final void dispatchStop() {
        this.bP = true;
        this.c(3);
    }
    
    public final void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        int i = 0;
        final String string = s + "    ";
        if (this.bE != null) {
            final int size = this.bE.size();
            if (size > 0) {
                printWriter.print(s);
                printWriter.print("Active Fragments in ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(":");
                for (int j = 0; j < size; ++j) {
                    final Fragment fragment = this.bE.get(j);
                    printWriter.print(s);
                    printWriter.print("  #");
                    printWriter.print(j);
                    printWriter.print(": ");
                    printWriter.println(fragment);
                    if (fragment != null) {
                        fragment.dump(string, fileDescriptor, printWriter, array);
                    }
                }
            }
        }
        if (this.bF != null) {
            final int size2 = this.bF.size();
            if (size2 > 0) {
                printWriter.print(s);
                printWriter.println("Added Fragments:");
                for (int k = 0; k < size2; ++k) {
                    final Fragment fragment2 = this.bF.get(k);
                    printWriter.print(s);
                    printWriter.print("  #");
                    printWriter.print(k);
                    printWriter.print(": ");
                    printWriter.println(fragment2.toString());
                }
            }
        }
        if (this.bI != null) {
            final int size3 = this.bI.size();
            if (size3 > 0) {
                printWriter.print(s);
                printWriter.println("Fragments Created Menus:");
                for (int l = 0; l < size3; ++l) {
                    final Fragment fragment3 = this.bI.get(l);
                    printWriter.print(s);
                    printWriter.print("  #");
                    printWriter.print(l);
                    printWriter.print(": ");
                    printWriter.println(fragment3.toString());
                }
            }
        }
        if (this.bH != null) {
            final int size4 = this.bH.size();
            if (size4 > 0) {
                printWriter.print(s);
                printWriter.println("Back Stack:");
                for (int n = 0; n < size4; ++n) {
                    final a a = this.bH.get(n);
                    printWriter.print(s);
                    printWriter.print("  #");
                    printWriter.print(n);
                    printWriter.print(": ");
                    printWriter.println(a.toString());
                    a.a(string, printWriter);
                }
            }
        }
        synchronized (this) {
            if (this.bJ != null) {
                final int size5 = this.bJ.size();
                if (size5 > 0) {
                    printWriter.print(s);
                    printWriter.println("Back Stack Indices:");
                    for (int n2 = 0; n2 < size5; ++n2) {
                        final a a2 = this.bJ.get(n2);
                        printWriter.print(s);
                        printWriter.print("  #");
                        printWriter.print(n2);
                        printWriter.print(": ");
                        printWriter.println(a2);
                    }
                }
            }
            if (this.bK != null && this.bK.size() > 0) {
                printWriter.print(s);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.bK.toArray()));
            }
            // monitorexit(this)
            if (this.bB != null) {
                final int size6 = this.bB.size();
                if (size6 > 0) {
                    printWriter.print(s);
                    printWriter.println("Pending Actions:");
                    while (i < size6) {
                        final Runnable runnable = this.bB.get(i);
                        printWriter.print(s);
                        printWriter.print("  #");
                        printWriter.print(i);
                        printWriter.print(": ");
                        printWriter.println(runnable);
                        ++i;
                    }
                }
            }
        }
        printWriter.print(s);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(s);
        printWriter.print("  mActivity=");
        printWriter.println(this.aG);
        printWriter.print(s);
        printWriter.print("  mContainer=");
        printWriter.println(this.bo);
        if (this.bN != null) {
            printWriter.print(s);
            printWriter.print("  mParent=");
            printWriter.println(this.bN);
        }
        printWriter.print(s);
        printWriter.print("  mCurState=");
        printWriter.print(this.bM);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.bP);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.bQ);
        if (this.bO) {
            printWriter.print(s);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.bO);
        }
        if (this.bR != null) {
            printWriter.print(s);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.bR);
        }
        if (this.bG != null && this.bG.size() > 0) {
            printWriter.print(s);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.bG.toArray()));
        }
    }
    
    public final void e(final int n) {
        synchronized (this) {
            this.bJ.set(n, null);
            if (this.bK == null) {
                this.bK = new ArrayList<Integer>();
            }
            if (q.DEBUG) {
                Log.v("FragmentManager", "Freeing back stack index " + n);
            }
            this.bK.add(n);
        }
    }
    
    public final void e(final Fragment fragment, final int n, final int n2) {
        if (q.DEBUG) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.aM) {
            fragment.aM = false;
            if (!fragment.ay) {
                if (this.bF == null) {
                    this.bF = new ArrayList<Fragment>();
                }
                if (this.bF.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (q.DEBUG) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                this.bF.add(fragment);
                fragment.ay = true;
                if (fragment.aP && fragment.aQ) {
                    this.bO = true;
                }
                this.a(fragment, this.bM, n, n2, false);
            }
        }
    }
    
    @Override
    public final boolean executePendingTransactions() {
        return this.L();
    }
    
    @Override
    public final boolean isDestroyed() {
        return this.bQ;
    }
    
    public final View onCreateView(final String s, final Context context, final AttributeSet set) {
        if (!"fragment".equals(s)) {
            return null;
        }
        final String attributeValue = set.getAttributeValue((String)null, "class");
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, u.ce);
        String string;
        if (attributeValue == null) {
            string = obtainStyledAttributes.getString(0);
        }
        else {
            string = attributeValue;
        }
        final int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        final String string2 = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!Fragment.b((Context)this.aG, string)) {
            return null;
        }
        Fragment fragment;
        if (resourceId != -1) {
            fragment = this.d(resourceId);
        }
        else {
            fragment = null;
        }
        if (fragment == null && string2 != null) {
            fragment = this.b(string2);
        }
        if (fragment == null) {
            fragment = this.d(0);
        }
        if (q.DEBUG) {
            Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + string + " existing=" + fragment);
        }
        Fragment a;
        if (fragment == null) {
            a = Fragment.a(context, string);
            a.aB = true;
            int aj;
            if (resourceId != 0) {
                aj = resourceId;
            }
            else {
                aj = 0;
            }
            a.aJ = aj;
            a.d = 0;
            a.aK = string2;
            a.aC = true;
            a.aF = this;
            final k ag = this.aG;
            final Bundle ar = a.ar;
            a.i();
            this.a(a, true);
        }
        else {
            if (fragment.aC) {
                throw new IllegalArgumentException(set.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + string);
            }
            fragment.aC = true;
            if (!fragment.aO) {
                final k ag2 = this.aG;
                final Bundle ar2 = fragment.ar;
                fragment.i();
            }
            a = fragment;
        }
        if (this.bM <= 0 && a.aB) {
            this.a(a, 1, 0, 0, false);
        }
        else {
            this.d(a);
        }
        if (a.aU == null) {
            throw new IllegalStateException("Fragment " + string + " did not create a view.");
        }
        if (resourceId != 0) {
            a.aU.setId(resourceId);
        }
        if (a.aU.getTag() == null) {
            a.aU.setTag((Object)string2);
        }
        return a.aU;
    }
    
    public final boolean popBackStackImmediate() {
        this.K();
        this.L();
        final Handler mHandler = this.aG.mHandler;
        return this.b(-1, 0);
    }
    
    public final String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.bN != null) {
            d.a(this.bN, sb);
        }
        else {
            d.a(this.aG, sb);
        }
        sb.append("}}");
        return sb.toString();
    }
}
