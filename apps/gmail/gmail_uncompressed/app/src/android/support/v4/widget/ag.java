package android.support.v4.widget;

import android.view.animation.*;
import android.content.*;
import android.view.*;
import android.support.v4.view.*;
import java.util.*;

public final class ag
{
    private static final Interpolator ip;
    private VelocityTracker hT;
    private int iP;
    private int iU;
    private int nC;
    private float[] nD;
    private float[] nE;
    private float[] nF;
    private float[] nG;
    private int[] nH;
    private int[] nI;
    private int[] nJ;
    private int nK;
    private float nL;
    private float nM;
    private int nN;
    private int nO;
    private K nP;
    private final aj nQ;
    private View nR;
    private boolean nS;
    private final ViewGroup nT;
    private final Runnable nU;
    
    static {
        ip = (Interpolator)new ah();
    }
    
    private ag(final Context context, final ViewGroup nt, final aj nq) {
        this.iU = -1;
        this.nU = new ai(this);
        if (nt == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (nq == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.nT = nt;
        this.nQ = nq;
        final ViewConfiguration value = ViewConfiguration.get(context);
        this.nN = (int)(0.5f + 20.0f * context.getResources().getDisplayMetrics().density);
        this.iP = value.getScaledTouchSlop();
        this.nL = value.getScaledMaximumFlingVelocity();
        this.nM = value.getScaledMinimumFlingVelocity();
        this.nP = K.a(context, ag.ip);
    }
    
    private void W(final int n) {
        if (this.nD == null) {
            return;
        }
        this.nD[n] = 0.0f;
        this.nE[n] = 0.0f;
        this.nF[n] = 0.0f;
        this.nG[n] = 0.0f;
        this.nH[n] = 0;
        this.nI[n] = 0;
        this.nJ[n] = 0;
        this.nK &= (-1 ^ 1 << n);
    }
    
    private int a(final int n, final int n2, final int n3) {
        if (n == 0) {
            return 0;
        }
        final int width = this.nT.getWidth();
        final int n4 = width / 2;
        final float n5 = n4 + n4 * (float)Math.sin((float)(0.4712389167638204 * (Math.min(1.0f, Math.abs(n) / width) - 0.5f)));
        final int abs = Math.abs(n2);
        int n6;
        if (abs > 0) {
            n6 = 4 * Math.round(1000.0f * Math.abs(n5 / abs));
        }
        else {
            n6 = (int)(256.0f * (1.0f + Math.abs(n) / n3));
        }
        return Math.min(n6, 600);
    }
    
    public static ag a(final ViewGroup viewGroup, final aj aj) {
        final ag ag = new ag(viewGroup.getContext(), viewGroup, aj);
        ag.iP *= (int)1.0f;
        return ag;
    }
    
    private void a(final float n, final float n2, final int n3) {
        if (this.nD == null || this.nD.length <= n3) {
            final float[] nd = new float[n3 + 1];
            final float[] ne = new float[n3 + 1];
            final float[] nf = new float[n3 + 1];
            final float[] ng = new float[n3 + 1];
            final int[] nh = new int[n3 + 1];
            final int[] ni = new int[n3 + 1];
            final int[] nj = new int[n3 + 1];
            if (this.nD != null) {
                System.arraycopy(this.nD, 0, nd, 0, this.nD.length);
                System.arraycopy(this.nE, 0, ne, 0, this.nE.length);
                System.arraycopy(this.nF, 0, nf, 0, this.nF.length);
                System.arraycopy(this.nG, 0, ng, 0, this.nG.length);
                System.arraycopy(this.nH, 0, nh, 0, this.nH.length);
                System.arraycopy(this.nI, 0, ni, 0, this.nI.length);
                System.arraycopy(this.nJ, 0, nj, 0, this.nJ.length);
            }
            this.nD = nd;
            this.nE = ne;
            this.nF = nf;
            this.nG = ng;
            this.nH = nh;
            this.nI = ni;
            this.nJ = nj;
        }
        this.nD[n3] = (this.nF[n3] = n);
        this.nE[n3] = (this.nG[n3] = n2);
        final int[] nh2 = this.nH;
        final int n4 = (int)n;
        final int n5 = (int)n2;
        final int n6 = this.nT.getLeft() + this.nN;
        int n7 = 0;
        if (n4 < n6) {
            n7 = 1;
        }
        if (n5 < this.nT.getTop() + this.nN) {
            n7 |= 0x4;
        }
        if (n4 > this.nT.getRight() - this.nN) {
            n7 |= 0x2;
        }
        if (n5 > this.nT.getBottom() - this.nN) {
            n7 |= 0x8;
        }
        nh2[n3] = n7;
        this.nK |= 1 << n3;
    }
    
    private boolean a(final float n, final float n2, final int n3, final int n4) {
        final float abs = Math.abs(n);
        final float abs2 = Math.abs(n2);
        if ((n4 & this.nH[n3]) == n4 && (n4 & this.nO) != 0x0 && (n4 & this.nJ[n3]) != n4 && (n4 & this.nI[n3]) != n4 && (abs > this.iP || abs2 > this.iP)) {
            if (abs < abs2 * 0.5f) {
                final aj nq = this.nQ;
            }
            if ((n4 & this.nI[n3]) == 0x0 && abs > this.iP) {
                return true;
            }
        }
        return false;
    }
    
    private static float b(final float n, final float n2, float n3) {
        final float abs = Math.abs(n);
        if (abs < n2) {
            n3 = 0.0f;
        }
        else {
            if (abs <= n3) {
                return n;
            }
            if (n <= 0.0f) {
                return -n3;
            }
        }
        return n3;
    }
    
    private static int b(final int n, final int n2, int n3) {
        final int abs = Math.abs(n);
        if (abs < n2) {
            n3 = 0;
        }
        else {
            if (abs <= n3) {
                return n;
            }
            if (n <= 0) {
                return -n3;
            }
        }
        return n3;
    }
    
    private void b(final float n, final float n2, final int n3) {
        int n4 = 1;
        if (!this.a(n, n2, n3, n4)) {
            n4 = 0;
        }
        if (this.a(n2, n, n3, 4)) {
            n4 |= 0x4;
        }
        if (this.a(n, n2, n3, 2)) {
            n4 |= 0x2;
        }
        if (this.a(n2, n, n3, 8)) {
            n4 |= 0x8;
        }
        if (n4 != 0) {
            final int[] ni = this.nI;
            ni[n3] |= n4;
            this.nQ.g(n4, n3);
        }
    }
    
    public static boolean b(final View view, final int n, final int n2) {
        return view != null && n >= view.getLeft() && n < view.getRight() && n2 >= view.getTop() && n2 < view.getBottom();
    }
    
    private boolean c(final int n, final int n2, final int n3, final int n4) {
        final int left = this.nR.getLeft();
        final int top = this.nR.getTop();
        final int n5 = n - left;
        final int n6 = n2 - top;
        if (n5 == 0 && n6 == 0) {
            this.nP.abortAnimation();
            this.X(0);
            return false;
        }
        final View nr = this.nR;
        final int b = b(n3, (int)this.nM, (int)this.nL);
        final int b2 = b(n4, (int)this.nM, (int)this.nL);
        final int abs = Math.abs(n5);
        final int abs2 = Math.abs(n6);
        final int abs3 = Math.abs(b);
        final int abs4 = Math.abs(b2);
        final int n7 = abs3 + abs4;
        final int n8 = abs + abs2;
        float n9;
        if (b != 0) {
            n9 = abs3 / n7;
        }
        else {
            n9 = abs / n8;
        }
        float n10;
        if (b2 != 0) {
            n10 = abs4 / n7;
        }
        else {
            n10 = abs2 / n8;
        }
        final int a = this.a(n5, b, this.nQ.U(nr));
        final aj nq = this.nQ;
        final int n11 = (int)(n9 * a + n10 * this.a(n6, b2, 0));
        final K np = this.nP;
        np.mx.a(np.mw, left, top, n5, n6, n11);
        this.X(2);
        return true;
    }
    
    private void cw() {
        this.hT.computeCurrentVelocity(1000, this.nL);
        final float b = b(Z.a(this.hT, this.iU), this.nM, this.nL);
        b(Z.b(this.hT, this.iU), this.nM, this.nL);
        this.o(b);
    }
    
    private void e(final MotionEvent motionEvent) {
        for (int c = P.c(motionEvent), i = 0; i < c; ++i) {
            final int b = P.b(motionEvent, i);
            final float c2 = P.c(motionEvent, i);
            final float d = P.d(motionEvent, i);
            this.nF[b] = c2;
            this.nG[b] = d;
        }
    }
    
    private boolean j(final View view, final int iu) {
        if (view == this.nR && this.iU == iu) {
            return true;
        }
        if (view != null && this.nQ.S(view)) {
            this.i(view, this.iU = iu);
            return true;
        }
        return false;
    }
    
    private boolean k(final View view, final float n) {
        if (view != null) {
            boolean b;
            if (this.nQ.U(view) > 0) {
                b = true;
            }
            else {
                b = false;
            }
            final aj nq = this.nQ;
            if (b && Math.abs(n) > this.iP) {
                return true;
            }
        }
        return false;
    }
    
    private void o(final float n) {
        this.nS = true;
        this.nQ.j(this.nR, n);
        this.nS = false;
        if (this.nC == 1) {
            this.X(0);
        }
    }
    
    public final void V(final int no) {
        this.nO = no;
    }
    
    final void X(final int nc) {
        if (this.nC != nc) {
            this.nC = nc;
            this.nQ.Q(nc);
            if (this.nC == 0) {
                this.nR = null;
            }
        }
    }
    
    public final boolean a(final View nr, final int n, final int n2) {
        this.nR = nr;
        this.iU = -1;
        final boolean c = this.c(n, n2, 0, 0);
        if (!c && this.nC == 0 && this.nR != null) {
            this.nR = null;
        }
        return c;
    }
    
    public final void abort() {
        this.cancel();
        if (this.nC == 2) {
            this.nP.getCurrX();
            this.nP.getCurrY();
            this.nP.abortAnimation();
            final int currX = this.nP.getCurrX();
            this.nP.getCurrY();
            this.nQ.g(this.nR, currX);
        }
        this.X(0);
    }
    
    public final void cancel() {
        this.iU = -1;
        if (this.nD != null) {
            Arrays.fill(this.nD, 0.0f);
            Arrays.fill(this.nE, 0.0f);
            Arrays.fill(this.nF, 0.0f);
            Arrays.fill(this.nG, 0.0f);
            Arrays.fill(this.nH, 0);
            Arrays.fill(this.nI, 0);
            Arrays.fill(this.nJ, 0);
            this.nK = 0;
        }
        if (this.hT != null) {
            this.hT.recycle();
            this.hT = null;
        }
    }
    
    public final int cr() {
        return this.nC;
    }
    
    public final int cs() {
        return this.nN;
    }
    
    public final View ct() {
        return this.nR;
    }
    
    public final boolean cu() {
        if (this.nC == 2) {
            final K np = this.nP;
            int i = np.mx.I(np.mw) ? 1 : 0;
            final int currX = this.nP.getCurrX();
            final int currY = this.nP.getCurrY();
            final int n = currX - this.nR.getLeft();
            final int n2 = currY - this.nR.getTop();
            if (n != 0) {
                this.nR.offsetLeftAndRight(n);
            }
            if (n2 != 0) {
                this.nR.offsetTopAndBottom(n2);
            }
            if (n != 0 || n2 != 0) {
                this.nQ.g(this.nR, currX);
            }
            if (i != 0) {
                final K np2 = this.nP;
                if (currX == np2.mx.K(np2.mw) && currY == this.nP.getFinalY()) {
                    this.nP.abortAnimation();
                    i = 0;
                }
            }
            if (i == 0) {
                this.nT.post(this.nU);
            }
        }
        final int nc = this.nC;
        boolean b = false;
        if (nc == 2) {
            b = true;
        }
        return b;
    }
    
    public final boolean cv() {
        for (int length = this.nD.length, i = 0; i < length; ++i) {
            int n;
            if ((this.nK & 1 << i) != 0x0) {
                n = 1;
            }
            else {
                n = 0;
            }
            int n4;
            if (n != 0) {
                final float n2 = this.nF[i] - this.nD[i];
                final float n3 = this.nG[i] - this.nE[i];
                if (n2 * n2 + n3 * n3 > this.iP * this.iP) {
                    n4 = 1;
                }
                else {
                    n4 = 0;
                }
            }
            else {
                n4 = 0;
            }
            if (n4 != 0) {
                return true;
            }
        }
        return false;
    }
    
    public final boolean f(final MotionEvent motionEvent) {
        final int a = P.a(motionEvent);
        final int b = P.b(motionEvent);
        if (a == 0) {
            this.cancel();
        }
        if (this.hT == null) {
            this.hT = VelocityTracker.obtain();
        }
        this.hT.addMovement(motionEvent);
        switch (a) {
            case 0: {
                final float x = motionEvent.getX();
                final float y = motionEvent.getY();
                final int b2 = P.b(motionEvent, 0);
                this.a(x, y, b2);
                final View m = this.m((int)x, (int)y);
                if (m == this.nR && this.nC == 2) {
                    this.j(m, b2);
                }
                if ((this.nH[b2] & this.nO) != 0x0) {
                    final aj nq = this.nQ;
                    final int no = this.nO;
                    nq.bU();
                    break;
                }
                break;
            }
            case 5: {
                final int b3 = P.b(motionEvent, b);
                final float c = P.c(motionEvent, b);
                final float d = P.d(motionEvent, b);
                this.a(c, d, b3);
                if (this.nC == 0) {
                    if ((this.nH[b3] & this.nO) != 0x0) {
                        final aj nq2 = this.nQ;
                        final int no2 = this.nO;
                        nq2.bU();
                        break;
                    }
                    break;
                }
                else {
                    if (this.nC != 2) {
                        break;
                    }
                    final View i = this.m((int)c, (int)d);
                    if (i == this.nR) {
                        this.j(i, b3);
                        break;
                    }
                    break;
                }
                break;
            }
            case 2: {
                for (int c2 = P.c(motionEvent), j = 0; j < c2; ++j) {
                    final int b4 = P.b(motionEvent, j);
                    final float c3 = P.c(motionEvent, j);
                    final float d2 = P.d(motionEvent, j);
                    final float n = c3 - this.nD[b4];
                    final float n2 = d2 - this.nE[b4];
                    final View k = this.m((int)c3, (int)d2);
                    boolean b5;
                    if (k != null && this.k(k, n)) {
                        b5 = true;
                    }
                    else {
                        b5 = false;
                    }
                    if (b5) {
                        final int left = k.getLeft();
                        final int h = this.nQ.h(k, left + (int)n);
                        k.getTop();
                        this.nQ.V(k);
                        final int u = this.nQ.U(k);
                        final aj nq3 = this.nQ;
                        if (u == 0 || (u > 0 && h == left)) {
                            break;
                        }
                    }
                    this.b(n, n2, b4);
                    if (this.nC == 1 || (b5 && this.j(k, b4))) {
                        break;
                    }
                }
                this.e(motionEvent);
                break;
            }
            case 6: {
                this.W(P.b(motionEvent, b));
                break;
            }
            case 1:
            case 3: {
                this.cancel();
                break;
            }
        }
        return this.nC == 1;
    }
    
    public final void g(final MotionEvent motionEvent) {
        int i = 0;
        final int a = P.a(motionEvent);
        final int b = P.b(motionEvent);
        if (a == 0) {
            this.cancel();
        }
        if (this.hT == null) {
            this.hT = VelocityTracker.obtain();
        }
        this.hT.addMovement(motionEvent);
        switch (a) {
            case 0: {
                final float x = motionEvent.getX();
                final float y = motionEvent.getY();
                final int b2 = P.b(motionEvent, 0);
                final View m = this.m((int)x, (int)y);
                this.a(x, y, b2);
                this.j(m, b2);
                if ((this.nH[b2] & this.nO) != 0x0) {
                    final aj nq = this.nQ;
                    final int no = this.nO;
                    nq.bU();
                    return;
                }
                break;
            }
            case 5: {
                final int b3 = P.b(motionEvent, b);
                final float c = P.c(motionEvent, b);
                final float d = P.d(motionEvent, b);
                this.a(c, d, b3);
                if (this.nC == 0) {
                    this.j(this.m((int)c, (int)d), b3);
                    if ((this.nH[b3] & this.nO) != 0x0) {
                        final aj nq2 = this.nQ;
                        final int no2 = this.nO;
                        nq2.bU();
                        return;
                    }
                    break;
                }
                else {
                    if (b(this.nR, (int)c, (int)d)) {
                        this.j(this.nR, b3);
                        return;
                    }
                    break;
                }
                break;
            }
            case 2: {
                if (this.nC == 1) {
                    final int a2 = P.a(motionEvent, this.iU);
                    final float c2 = P.c(motionEvent, a2);
                    final float d2 = P.d(motionEvent, a2);
                    final int n = (int)(c2 - this.nF[this.iU]);
                    final int n2 = (int)(d2 - this.nG[this.iU]);
                    int h = n + this.nR.getLeft();
                    this.nR.getTop();
                    final int left = this.nR.getLeft();
                    final int top = this.nR.getTop();
                    if (n != 0) {
                        h = this.nQ.h(this.nR, h);
                        this.nR.offsetLeftAndRight(h - left);
                    }
                    if (n2 != 0) {
                        this.nR.offsetTopAndBottom(this.nQ.V(this.nR) - top);
                    }
                    if (n != 0 || n2 != 0) {
                        this.nQ.g(this.nR, h);
                    }
                    this.e(motionEvent);
                    return;
                }
                while (i < P.c(motionEvent)) {
                    final int b4 = P.b(motionEvent, i);
                    final float c3 = P.c(motionEvent, i);
                    final float d3 = P.d(motionEvent, i);
                    final float n3 = c3 - this.nD[b4];
                    this.b(n3, d3 - this.nE[b4], b4);
                    if (this.nC == 1) {
                        break;
                    }
                    final View j = this.m((int)c3, (int)d3);
                    if (this.k(j, n3) && this.j(j, b4)) {
                        break;
                    }
                    ++i;
                }
                this.e(motionEvent);
            }
            case 6: {
                final int b5 = P.b(motionEvent, b);
                Label_0720: {
                    if (this.nC == 1 && b5 == this.iU) {
                        while (true) {
                            while (i < P.c(motionEvent)) {
                                final int b6 = P.b(motionEvent, i);
                                if (b6 != this.iU && this.m((int)P.c(motionEvent, i), (int)P.d(motionEvent, i)) == this.nR && this.j(this.nR, b6)) {
                                    final int iu = this.iU;
                                    if (iu == -1) {
                                        this.cw();
                                    }
                                    break Label_0720;
                                }
                                else {
                                    ++i;
                                }
                            }
                            final int iu = -1;
                            continue;
                        }
                    }
                }
                this.W(b5);
            }
            case 1: {
                if (this.nC == 1) {
                    this.cw();
                }
                this.cancel();
            }
            case 3: {
                if (this.nC == 1) {
                    this.o(0.0f);
                }
                this.cancel();
            }
        }
    }
    
    public final int getTouchSlop() {
        return this.iP;
    }
    
    public final void i(final View nr, final int iu) {
        if (nr.getParent() != this.nT) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.nT + ")");
        }
        this.nR = nr;
        this.iU = iu;
        this.nQ.T(nr);
        this.X(1);
    }
    
    public final boolean l(final int n, final int n2) {
        if (!this.nS) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return this.c(n, n2, (int)Z.a(this.hT, this.iU), (int)Z.b(this.hT, this.iU));
    }
    
    public final View m(final int n, final int n2) {
        for (int i = -1 + this.nT.getChildCount(); i >= 0; --i) {
            final ViewGroup nt = this.nT;
            final aj nq = this.nQ;
            final View child = nt.getChildAt(i);
            if (n >= child.getLeft() && n < child.getRight() && n2 >= child.getTop() && n2 < child.getBottom()) {
                return child;
            }
        }
        return null;
    }
    
    public final void n(final float nm) {
        this.nM = nm;
    }
}
