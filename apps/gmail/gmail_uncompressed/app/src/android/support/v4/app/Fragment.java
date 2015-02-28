package android.support.v4.app;

import android.util.*;
import android.os.*;
import android.view.animation.*;
import java.util.*;
import java.io.*;
import android.content.res.*;
import android.app.*;
import android.view.*;
import android.content.*;
import android.support.v4.f.*;

public class Fragment implements ComponentCallbacks, View$OnCreateContextMenuListener
{
    private static final n<String, Class<?>> am;
    static final Object an;
    boolean aA;
    boolean aB;
    boolean aC;
    boolean aD;
    int aE;
    q aF;
    k aG;
    q aH;
    Fragment aI;
    int aJ;
    String aK;
    boolean aL;
    boolean aM;
    boolean aN;
    boolean aO;
    boolean aP;
    boolean aQ;
    boolean aR;
    int aS;
    ViewGroup aT;
    View aU;
    View aV;
    boolean aW;
    boolean aX;
    M aY;
    boolean aZ;
    int ao;
    View ap;
    int aq;
    Bundle ar;
    SparseArray<Parcelable> as;
    String at;
    Bundle au;
    Fragment av;
    int aw;
    int ax;
    boolean ay;
    boolean az;
    boolean ba;
    Object bb;
    Object bc;
    Object bd;
    Object be;
    Object bf;
    Object bg;
    Boolean bh;
    Boolean bi;
    aX bj;
    aX bk;
    int d;
    int y;
    
    static {
        am = new n<String, Class<?>>();
        an = new Object();
    }
    
    public Fragment() {
        this.ao = 0;
        this.y = -1;
        this.aw = -1;
        this.aQ = true;
        this.aX = true;
        this.bb = null;
        this.bc = Fragment.an;
        this.bd = null;
        this.be = Fragment.an;
        this.bf = null;
        this.bg = Fragment.an;
        this.bj = null;
        this.bk = null;
    }
    
    public static Fragment a(final Context context, final String s) {
        return a(context, s, null);
    }
    
