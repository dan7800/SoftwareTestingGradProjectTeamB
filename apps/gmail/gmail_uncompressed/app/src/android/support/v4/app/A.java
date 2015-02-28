package android.support.v4.app;

import java.io.*;
import android.util.*;
import android.content.*;
import android.support.v4.f.*;
import java.util.*;
import android.view.*;
import android.transition.*;
import android.os.*;

final class a extends z implements Runnable
{
    CharSequence A;
    int B;
    CharSequence C;
    ArrayList<String> D;
    ArrayList<String> E;
    final q l;
    e m;
    String mName;
    e n;
    int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    int u;
    boolean v;
    boolean w;
    boolean x;
    int y;
    int z;
    
    public a(final q l) {
        this.w = true;
        this.y = -1;
        this.l = l;
    }
    
    private int a(final boolean b) {
        if (this.x) {
            throw new IllegalStateException("commit already called");
        }
        if (android.support.v4.app.q.DEBUG) {
            Log.v("FragmentManager", "Commit: " + this);
            this.a("  ", new PrintWriter(new android.support.v4.f.e("FragmentManager")));
        }
        this.x = true;
        if (this.v) {
            this.y = this.l.a(this);
        }
        else {
            this.y = -1;
        }
        this.l.a(this, b);
        return this.y;
    }
    
    private f a(final SparseArray<Fragment> sparseArray, final SparseArray<Fragment> sparseArray2, final boolean b) {
        f f = new f(this);
        f.ab = new View((Context)this.l.aG);
        int n = 0;
        int n2 = 0;
        int i;
        while (true) {
            final int size = sparseArray.size();
            i = 0;
            if (n >= size) {
                break;
            }
            int n3;
            if (this.a(sparseArray.keyAt(n), f, b, sparseArray, sparseArray2)) {
                n3 = 1;
            }
            else {
                n3 = n2;
            }
            ++n;
            n2 = n3;
        }
        while (i < sparseArray2.size()) {
            final int key = sparseArray2.keyAt(i);
            if (sparseArray.get(key) == null && this.a(key, f, b, sparseArray, sparseArray2)) {
                n2 = 1;
            }
            ++i;
        }
        if (n2 == 0) {
            f = null;
        }
        return f;
    }
    
    private android.support.v4.f.a<String, View> a(final f f, final Fragment fragment, final boolean b) {
        android.support.v4.f.a<String, View> a = new android.support.v4.f.a<String, View>();
        if (this.D != null) {
            android.support.v4.app.A.a(a, fragment.getView());
            if (b) {
                a.retainAll(this.E);
            }
            else {
                a = a(this.D, this.E, a);
            }
        }
        if (b) {
            if (fragment.bj != null) {
                final aX bj = fragment.bj;
                final ArrayList<String> e = this.E;
            }
            this.a(f, a, false);
            return a;
        }
        if (fragment.bk != null) {
            final aX bk = fragment.bk;
            final ArrayList<String> e2 = this.E;
        }
        b(f, a, false);
        return a;
    }
    
    private static android.support.v4.f.a<String, View> a(final ArrayList<String> list, final ArrayList<String> list2, final android.support.v4.f.a<String, View> a) {
        if (a.isEmpty()) {
            return a;
        }
        final android.support.v4.f.a<String, View> a2 = new android.support.v4.f.a<String, View>();
        for (int size = list.size(), i = 0; i < size; ++i) {
            final View view = a.get(list.get(i));
            if (view != null) {
                a2.put(list2.get(i), view);
            }
        }
        return a2;
    }
    
    private void a(final f f, final int n, final Object o) {
        if (this.l.bF != null) {
            for (int i = 0; i < this.l.bF.size(); ++i) {
                final Fragment fragment = this.l.bF.get(i);
                if (fragment.aU != null && fragment.aT != null && fragment.d == n) {
                    if (fragment.aL) {
                        if (!f.Z.contains(fragment.aU)) {
                            android.support.v4.app.A.a(o, fragment.aU, true);
                            f.Z.add(fragment.aU);
                        }
                    }
                    else {
                        android.support.v4.app.A.a(o, fragment.aU, false);
                        f.Z.remove(fragment.aU);
                    }
                }
            }
        }
    }
    