    public static Fragment a(final Context context, final String s, final Bundle au) {
        try {
            Class<?> loadClass = Fragment.am.get(s);
            if (loadClass == null) {
                loadClass = context.getClassLoader().loadClass(s);
                Fragment.am.put(s, loadClass);
            }
            final Fragment fragment = (Fragment)loadClass.newInstance();
            if (au != null) {
                au.setClassLoader(fragment.getClass().getClassLoader());
                fragment.au = au;
            }
            return fragment;
        }
        catch (ClassNotFoundException ex) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + s + ": make sure class name exists, is public, and has an empty constructor that is public", ex);
        }
        catch (InstantiationException ex2) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + s + ": make sure class name exists, is public, and has an empty constructor that is public", ex2);
        }
        catch (IllegalAccessException ex3) {
            throw new Fragment$InstantiationException("Unable to instantiate fragment " + s + ": make sure class name exists, is public, and has an empty constructor that is public", ex3);
        }
    }
    
    static boolean b(final Context context, final String s) {
        try {
            Class<?> loadClass = Fragment.am.get(s);
            if (loadClass == null) {
                loadClass = context.getClassLoader().loadClass(s);
                Fragment.am.put(s, loadClass);
            }
            return Fragment.class.isAssignableFrom(loadClass);
        }
        catch (ClassNotFoundException ex) {
            return false;
        }
    }
    
    public static void g() {
    }
    
    public static Animation j() {
        return null;
    }
    
    public static void k() {
    }
    
    public static void onDestroyOptionsMenu() {
    }
    
    private void s() {
        (this.aH = new q()).a(this.aG, new i(this), this);
    }
    
    final void A() {
        if (this.aH != null) {
            this.aH.W();
        }
        this.aR = false;
        this.aR = true;
        if (!this.ba) {
            this.ba = true;
            this.aY = this.aG.a(this.at, this.aZ, false);
        }
        if (this.aY != null) {
            this.aY.ag();
        }
        if (!this.aR) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
        }
    }
    
    public LayoutInflater a(final Bundle bundle) {
        final LayoutInflater cloneInContext = this.aG.getLayoutInflater().cloneInContext((Context)this.aG);
        if (this.aH == null) {
            this.s();
            if (this.ao >= 5) {
                this.aH.dispatchResume();
            }
            else if (this.ao >= 4) {
                this.aH.S();
            }
            else if (this.ao >= 2) {
                this.aH.R();
            }
            else if (this.ao > 0) {
                this.aH.Q();
            }
        }
        final q ah = this.aH;
        cloneInContext.setFactory(this.aH.Y());
        return cloneInContext;
    }
    
    public View a(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        return null;
    }
    
    public void a(final int n, final int n2) {
    }
    
    final void a(final int y, final Fragment fragment) {
        this.y = y;
        if (fragment != null) {
            this.at = fragment.at + ":" + this.y;
            return;
        }
        this.at = "android:fragment:" + this.y;
    }
    
    final void a(final Configuration configuration) {
        this.onConfigurationChanged(configuration);
        if (this.aH != null) {
            this.aH.dispatchConfigurationChanged(configuration);
        }
    }
    
    final boolean a(final Menu menu) {
        final boolean al = this.aL;
        boolean b = false;
        if (!al) {
            final boolean ap = this.aP;
            b = false;
            if (ap) {
                final boolean aq = this.aQ;
                b = false;
                if (aq) {
                    b = true;
                }
            }
            if (this.aH != null) {
                b |= this.aH.c(menu);
            }
        }
        return b;
    }
    
    final boolean a(final Menu menu, final MenuInflater menuInflater) {
        final boolean al = this.aL;
        boolean b = false;
        if (!al) {
            final boolean ap = this.aP;
            b = false;
            if (ap) {
                final boolean aq = this.aQ;
                b = false;
                if (aq) {
                    b = true;
                }
            }
            if (this.aH != null) {
                b |= this.aH.b(menu, menuInflater);
            }
        }
        return b;
    }
    
    final boolean a(final MenuItem menuItem) {
        if (!this.aL) {
            if (this.aP) {
                final boolean aq = this.aQ;
            }
            if (this.aH != null && this.aH.c(menuItem)) {
                return true;
            }
        }
        return false;
    }
    
    final View b(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        if (this.aH != null) {
            this.aH.P();
        }
        return this.a(layoutInflater, viewGroup);
    }
    
    final void b(final Bundle bundle) {
        if (this.aH != null) {
            this.aH.P();
        }
        this.aR = false;
        this.onCreate(bundle);
        if (!this.aR) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
        }
        if (bundle != null) {
            final Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            if (parcelable != null) {
                if (this.aH == null) {
                    this.s();
                }
                this.aH.a(parcelable, null);
                this.aH.Q();
            }
        }
    }
    
    final void b(final Menu menu) {
        if (!this.aL) {
            if (this.aP) {
                final boolean aq = this.aQ;
            }
            if (this.aH != null) {
                this.aH.d(menu);
            }
        }
    }
    
    final boolean b(final MenuItem menuItem) {
        return !this.aL && this.aH != null && this.aH.d(menuItem);
    }
    
    final void c(final Bundle bundle) {
        if (this.aH != null) {
            this.aH.P();
        }
        this.aR = false;
        this.onActivityCreated(bundle);
        if (!this.aR) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
        if (this.aH != null) {
            this.aH.R();
        }
    }
    
    final void d() {
        if (this.as != null) {
            this.aV.restoreHierarchyState((SparseArray)this.as);
            this.as = null;
        }
        this.aR = false;
        if (!(this.aR = true)) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }
    
    final void d(final Bundle bundle) {
        this.onSaveInstanceState(bundle);
        if (this.aH != null) {
            final Parcelable o = this.aH.O();
            if (o != null) {
                bundle.putParcelable("android:support:fragments", o);
            }
        }
    }
    
    public final void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        printWriter.print(s);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.aJ));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.d));
        printWriter.print(" mTag=");
        printWriter.println(this.aK);
        printWriter.print(s);
        printWriter.print("mState=");
        printWriter.print(this.ao);
        printWriter.print(" mIndex=");
        printWriter.print(this.y);
        printWriter.print(" mWho=");
        printWriter.print(this.at);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.aE);
        printWriter.print(s);
        printWriter.print("mAdded=");
        printWriter.print(this.ay);
        printWriter.print(" mRemoving=");
        printWriter.print(this.az);
        printWriter.print(" mResumed=");
        printWriter.print(this.aA);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.aB);
        printWriter.print(" mInLayout=");
        printWriter.println(this.aC);
        printWriter.print(s);
        printWriter.print("mHidden=");
        printWriter.print(this.aL);
        printWriter.print(" mDetached=");
        printWriter.print(this.aM);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.aQ);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.aP);
        printWriter.print(s);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.aN);
        printWriter.print(" mRetaining=");
        printWriter.print(this.aO);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.aX);
        if (this.aF != null) {
            printWriter.print(s);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.aF);
        }
        if (this.aG != null) {
            printWriter.print(s);
            printWriter.print("mActivity=");
            printWriter.println(this.aG);
        }
        if (this.aI != null) {
            printWriter.print(s);
            printWriter.print("mParentFragment=");
            printWriter.println(this.aI);
        }
        if (this.au != null) {
            printWriter.print(s);
            printWriter.print("mArguments=");
            printWriter.println(this.au);
        }
        if (this.ar != null) {
            printWriter.print(s);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.ar);
        }
        if (this.as != null) {
            printWriter.print(s);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.as);
        }
        if (this.av != null) {
            printWriter.print(s);
            printWriter.print("mTarget=");
            printWriter.print(this.av);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.ax);
        }
        if (this.aS != 0) {
            printWriter.print(s);
            printWriter.print("mNextAnim=");
            printWriter.println(this.aS);
        }
        if (this.aT != null) {
            printWriter.print(s);
            printWriter.print("mContainer=");
            printWriter.println(this.aT);
        }
        if (this.aU != null) {
            printWriter.print(s);
            printWriter.print("mView=");
            printWriter.println(this.aU);
        }
        if (this.aV != null) {
            printWriter.print(s);
            printWriter.print("mInnerView=");
            printWriter.println(this.aU);
        }
        if (this.ap != null) {
            printWriter.print(s);
            printWriter.print("mAnimatingAway=");
            printWriter.println(this.ap);
            printWriter.print(s);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(this.aq);
        }
        if (this.aY != null) {
            printWriter.print(s);
            printWriter.println("Loader Manager:");
            this.aY.dump(s + "  ", fileDescriptor, printWriter, array);
        }
        if (this.aH != null) {
            printWriter.print(s);
            printWriter.println("Child " + this.aH + ":");
            this.aH.dump(s + "  ", fileDescriptor, printWriter, array);
        }
    }
    
    final boolean e() {
        return this.aE > 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        return super.equals(o);
    }
    
    public final k f() {
        return this.aG;
    }
    
    public final boolean getAllowEnterTransitionOverlap() {
        return this.bi == null || this.bi;
    }
    
    public final boolean getAllowReturnTransitionOverlap() {
        return this.bh == null || this.bh;
    }
    
    public final Bundle getArguments() {
        return this.au;
    }
    
    public final Resources getResources() {
        if (this.aG == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        return this.aG.getResources();
    }
    
    public final String getTag() {
        return this.aK;
    }
    
    public final View getView() {
        return this.aU;
    }
    
    public final K h() {
        if (this.aY != null) {
            return this.aY;
        }
        if (this.aG == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.ba = true;
        return this.aY = this.aG.a(this.at, this.aZ, true);
    }
    
    @Override
    public final int hashCode() {
        return super.hashCode();
    }
    
    public final void i() {
        this.aR = true;
    }
    
    public final boolean isAdded() {
        return this.aG != null && this.ay;
    }
    
    public final boolean isDetached() {
        return this.aM;
    }
    
    public final boolean isHidden() {
        return this.aL;
    }
    
    public final boolean isRemoving() {
        return this.az;
    }
    
    final void l() {
        this.y = -1;
        this.at = null;
        this.ay = false;
        this.az = false;
        this.aA = false;
        this.aB = false;
        this.aC = false;
        this.aD = false;
        this.aE = 0;
        this.aF = null;
        this.aH = null;
        this.aG = null;
        this.aJ = 0;
        this.d = 0;
        this.aK = null;
        this.aL = false;
        this.aM = false;
        this.aO = false;
        this.aY = null;
        this.aZ = false;
        this.ba = false;
    }
    
    public final Object m() {
        return this.bb;
    }
    
    public final Object n() {
        if (this.bc == Fragment.an) {
            return this.bb;
        }
        return this.bc;
    }
    
    public final Object o() {
        return this.bd;
    }
    
    public void onActivityCreated(final Bundle bundle) {
        this.aR = true;
    }
    
    public void onAttach(final Activity activity) {
        this.aR = true;
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        this.aR = true;
    }
    
    public void onCreate(final Bundle bundle) {
        this.aR = true;
    }
    
    public void onCreateContextMenu(final ContextMenu contextMenu, final View view, final ContextMenu$ContextMenuInfo contextMenu$ContextMenuInfo) {
        this.aG.onCreateContextMenu(contextMenu, view, contextMenu$ContextMenuInfo);
    }
    
    public void onDestroyView() {
        this.aR = true;
    }
    
    public void onDetach() {
        this.aR = true;
    }
    
    public void onLowMemory() {
        this.aR = true;
    }
    
    public void onPause() {
        this.aR = true;
    }
    
    public void onResume() {
        this.aR = true;
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
    }
    
    public void onStart() {
        this.aR = true;
        if (!this.aZ) {
            this.aZ = true;
            if (!this.ba) {
                this.ba = true;
                this.aY = this.aG.a(this.at, this.aZ, false);
            }
            if (this.aY != null) {
                this.aY.aa();
            }
        }
    }
    
    public void onStop() {
        this.aR = true;
    }
    
    public final Object p() {
        if (this.be == Fragment.an) {
            return this.bd;
        }
        return this.be;
    }
    
    public final Object q() {
        return this.bf;
    }
    
    public final Object r() {
        if (this.bg == Fragment.an) {
            return this.bf;
        }
        return this.bg;
    }
    
    public final void setArguments(final Bundle au) {
        if (this.y >= 0) {
            throw new IllegalStateException("Fragment already active");
        }
        this.au = au;
    }
    
    public final void setMenuVisibility(final boolean aq) {
        if (this.aQ != aq) {
            this.aQ = aq;
            if (this.aP && this.isAdded() && !this.aL) {
                this.aG.D();
            }
        }
    }
    
    public final void startActivityForResult(final Intent intent, final int n) {
        if (this.aG == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        this.aG.a(this, intent, n);
    }
    
    final void t() {
        if (this.aH != null) {
            this.aH.P();
            this.aH.L();
        }
        this.aR = false;
        this.onStart();
        if (!this.aR) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
        }
        if (this.aH != null) {
            this.aH.S();
        }
        if (this.aY != null) {
            this.aY.af();
        }
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(128);
        android.support.v4.f.d.a(this, sb);
        if (this.y >= 0) {
            sb.append(" #");
            sb.append(this.y);
        }
        if (this.aJ != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.aJ));
        }
        if (this.aK != null) {
            sb.append(" ");
            sb.append(this.aK);
        }
        sb.append('}');
        return sb.toString();
    }
    
    final void u() {
        if (this.aH != null) {
            this.aH.P();
            this.aH.L();
        }
        this.aR = false;
        this.onResume();
        if (!this.aR) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
        }
        if (this.aH != null) {
            this.aH.dispatchResume();
            this.aH.L();
        }
    }
    
    final void v() {
        this.onLowMemory();
        if (this.aH != null) {
            this.aH.X();
        }
    }
    
    final void w() {
        if (this.aH != null) {
            this.aH.T();
        }
        this.aR = false;
        this.onPause();
        if (!this.aR) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
        }
    }
    
    final void x() {
        if (this.aH != null) {
            this.aH.dispatchStop();
        }
        this.aR = false;
        this.onStop();
        if (!this.aR) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
        }
    }
    
    final void y() {
        if (this.aH != null) {
            this.aH.U();
        }
        if (this.aZ) {
            this.aZ = false;
            if (!this.ba) {
                this.ba = true;
                this.aY = this.aG.a(this.at, this.aZ, false);
            }
            if (this.aY != null) {
                if (this.aG.aO) {
                    this.aY.ac();
                    return;
                }
                this.aY.ab();
            }
        }
    }
    
    final void z() {
        if (this.aH != null) {
            this.aH.V();
        }
        this.aR = false;
        this.onDestroyView();
        if (!this.aR) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
        }
        if (this.aY != null) {
            this.aY.ae();
        }
    }
}