    private void a(final f f, final android.support.v4.f.a<String, View> a, final boolean b) {
        int size;
        if (this.E == null) {
            size = 0;
        }
        else {
            size = this.E.size();
        }
        for (int i = 0; i < size; ++i) {
            final String s = this.D.get(i);
            final View view = a.get(this.E.get(i));
            if (view != null) {
                final String transitionName = view.getTransitionName();
                if (b) {
                    a(f.Y, s, transitionName);
                }
                else {
                    a(f.Y, transitionName, s);
                }
            }
        }
    }
    
    private static void a(final f f, final ArrayList<String> list, final ArrayList<String> list2) {
        if (list != null) {
            for (int i = 0; i < list.size(); ++i) {
                a(f.Y, list.get(i), list2.get(i));
            }
        }
    }
    
    private static void a(final android.support.v4.f.a<String, String> a, final String s, final String s2) {
        if (s != null && s2 != null && !s.equals(s2)) {
            for (int i = 0; i < a.size(); ++i) {
                if (s.equals(a.valueAt(i))) {
                    a.setValueAt(i, s2);
                    return;
                }
            }
            a.put(s, s2);
        }
    }
    
    private static void a(final SparseArray<Fragment> sparseArray, final Fragment fragment) {
        if (fragment != null) {
            final int d = fragment.d;
            if (d != 0 && !fragment.isHidden() && fragment.isAdded() && fragment.getView() != null && sparseArray.get(d) == null) {
                sparseArray.put(d, (Object)fragment);
            }
        }
    }
    
    private void a(final SparseArray<Fragment> sparseArray, final SparseArray<Fragment> sparseArray2) {
        if (this.l.bo.B()) {
            for (e e = this.m; e != null; e = e.P) {
                switch (e.R) {
                    case 1: {
                        b(sparseArray2, e.S);
                        break;
                    }
                    case 2: {
                        final Fragment s = e.S;
                        Fragment fragment;
                        if (this.l.bF != null) {
                            fragment = s;
                            for (int i = 0; i < this.l.bF.size(); ++i) {
                                final Fragment fragment2 = this.l.bF.get(i);
                                if (fragment == null || fragment2.d == fragment.d) {
                                    if (fragment2 == fragment) {
                                        fragment = null;
                                    }
                                    else {
                                        a(sparseArray, fragment2);
                                    }
                                }
                            }
                        }
                        else {
                            fragment = s;
                        }
                        b(sparseArray2, fragment);
                        break;
                    }
                    case 3: {
                        a(sparseArray, e.S);
                        break;
                    }
                    case 4: {
                        a(sparseArray, e.S);
                        break;
                    }
                    case 5: {
                        b(sparseArray2, e.S);
                        break;
                    }
                    case 6: {
                        a(sparseArray, e.S);
                        break;
                    }
                    case 7: {
                        b(sparseArray2, e.S);
                        break;
                    }
                }
            }
        }
    }
    
    private boolean a(final int n, final f f, final boolean b, final SparseArray<Fragment> sparseArray, final SparseArray<Fragment> sparseArray2) {
        final ViewGroup viewGroup = (ViewGroup)this.l.bo.findViewById(n);
        if (viewGroup == null) {
            return false;
        }
        final Fragment fragment = (Fragment)sparseArray2.get(n);
        final Fragment fragment2 = (Fragment)sparseArray.get(n);
        Object a;
        if (fragment == null) {
            a = null;
        }
        else {
            Object o;
            if (b) {
                o = fragment.p();
            }
            else {
                o = fragment.m();
            }
            a = android.support.v4.app.A.a(o);
        }
        Object a2;
        if (fragment == null || fragment2 == null) {
            a2 = null;
        }
        else {
            Object o2;
            if (b) {
                o2 = fragment2.r();
            }
            else {
                o2 = fragment.q();
            }
            a2 = android.support.v4.app.A.a(o2);
        }
        Object o3;
        if (fragment2 == null) {
            o3 = null;
        }
        else {
            Object o4;
            if (b) {
                o4 = fragment2.n();
            }
            else {
                o4 = fragment2.o();
            }
            o3 = android.support.v4.app.A.a(o4);
        }
        if (a == null && a2 == null && o3 == null) {
            return false;
        }
        final ArrayList<View> list = new ArrayList<View>();
        android.support.v4.f.a<String, ? extends View> a3 = null;
        if (a2 != null) {
            a3 = this.a(f, fragment2, b);
            if (a3.isEmpty()) {
                list.add(f.ab);
            }
            else {
                list.addAll(a3.values());
            }
            aX ax;
            if (b) {
                ax = fragment2.bj;
            }
            else {
                ax = fragment.bj;
            }
            if (ax != null) {
                new ArrayList(a3.keySet());
                new ArrayList(a3.values());
            }
        }
        final ArrayList<View> list2 = new ArrayList<View>();
        if (o3 != null) {
            o3 = android.support.v4.app.A.a(o3, fragment2.getView(), list2, (Map<String, View>)a3);
        }
        if (this.E != null && a3 != null) {
            final View view = a3.get(this.E.get(0));
            if (view != null) {
                if (o3 != null) {
                    android.support.v4.app.A.a(o3, view);
                }
                if (a2 != null) {
                    android.support.v4.app.A.a(a2, view);
                }
            }
        }
        final b b2 = new b(this, fragment);
        if (a2 != null) {
            ((View)viewGroup).getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)new c(this, (View)viewGroup, a2, list, f, b, fragment, fragment2));
        }
        final ArrayList list3 = new ArrayList();
        final android.support.v4.f.a a4 = new android.support.v4.f.a();
        int n2;
        if (b) {
            n2 = (fragment.getAllowReturnTransitionOverlap() ? 1 : 0);
        }
        else {
            n2 = (fragment.getAllowEnterTransitionOverlap() ? 1 : 0);
        }
        Object setOrdering = a;
        final Transition transition = (Transition)o3;
        final Transition transition2 = (Transition)a2;
        if (setOrdering == null || transition == null) {
            n2 = 1;
        }
        Object o5;
        if (n2 != 0) {
            o5 = new TransitionSet();
            if (setOrdering != null) {
                ((TransitionSet)o5).addTransition((Transition)setOrdering);
            }
            if (transition != null) {
                ((TransitionSet)o5).addTransition(transition);
            }
            if (transition2 != null) {
                ((TransitionSet)o5).addTransition(transition2);
            }
        }
        else {
            if (transition != null && setOrdering != null) {
                setOrdering = new TransitionSet().addTransition(transition).addTransition((Transition)setOrdering).setOrdering(1);
            }
            else if (transition != null) {
                setOrdering = transition;
            }
            else if (setOrdering == null) {
                setOrdering = null;
            }
            if (transition2 != null) {
                o5 = new TransitionSet();
                if (setOrdering != null) {
                    ((TransitionSet)o5).addTransition((Transition)setOrdering);
                }
                ((TransitionSet)o5).addTransition(transition2);
            }
            else {
                o5 = setOrdering;
            }
        }
        if (o5 != null) {
            final View ab = f.ab;
            final F aa = f.aa;
            final android.support.v4.f.a<String, String> y = f.Y;
            if (a != null || a2 != null) {
                final Transition transition3 = (Transition)a;
                if (transition3 != null) {
                    transition3.addTarget(ab);
                }
                if (a2 != null) {
                    android.support.v4.app.A.b(a2, list);
                }
                if (b2 != null) {
                    ((View)viewGroup).getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)new C((View)viewGroup, b2, y, a4, transition3, list3));
                }
                if (transition3 != null) {
                    transition3.setEpicenterCallback((Transition$EpicenterCallback)new D(aa));
                }
            }
            ((View)viewGroup).getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)new d(this, (View)viewGroup, f, n, o5));
            android.support.v4.app.A.a(o5, f.ab, true);
            this.a(f, n, o5);
            TransitionManager.beginDelayedTransition(viewGroup, (Transition)o5);
            final View ab2 = f.ab;
            final ArrayList<View> z = f.Z;
            final Transition transition4 = (Transition)a;
            final Transition transition5 = (Transition)o3;
            final Transition transition6 = (Transition)a2;
            final Transition transition7 = (Transition)o5;
            if (transition7 != null) {
                ((View)viewGroup).getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver$OnPreDrawListener)new E((View)viewGroup, transition4, ab2, list3, transition5, list2, transition6, list, a4, z, transition7));
            }
        }
        return o5 != null;
    }
    
    private void b(final int n, final Fragment s, final String ak) {
        s.aF = this.l;
        if (ak != null) {
            if (s.aK != null && !ak.equals(s.aK)) {
                throw new IllegalStateException("Can't change tag of fragment " + s + ": was " + s.aK + " now " + ak);
            }
            s.aK = ak;
        }
        if (n != 0) {
            if (s.aJ != 0 && s.aJ != n) {
                throw new IllegalStateException("Can't change container ID of fragment " + s + ": was " + s.aJ + " now " + n);
            }
            s.aJ = n;
            s.d = n;
        }
        final e e = new e();
        e.R = 1;
        e.S = s;
        this.a(e);
    }
    
    private static void b(final f f, final android.support.v4.f.a<String, View> a, final boolean b) {
        for (int size = a.size(), i = 0; i < size; ++i) {
            final String s = a.keyAt(i);
            final String transitionName = a.valueAt(i).getTransitionName();
            if (b) {
                a(f.Y, s, transitionName);
            }
            else {
                a(f.Y, transitionName, s);
            }
        }
    }
    
    private static void b(final SparseArray<Fragment> sparseArray, final Fragment fragment) {
        if (fragment != null) {
            final int d = fragment.d;
            if (d != 0) {
                sparseArray.put(d, (Object)fragment);
            }
        }
    }
    
    public final f a(final boolean b, f a, final SparseArray<Fragment> sparseArray, final SparseArray<Fragment> sparseArray2) {
        if (android.support.v4.app.q.DEBUG) {
            Log.v("FragmentManager", "popFromBackStack: " + this);
            this.a("  ", new PrintWriter(new android.support.v4.f.e("FragmentManager")));
        }
        if (a == null) {
            if (sparseArray.size() != 0 || sparseArray2.size() != 0) {
                a = this.a(sparseArray, sparseArray2, true);
            }
        }
        else if (!b) {
            a(a, this.E, this.D);
        }
        this.a(-1);
        int u;
        if (a != null) {
            u = 0;
        }
        else {
            u = this.u;
        }
        int t;
        if (a != null) {
            t = 0;
        }
        else {
            t = this.t;
        }
        for (e e = this.n; e != null; e = e.Q) {
            int v;
            if (a != null) {
                v = 0;
            }
            else {
                v = e.V;
            }
            int w;
            if (a != null) {
                w = 0;
            }
            else {
                w = e.W;
            }
            switch (e.R) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + e.R);
                }
                case 1: {
                    final Fragment s = e.S;
                    s.aS = w;
                    this.l.a(s, android.support.v4.app.q.f(t), u);
                    break;
                }
                case 2: {
                    final Fragment s2 = e.S;
                    if (s2 != null) {
                        s2.aS = w;
                        this.l.a(s2, android.support.v4.app.q.f(t), u);
                    }
                    if (e.X != null) {
                        for (int i = 0; i < e.X.size(); ++i) {
                            final Fragment fragment = e.X.get(i);
                            fragment.aS = v;
                            this.l.a(fragment, false);
                        }
                        break;
                    }
                    break;
                }
                case 3: {
                    final Fragment s3 = e.S;
                    s3.aS = v;
                    this.l.a(s3, false);
                    break;
                }
                case 4: {
                    final Fragment s4 = e.S;
                    s4.aS = v;
                    this.l.c(s4, android.support.v4.app.q.f(t), u);
                    break;
                }
                case 5: {
                    final Fragment s5 = e.S;
                    s5.aS = w;
                    this.l.b(s5, android.support.v4.app.q.f(t), u);
                    break;
                }
                case 6: {
                    final Fragment s6 = e.S;
                    s6.aS = v;
                    this.l.e(s6, android.support.v4.app.q.f(t), u);
                    break;
                }
                case 7: {
                    final Fragment s7 = e.S;
                    s7.aS = v;
                    this.l.d(s7, android.support.v4.app.q.f(t), u);
                    break;
                }
            }
        }
        if (b) {
            this.l.a(this.l.bM, android.support.v4.app.q.f(t), u, true);
            a = null;
        }
        if (this.y >= 0) {
            this.l.e(this.y);
            this.y = -1;
        }
        return a;
    }
    
    @Override
    public final z a() {
        if (this.v) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.w = false;
        return this;
    }
    
    @Override
    public final z a(final int n, final Fragment fragment, final String s) {
        this.b(n, fragment, s);
        return this;
    }
    
    @Override
    public final z a(final Fragment s) {
        final e e = new e();
        e.R = 3;
        e.S = s;
        this.a(e);
        return this;
    }
    
    @Override
    public final z a(final Fragment fragment, final String s) {
        this.b(0, fragment, s);
        return this;
    }
    
    final void a(final int n) {
        if (this.v) {
            if (android.support.v4.app.q.DEBUG) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + n);
            }
            for (e e = this.m; e != null; e = e.P) {
                if (e.S != null) {
                    final Fragment s = e.S;
                    s.aE += n;
                    if (android.support.v4.app.q.DEBUG) {
                        Log.v("FragmentManager", "Bump nesting of " + e.S + " to " + e.S.aE);
                    }
                }
                if (e.X != null) {
                    for (int i = -1 + e.X.size(); i >= 0; --i) {
                        final Fragment fragment = e.X.get(i);
                        fragment.aE += n;
                        if (android.support.v4.app.q.DEBUG) {
                            Log.v("FragmentManager", "Bump nesting of " + fragment + " to " + fragment.aE);
                        }
                    }
                }
            }
        }
    }
    
    final void a(final e e) {
        if (this.m == null) {
            this.n = e;
            this.m = e;
        }
        else {
            e.Q = this.n;
            this.n.P = e;
            this.n = e;
        }
        e.T = this.p;
        e.U = this.q;
        e.V = this.r;
        e.W = this.s;
        ++this.o;
    }
    
    public final void a(final String s, final PrintWriter printWriter) {
        this.a(s, printWriter, true);
    }
    
    public final void a(final String s, final PrintWriter printWriter, final boolean b) {
        if (b) {
            printWriter.print(s);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.y);
            printWriter.print(" mCommitted=");
            printWriter.println(this.x);
            if (this.t != 0) {
                printWriter.print(s);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.t));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.u));
            }
            if (this.p != 0 || this.q != 0) {
                printWriter.print(s);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.p));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.q));
            }
            if (this.r != 0 || this.s != 0) {
                printWriter.print(s);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.r));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.s));
            }
            if (this.z != 0 || this.A != null) {
                printWriter.print(s);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.z));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.A);
            }
            if (this.B != 0 || this.C != null) {
                printWriter.print(s);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.B));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.C);
            }
        }
        if (this.m != null) {
            printWriter.print(s);
            printWriter.println("Operations:");
            final String string = s + "    ";
            final e m = this.m;
            int n = 0;
            for (e p3 = m; p3 != null; p3 = p3.P, ++n) {
                String string2 = null;
                switch (p3.R) {
                    default: {
                        string2 = "cmd=" + p3.R;
                        break;
                    }
                    case 0: {
                        string2 = "NULL";
                        break;
                    }
                    case 1: {
                        string2 = "ADD";
                        break;
                    }
                    case 2: {
                        string2 = "REPLACE";
                        break;
                    }
                    case 3: {
                        string2 = "REMOVE";
                        break;
                    }
                    case 4: {
                        string2 = "HIDE";
                        break;
                    }
                    case 5: {
                        string2 = "SHOW";
                        break;
                    }
                    case 6: {
                        string2 = "DETACH";
                        break;
                    }
                    case 7: {
                        string2 = "ATTACH";
                        break;
                    }
                }
                printWriter.print(s);
                printWriter.print("  Op #");
                printWriter.print(n);
                printWriter.print(": ");
                printWriter.print(string2);
                printWriter.print(" ");
                printWriter.println(p3.S);
                if (b) {
                    if (p3.T != 0 || p3.U != 0) {
                        printWriter.print(s);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(p3.T));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(p3.U));
                    }
                    if (p3.V != 0 || p3.W != 0) {
                        printWriter.print(s);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(p3.V));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(p3.W));
                    }
                }
                if (p3.X != null && p3.X.size() > 0) {
                    for (int i = 0; i < p3.X.size(); ++i) {
                        printWriter.print(string);
                        if (p3.X.size() == 1) {
                            printWriter.print("Removed: ");
                        }
                        else {
                            if (i == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(string);
                            printWriter.print("  #");
                            printWriter.print(i);
                            printWriter.print(": ");
                        }
                        printWriter.println(p3.X.get(i));
                    }
                }
            }
        }
    }
    
    @Override
    public final z b(final Fragment s) {
        final e e = new e();
        e.R = 6;
        e.S = s;
        this.a(e);
        return this;
    }
    
    public final void b(final SparseArray<Fragment> sparseArray, final SparseArray<Fragment> sparseArray2) {
        if (this.l.bo.B()) {
            for (e e = this.m; e != null; e = e.P) {
                switch (e.R) {
                    case 1: {
                        a(sparseArray, e.S);
                        break;
                    }
                    case 2: {
                        if (e.X != null) {
                            for (int i = -1 + e.X.size(); i >= 0; --i) {
                                b(sparseArray2, e.X.get(i));
                            }
                        }
                        a(sparseArray, e.S);
                        break;
                    }
                    case 3: {
                        b(sparseArray2, e.S);
                        break;
                    }
                    case 4: {
                        b(sparseArray2, e.S);
                        break;
                    }
                    case 5: {
                        a(sparseArray, e.S);
                        break;
                    }
                    case 6: {
                        b(sparseArray2, e.S);
                        break;
                    }
                    case 7: {
                        a(sparseArray, e.S);
                        break;
                    }
                }
            }
        }
    }
    
    @Override
    public final z c(final Fragment s) {
        final e e = new e();
        e.R = 7;
        e.S = s;
        this.a(e);
        return this;
    }
    
    @Override
    public final int commit() {
        return this.a(false);
    }
    
    @Override
    public final int commitAllowingStateLoss() {
        return this.a(true);
    }
    
    @Override
    public final boolean isEmpty() {
        return this.o == 0;
    }
    
    @Override
    public final void run() {
        if (android.support.v4.app.q.DEBUG) {
            Log.v("FragmentManager", "Run: " + this);
        }
        if (this.v && this.y < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        this.a(1);
        f a;
        if (Build$VERSION.SDK_INT >= 21) {
            final SparseArray sparseArray = new SparseArray();
            final SparseArray sparseArray2 = new SparseArray();
            this.a((SparseArray<Fragment>)sparseArray, (SparseArray<Fragment>)sparseArray2);
            a = this.a((SparseArray<Fragment>)sparseArray, (SparseArray<Fragment>)sparseArray2, false);
        }
        else {
            a = null;
        }
        int u;
        if (a != null) {
            u = 0;
        }
        else {
            u = this.u;
        }
        int t;
        if (a != null) {
            t = 0;
        }
        else {
            t = this.t;
        }
        for (e e = this.m; e != null; e = e.P) {
            int t2;
            if (a != null) {
                t2 = 0;
            }
            else {
                t2 = e.T;
            }
            int u2;
            if (a != null) {
                u2 = 0;
            }
            else {
                u2 = e.U;
            }
            switch (e.R) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + e.R);
                }
                case 1: {
                    final Fragment s = e.S;
                    s.aS = t2;
                    this.l.a(s, false);
                    break;
                }
                case 2: {
                    final Fragment s2 = e.S;
                    Fragment fragment;
                    if (this.l.bF != null) {
                        int i = 0;
                        fragment = s2;
                        while (i < this.l.bF.size()) {
                            final Fragment fragment2 = this.l.bF.get(i);
                            if (android.support.v4.app.q.DEBUG) {
                                Log.v("FragmentManager", "OP_REPLACE: adding=" + fragment + " old=" + fragment2);
                            }
                            if (fragment == null || fragment2.d == fragment.d) {
                                if (fragment2 == fragment) {
                                    e.S = null;
                                    fragment = null;
                                }
                                else {
                                    if (e.X == null) {
                                        e.X = new ArrayList<Fragment>();
                                    }
                                    e.X.add(fragment2);
                                    fragment2.aS = u2;
                                    if (this.v) {
                                        ++fragment2.aE;
                                        if (android.support.v4.app.q.DEBUG) {
                                            Log.v("FragmentManager", "Bump nesting of " + fragment2 + " to " + fragment2.aE);
                                        }
                                    }
                                    this.l.a(fragment2, t, u);
                                }
                            }
                            ++i;
                        }
                    }
                    else {
                        fragment = s2;
                    }
                    if (fragment != null) {
                        fragment.aS = t2;
                        this.l.a(fragment, false);
                        break;
                    }
                    break;
                }
                case 3: {
                    final Fragment s3 = e.S;
                    s3.aS = u2;
                    this.l.a(s3, t, u);
                    break;
                }
                case 4: {
                    final Fragment s4 = e.S;
                    s4.aS = u2;
                    this.l.b(s4, t, u);
                    break;
                }
                case 5: {
                    final Fragment s5 = e.S;
                    s5.aS = t2;
                    this.l.c(s5, t, u);
                    break;
                }
                case 6: {
                    final Fragment s6 = e.S;
                    s6.aS = u2;
                    this.l.d(s6, t, u);
                    break;
                }
                case 7: {
                    final Fragment s7 = e.S;
                    s7.aS = t2;
                    this.l.e(s7, t, u);
                    break;
                }
            }
        }
        this.l.a(this.l.bM, t, u, true);
        if (this.v) {
            this.l.b(this);
        }
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.y >= 0) {
            sb.append(" #");
            sb.append(this.y);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }
}
