package android.support.v4.view;

import android.view.animation.*;
import android.graphics.drawable.*;
import android.widget.*;
import android.support.v4.widget.*;
import java.lang.reflect.*;
import android.content.*;
import android.content.res.*;
import android.util.*;
import java.util.*;
import android.database.*;
import android.os.*;
import android.view.accessibility.*;
import android.graphics.*;
import android.view.*;

public class ViewPager extends ViewGroup
{
    private static final int[] im;
    private static final Comparator<aI> io;
    private static final Interpolator ip;
    private static final aQ jn;
    private boolean aC;
    private VelocityTracker hT;
    private int iA;
    private Drawable iB;
    private int iC;
    private int iD;
    private float iE;
    private float iF;
    private int iG;
    private int iH;
    private boolean iI;
    private boolean iJ;
    private int iK;
    private boolean iL;
    private boolean iM;
    private int iN;
    private int iO;
    private int iP;
    private float iQ;
    private float iR;
    private float iS;
    private float iT;
    private int iU;
    private int iV;
    private int iW;
    private int iX;
    private int iY;
    private boolean iZ;
    private int in;
    private final ArrayList<aI> iq;
    private final aI ir;
    private final Rect is;
    private U it;
    private int iu;
    private int iv;
    private Parcelable iw;
    private ClassLoader ix;
    private Scroller iy;
    private aO iz;
    private s ja;
    private s jb;
    private boolean jc;
    private boolean jd;
    private boolean je;
    private int jf;
    private aM jg;
    private aM jh;
    private aL ji;
    private aN jj;
    private Method jk;
    private int jl;
    private ArrayList<View> jm;
    private final Runnable jo;
    private int jp;
    
    static {
        im = new int[] { 16842931 };
        io = new aE();
        ip = (Interpolator)new aF();
        jn = new aQ();
    }
    
    public ViewPager(final Context context) {
        super(context);
        this.iq = new ArrayList<aI>();
        this.ir = new aI();
        this.is = new Rect();
        this.iv = -1;
        this.iw = null;
        this.ix = null;
        this.iE = -3.4028235E38f;
        this.iF = Float.MAX_VALUE;
        this.iK = 1;
        this.iU = -1;
        this.jc = true;
        this.jd = false;
        this.jo = new aG(this);
        this.jp = 0;
        this.ba();
    }
    
    public ViewPager(final Context context, final AttributeSet set) {
        super(context, set);
        this.iq = new ArrayList<aI>();
        this.ir = new aI();
        this.is = new Rect();
        this.iv = -1;
        this.iw = null;
        this.ix = null;
        this.iE = -3.4028235E38f;
        this.iF = Float.MAX_VALUE;
        this.iK = 1;
        this.iU = -1;
        this.jc = true;
        this.jd = false;
        this.jo = new aG(this);
        this.jp = 0;
        this.ba();
    }
    
    private void A(final int iu) {
        aI ai;
        int n2;
        if (this.iu != iu) {
            int n;
            if (this.iu < iu) {
                n = 66;
            }
            else {
                n = 17;
            }
            final aI b = this.B(this.iu);
            this.iu = iu;
            ai = b;
            n2 = n;
        }
        else {
            n2 = 2;
            ai = null;
        }
        if (this.it == null) {
            this.bg();
        }
        else {
            if (this.iJ) {
                this.bg();
                return;
            }
            if (this.getWindowToken() != null) {
                final U it = this.it;
                final int ik = this.iK;
                final int max = Math.max(0, this.iu - ik);
                final int count = this.it.getCount();
                final int min = Math.min(count - 1, ik + this.iu);
                if (count != this.in) {
                    try {
                        final String s = this.getResources().getResourceName(this.getId());
                        throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.in + ", found: " + count + " Pager id: " + s + " Pager class: " + this.getClass() + " Problematic adapter: " + this.it.getClass());
                    }
                    catch (Resources$NotFoundException ex) {
                        final String s = Integer.toHexString(this.getId());
                        throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.in + ", found: " + count + " Pager id: " + s + " Pager class: " + this.getClass() + " Problematic adapter: " + this.it.getClass());
                    }
                }
                int i = 0;
                while (true) {
                    while (i < this.iq.size()) {
                        final aI ai2 = this.iq.get(i);
                        if (ai2.position >= this.iu) {
                            if (ai2.position != this.iu) {
                                break;
                            }
                            aI d;
                            if (ai2 == null && count > 0) {
                                d = this.d(this.iu, i);
                            }
                            else {
                                d = ai2;
                            }
                            if (d != null) {
                                final int n3 = i - 1;
                                aI ai3;
                                if (n3 >= 0) {
                                    ai3 = this.iq.get(n3);
                                }
                                else {
                                    ai3 = null;
                                }
                                final int bc = this.bc();
                                float n4;
                                if (bc <= 0) {
                                    n4 = 0.0f;
                                }
                                else {
                                    n4 = 2.0f - d.jt + this.getPaddingLeft() / bc;
                                }
                                final int n5 = -1 + this.iu;
                                float n6 = 0.0f;
                                int j = n5;
                                int n7 = i;
                                int n8 = n3;
                                while (j >= 0) {
                                    if (n6 >= n4 && j < max) {
                                        if (ai3 == null) {
                                            break;
                                        }
                                        if (j == ai3.position && !ai3.js) {
                                            this.iq.remove(n8);
                                            this.it.a(this, j, ai3.jr);
                                            --n8;
                                            --n7;
                                            if (n8 >= 0) {
                                                ai3 = this.iq.get(n8);
                                            }
                                            else {
                                                ai3 = null;
                                            }
                                        }
                                    }
                                    else if (ai3 != null && j == ai3.position) {
                                        n6 += ai3.jt;
                                        if (--n8 >= 0) {
                                            ai3 = this.iq.get(n8);
                                        }
                                        else {
                                            ai3 = null;
                                        }
                                    }
                                    else {
                                        n6 += this.d(j, n8 + 1).jt;
                                        ++n7;
                                        if (n8 >= 0) {
                                            ai3 = this.iq.get(n8);
                                        }
                                        else {
                                            ai3 = null;
                                        }
                                    }
                                    --j;
                                }
                                float jt = d.jt;
                                final int n9 = n7 + 1;
                                if (jt < 2.0f) {
                                    aI ai4;
                                    if (n9 < this.iq.size()) {
                                        ai4 = this.iq.get(n9);
                                    }
                                    else {
                                        ai4 = null;
                                    }
                                    float n10;
                                    if (bc <= 0) {
                                        n10 = 0.0f;
                                    }
                                    else {
                                        n10 = 2.0f + this.getPaddingRight() / bc;
                                    }
                                    final int n11 = 1 + this.iu;
                                    aI ai5 = ai4;
                                    int n12 = n9;
                                    aI ai7;
                                    float n14;
                                    float n18;
                                    for (int k = n11; k < count; ++k, n18 = n14, ai5 = ai7, jt = n18) {
                                        if (jt >= n10 && k > min) {
                                            if (ai5 == null) {
                                                break;
                                            }
                                            if (k == ai5.position && !ai5.js) {
                                                this.iq.remove(n12);
                                                this.it.a(this, k, ai5.jr);
                                                aI ai6;
                                                if (n12 < this.iq.size()) {
                                                    ai6 = this.iq.get(n12);
                                                }
                                                else {
                                                    ai6 = null;
                                                }
                                                final float n13 = jt;
                                                ai7 = ai6;
                                                n14 = n13;
                                            }
                                            else {
                                                final float n15 = jt;
                                                ai7 = ai5;
                                                n14 = n15;
                                            }
                                        }
                                        else if (ai5 != null && k == ai5.position) {
                                            final float n16 = jt + ai5.jt;
                                            aI ai8;
                                            if (++n12 < this.iq.size()) {
                                                ai8 = this.iq.get(n12);
                                            }
                                            else {
                                                ai8 = null;
                                            }
                                            ai7 = ai8;
                                            n14 = n16;
                                        }
                                        else {
                                            final aI d2 = this.d(k, n12);
                                            ++n12;
                                            final float n17 = jt + d2.jt;
                                            aI ai9;
                                            if (n12 < this.iq.size()) {
                                                ai9 = this.iq.get(n12);
                                            }
                                            else {
                                                ai9 = null;
                                            }
                                            ai7 = ai9;
                                            n14 = n17;
                                        }
                                    }
                                }
                                this.a(d, n7, ai);
                            }
                            final U it2 = this.it;
                            final int iu2 = this.iu;
                            Object jr;
                            if (d != null) {
                                jr = d.jr;
                            }
                            else {
                                jr = null;
                            }
                            it2.b(this, iu2, jr);
                            this.it.aW();
                            for (int childCount = this.getChildCount(), l = 0; l < childCount; ++l) {
                                final View child = this.getChildAt(l);
                                final aJ aj = (aJ)child.getLayoutParams();
                                aj.jx = l;
                                if (!aj.jv && aj.jt == 0.0f) {
                                    final aI y = this.y(child);
                                    if (y != null) {
                                        aj.jt = y.jt;
                                        aj.position = y.position;
                                    }
                                }
                            }
                            this.bg();
                            if (!this.hasFocus()) {
                                return;
                            }
                            final View focus = this.findFocus();
                            aI z;
                            if (focus != null) {
                                z = this.z(focus);
                            }
                            else {
                                z = null;
                            }
                            if (z == null || z.position != this.iu) {
                                for (int n19 = 0; n19 < this.getChildCount(); ++n19) {
                                    final View child2 = this.getChildAt(n19);
                                    final aI y2 = this.y(child2);
                                    if (y2 != null && y2.position == this.iu && child2.requestFocus(n2)) {
                                        break;
                                    }
                                }
                            }
                            return;
                        }
                        else {
                            ++i;
                        }
                    }
                    final aI ai2 = null;
                    continue;
                }
            }
        }
    }
    
    private aI B(final int n) {
        for (int i = 0; i < this.iq.size(); ++i) {
            final aI ai = this.iq.get(i);
            if (ai.position == n) {
                return ai;
            }
        }
        return null;
    }
    
    private boolean C(final int n) {
        boolean b;
        if (this.iq.size() == 0) {
            this.je = false;
            this.a(0, 0.0f, 0);
            final boolean je = this.je;
            b = false;
            if (!je) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
        }
        else {
            final aI bi = this.bi();
            final int bc = this.bc();
            final int n2 = bc + this.iA;
            final float n3 = this.iA / bc;
            final int position = bi.position;
            final float n4 = (n / bc - bi.ju) / (n3 + bi.jt);
            final int n5 = (int)(n4 * n2);
            this.je = false;
            this.a(position, n4, n5);
            if (!this.je) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            b = true;
        }
        return b;
    }
    
    private Rect a(final Rect rect, final View view) {
        Rect rect2;
        if (rect == null) {
            rect2 = new Rect();
        }
        else {
            rect2 = rect;
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewPager viewPager;
        for (ViewParent viewParent = view.getParent(); viewParent instanceof ViewGroup && viewParent != this; viewParent = viewPager.getParent()) {
            viewPager = (ViewPager)viewParent;
            rect2.left += viewPager.getLeft();
            rect2.right += viewPager.getRight();
            rect2.top += viewPager.getTop();
            rect2.bottom += viewPager.getBottom();
        }
        return rect2;
    }
    
    private void a(final int n, final float n2, final int n3) {
        if (this.jf > 0) {
            final int scrollX = this.getScrollX();
            int paddingLeft = this.getPaddingLeft();
            int paddingRight = this.getPaddingRight();
            final int width = this.getWidth();
            int n5 = 0;
            int n6 = 0;
            int n13;
            for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i, n13 = n6, paddingLeft = n5, paddingRight = n13) {
                final View child = this.getChildAt(i);
                final aJ aj = (aJ)child.getLayoutParams();
                if (aj.jv) {
                    int max = 0;
                    switch (0x7 & aj.gravity) {
                        default: {
                            max = paddingLeft;
                            final int n4 = paddingRight;
                            n5 = paddingLeft;
                            n6 = n4;
                            break;
                        }
                        case 3: {
                            final int n7 = paddingLeft + child.getWidth();
                            final int n8 = paddingLeft;
                            n6 = paddingRight;
                            n5 = n7;
                            max = n8;
                            break;
                        }
                        case 1: {
                            max = Math.max((width - child.getMeasuredWidth()) / 2, paddingLeft);
                            final int n9 = paddingRight;
                            n5 = paddingLeft;
                            n6 = n9;
                            break;
                        }
                        case 5: {
                            max = width - paddingRight - child.getMeasuredWidth();
                            final int n10 = paddingRight + child.getMeasuredWidth();
                            n5 = paddingLeft;
                            n6 = n10;
                            break;
                        }
                    }
                    final int n11 = max + scrollX - child.getLeft();
                    if (n11 != 0) {
                        child.offsetLeftAndRight(n11);
                    }
                }
                else {
                    final int n12 = paddingRight;
                    n5 = paddingLeft;
                    n6 = n12;
                }
            }
        }
        if (this.jg != null) {
            this.jg.a(n, n2, n3);
        }
        if (this.jh != null) {
            this.jh.a(n, n2, n3);
        }
        if (this.jj != null) {
            final int scrollX2 = this.getScrollX();
            for (int childCount2 = this.getChildCount(), j = 0; j < childCount2; ++j) {
                final View child2 = this.getChildAt(j);
                if (!((aJ)child2.getLayoutParams()).jv) {
                    this.jj.g(child2, (child2.getLeft() - scrollX2) / this.bc());
                }
            }
        }
        this.je = true;
    }
    
    private void a(final int n, final int n2, final int n3, final int n4) {
        if (n2 > 0 && !this.iq.isEmpty()) {
            final int n5 = this.getScrollX() / (n4 + (n2 - this.getPaddingLeft() - this.getPaddingRight())) * (n3 + (n - this.getPaddingLeft() - this.getPaddingRight()));
            this.scrollTo(n5, this.getScrollY());
            if (!this.iy.isFinished()) {
                this.iy.startScroll(n5, 0, (int)(this.B(this.iu).ju * n), 0, this.iy.getDuration() - this.iy.timePassed());
            }
        }
        else {
            final aI b = this.B(this.iu);
            float min;
            if (b != null) {
                min = Math.min(b.ju, this.iF);
            }
            else {
                min = 0.0f;
            }
            final int n6 = (int)(min * (n - this.getPaddingLeft() - this.getPaddingRight()));
            if (n6 != this.getScrollX()) {
                this.d(false);
                this.scrollTo(n6, this.getScrollY());
            }
        }
    }
    
    private void a(final int n, final boolean b, final int n2, final boolean b2) {
        final aI b3 = this.B(n);
        int n3 = 0;
        if (b3 != null) {
            n3 = (int)(this.bc() * Math.max(this.iE, Math.min(b3.ju, this.iF)));
        }
        if (b) {
            if (this.getChildCount() == 0) {
                this.setScrollingCacheEnabled(false);
            }
            else {
                final int scrollX = this.getScrollX();
                final int scrollY = this.getScrollY();
                final int n4 = n3 - scrollX;
                final int n5 = 0 - scrollY;
                if (n4 == 0 && n5 == 0) {
                    this.d(false);
                    this.bf();
                    this.x(0);
                }
                else {
                    this.setScrollingCacheEnabled(true);
                    this.x(2);
                    final int bc = this.bc();
                    final int n6 = bc / 2;
                    final float n7 = n6 + n6 * (float)Math.sin((float)(0.4712389167638204 * (Math.min(1.0f, 1.0f * Math.abs(n4) / bc) - 0.5f)));
                    final int abs = Math.abs(n2);
                    int n8;
                    if (abs > 0) {
                        n8 = 4 * Math.round(1000.0f * Math.abs(n7 / abs));
                    }
                    else {
                        final float n9 = bc;
                        final U it = this.it;
                        final int iu = this.iu;
                        n8 = (int)(100.0f * (1.0f + Math.abs(n4) / (n9 * 1.0f + this.iA)));
                    }
                    this.iy.startScroll(scrollX, scrollY, n4, n5, Math.min(n8, 600));
                    ad.i((View)this);
                }
            }
            if (b2 && this.jg != null) {
                this.jg.D(n);
            }
            if (b2 && this.jh != null) {
                this.jh.D(n);
            }
            return;
        }
        if (b2 && this.jg != null) {
            this.jg.D(n);
        }
        if (b2 && this.jh != null) {
            this.jh.D(n);
        }
        this.d(false);
        this.scrollTo(n3, 0);
        this.C(n3);
    }
    
    private void a(final int n, final boolean b, final boolean b2) {
        this.a(n, b, b2, 0);
    }
    
    private void a(int iu, final boolean b, final boolean b2, final int n) {
        if (this.it == null || this.it.getCount() <= 0) {
            this.setScrollingCacheEnabled(false);
            return;
        }
        if (!b2 && this.iu == iu && this.iq.size() != 0) {
            this.setScrollingCacheEnabled(false);
            return;
        }
        if (iu < 0) {
            iu = 0;
        }
        else if (iu >= this.it.getCount()) {
            iu = -1 + this.it.getCount();
        }
        final int ik = this.iK;
        if (iu > ik + this.iu || iu < this.iu - ik) {
            for (int i = 0; i < this.iq.size(); ++i) {
                this.iq.get(i).js = true;
            }
        }
        final int iu2 = this.iu;
        boolean b3 = false;
        if (iu2 != iu) {
            b3 = true;
        }
        if (this.jc) {
            this.iu = iu;
            if (b3 && this.jg != null) {
                this.jg.D(iu);
            }
            if (b3 && this.jh != null) {
                this.jh.D(iu);
            }
            this.requestLayout();
            return;
        }
        this.A(iu);
        this.a(iu, b, n, b3);
    }
    
    private void a(final aI ai, final int n, final aI ai2) {
        final int count = this.it.getCount();
        final int bc = this.bc();
        float n2;
        if (bc > 0) {
            n2 = this.iA / bc;
        }
        else {
            n2 = 0.0f;
        }
        if (ai2 != null) {
            final int position = ai2.position;
            if (position < ai.position) {
                final float n3 = n2 + (ai2.ju + ai2.jt);
                final int n4 = position + 1;
                float n5 = n3;
                int n11;
                for (int n6 = 0, n7 = n4; n7 <= ai.position && n6 < this.iq.size(); n7 = n11) {
                    aI ai3;
                    for (ai3 = this.iq.get(n6); n7 > ai3.position && n6 < -1 + this.iq.size(); ++n6, ai3 = this.iq.get(n6)) {}
                    final int n8 = n7;
                    float ju = n5;
                    int i;
                    float n9;
                    for (i = n8; i < ai3.position; ++i, ju = n9) {
                        final U it = this.it;
                        n9 = ju + (1.0f + n2);
                    }
                    ai3.ju = ju;
                    final float n10 = ju + (n2 + ai3.jt);
                    n11 = i + 1;
                    n5 = n10;
                }
            }
            else if (position > ai.position) {
                final int n12 = -1 + this.iq.size();
                final float ju2 = ai2.ju;
                final int n13 = position - 1;
                int n14 = n12;
                float n15 = ju2;
                int n20;
                for (int n16 = n13; n16 >= ai.position && n14 >= 0; n16 = n20) {
                    aI ai4;
                    for (ai4 = this.iq.get(n14); n16 < ai4.position && n14 > 0; --n14, ai4 = this.iq.get(n14)) {}
                    final int n17 = n16;
                    float n18 = n15;
                    int j;
                    float n19;
                    for (j = n17; j > ai4.position; --j, n18 = n19) {
                        final U it2 = this.it;
                        n19 = n18 - (1.0f + n2);
                    }
                    final float ju3 = n18 - (n2 + ai4.jt);
                    ai4.ju = ju3;
                    n20 = j - 1;
                    n15 = ju3;
                }
            }
        }
        final int size = this.iq.size();
        float ju4 = ai.ju;
        int k = -1 + ai.position;
        float ju5;
        if (ai.position == 0) {
            ju5 = ai.ju;
        }
        else {
            ju5 = -3.4028235E38f;
        }
        this.iE = ju5;
        float if1;
        if (ai.position == count - 1) {
            if1 = ai.ju + ai.jt - 1.0f;
        }
        else {
            if1 = Float.MAX_VALUE;
        }
        this.iF = if1;
        int n21;
        for (int l = n - 1; l >= 0; l = n21) {
            aI ai5;
            for (ai5 = this.iq.get(l); k > ai5.position; --k, ju4 -= 1.0f + n2) {
                final U it3 = this.it;
            }
            ju4 -= n2 + ai5.jt;
            ai5.ju = ju4;
            if (ai5.position == 0) {
                this.iE = ju4;
            }
            n21 = l - 1;
            --k;
        }
        float ju6 = n2 + (ai.ju + ai.jt);
        int n22 = 1 + ai.position;
        int n24;
        for (int n23 = n + 1; n23 < size; n23 = n24) {
            aI ai6;
            for (ai6 = this.iq.get(n23); n22 < ai6.position; ++n22, ju6 += 1.0f + n2) {
                final U it4 = this.it;
            }
            if (ai6.position == count - 1) {
                this.iF = ju6 + ai6.jt - 1.0f;
            }
            ai6.ju = ju6;
            ju6 += n2 + ai6.jt;
            n24 = n23 + 1;
            ++n22;
        }
        this.jd = false;
    }
    
    private boolean a(final float iq) {
        boolean b = true;
        final float n = this.iQ - iq;
        this.iQ = iq;
        final float n2 = n + this.getScrollX();
        final int bc = this.bc();
        float n3 = bc * this.iE;
        final float n4 = bc * this.iF;
        final aI ai = this.iq.get(0);
        final aI ai2 = this.iq.get(-1 + this.iq.size());
        boolean b2;
        if (ai.position != 0) {
            n3 = ai.ju * bc;
            b2 = false;
        }
        else {
            b2 = b;
        }
        float n5;
        if (ai2.position != -1 + this.it.getCount()) {
            n5 = ai2.ju * bc;
            b = false;
        }
        else {
            n5 = n4;
        }
        boolean b3;
        if (n2 < n3) {
            b3 = false;
            if (b2) {
                b3 = this.ja.f(Math.abs(n3 - n2) / bc);
            }
        }
        else if (n2 > n5) {
            b3 = false;
            if (b) {
                b3 = this.jb.f(Math.abs(n2 - n5) / bc);
            }
            n3 = n5;
        }
        else {
            n3 = n2;
            b3 = false;
        }
        this.iQ += n3 - (int)n3;
        this.scrollTo((int)n3, this.getScrollY());
        this.C((int)n3);
        return b3;
    }
    
    private boolean a(final View view, final boolean b, final int n, final int n2, final int n3) {
        if (view instanceof ViewGroup) {
            final ViewGroup viewGroup = (ViewGroup)view;
            final int scrollX = view.getScrollX();
            final int scrollY = view.getScrollY();
            for (int i = -1 + viewGroup.getChildCount(); i >= 0; --i) {
                final View child = viewGroup.getChildAt(i);
                if (n2 + scrollX >= child.getLeft() && n2 + scrollX < child.getRight() && n3 + scrollY >= child.getTop() && n3 + scrollY < child.getBottom() && this.a(child, true, n, n2 + scrollX - child.getLeft(), n3 + scrollY - child.getTop())) {
                    return true;
                }
            }
        }
        Label_0141: {
            break Label_0141;
        }
        if (!b || !ad.b(view, -n)) {
            return false;
        }
        return true;
    }
    
    private boolean arrowScroll(final int n) {
        final View focus = this.findFocus();
        View view = null;
        Label_0012: {
            if (focus == this) {
                view = null;
            }
            else {
                Label_0359: {
                    if (focus != null) {
                        ViewParent viewParent = focus.getParent();
                        while (true) {
                            while (viewParent instanceof ViewGroup) {
                                if (viewParent == this) {
                                    final int n2 = 1;
                                    if (n2 == 0) {
                                        final StringBuilder sb = new StringBuilder();
                                        sb.append(focus.getClass().getSimpleName());
                                        for (ViewParent viewParent2 = focus.getParent(); viewParent2 instanceof ViewGroup; viewParent2 = viewParent2.getParent()) {
                                            sb.append(" => ").append(viewParent2.getClass().getSimpleName());
                                        }
                                        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                                        view = null;
                                        break Label_0012;
                                    }
                                    break Label_0359;
                                }
                                else {
                                    viewParent = viewParent.getParent();
                                }
                            }
                            final int n2 = 0;
                            continue;
                        }
                    }
                }
                view = focus;
            }
        }
        final View nextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup)this, view, n);
        while (true) {
            Label_0353: {
                Label_0344: {
                    boolean b;
                    if (nextFocus != null && nextFocus != view) {
                        if (n == 17) {
                            final int left = this.a(this.is, nextFocus).left;
                            final int left2 = this.a(this.is, view).left;
                            if (view != null && left >= left2) {
                                b = this.bk();
                            }
                            else {
                                b = nextFocus.requestFocus();
                            }
                        }
                        else {
                            if (n != 66) {
                                break Label_0353;
                            }
                            final int left3 = this.a(this.is, nextFocus).left;
                            final int left4 = this.a(this.is, view).left;
                            if (view != null && left3 <= left4) {
                                break Label_0344;
                            }
                            b = nextFocus.requestFocus();
                        }
                    }
                    else if (n == 17 || n == 1) {
                        b = this.bk();
                    }
                    else {
                        if (n == 66 || n == 2) {
                            break Label_0344;
                        }
                        break Label_0353;
                    }
                    if (b) {
                        this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(n));
                    }
                    return b;
                }
                boolean b = this.bl();
                continue;
            }
            boolean b = false;
            continue;
        }
    }
    
    private void ba() {
        this.setWillNotDraw(false);
        this.setDescendantFocusability(262144);
        this.setFocusable(true);
        final Context context = this.getContext();
        this.iy = new Scroller(context, ViewPager.ip);
        final ViewConfiguration value = ViewConfiguration.get(context);
        final float density = context.getResources().getDisplayMetrics().density;
        this.iP = ar.a(value);
        this.iV = (int)(400.0f * density);
        this.iW = value.getScaledMaximumFlingVelocity();
        this.ja = new s(context);
        this.jb = new s(context);
        this.iX = (int)(25.0f * density);
        this.iY = (int)(2.0f * density);
        this.iN = (int)(16.0f * density);
        ad.a((View)this, new aK(this));
        if (ad.j((View)this) == 0) {
            ad.c((View)this, 1);
        }
    }
    
    private int bc() {
        return this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight();
    }
    
    private void bg() {
        if (this.jl != 0) {
            if (this.jm == null) {
                this.jm = new ArrayList<View>();
            }
            else {
                this.jm.clear();
            }
            for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
                this.jm.add(this.getChildAt(i));
            }
            Collections.sort(this.jm, ViewPager.jn);
        }
    }
    
    private void bh() {
        final ViewParent parent = this.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }
    
    private aI bi() {
        final int bc = this.bc();
        float n;
        if (bc > 0) {
            n = this.getScrollX() / bc;
        }
        else {
            n = 0.0f;
        }
        float n2;
        if (bc > 0) {
            n2 = this.iA / bc;
        }
        else {
            n2 = 0.0f;
        }
        float n3 = 0.0f;
        float n4 = 0.0f;
        int n5 = -1;
        int i = 0;
        int n6 = 1;
        aI ai = null;
        while (i < this.iq.size()) {
            final aI ai2 = this.iq.get(i);
            int n7;
            aI ai3;
            if (n6 == 0 && ai2.position != n5 + 1) {
                final aI ir = this.ir;
                ir.ju = n2 + (n3 + n4);
                ir.position = n5 + 1;
                final U it = this.it;
                final int position = ir.position;
                ir.jt = 1.0f;
                n7 = i - 1;
                ai3 = ir;
            }
            else {
                n7 = i;
                ai3 = ai2;
            }
            final float ju = ai3.ju;
            final float n8 = n2 + (ju + ai3.jt);
            if (n6 == 0 && n < ju) {
                break;
            }
            if (n < n8 || n7 == -1 + this.iq.size()) {
                ai = ai3;
                break;
            }
            final int position2 = ai3.position;
            final float jt = ai3.jt;
            final int n9 = n7 + 1;
            n4 = ju;
            n5 = position2;
            n3 = jt;
            ai = ai3;
            i = n9;
            n6 = 0;
        }
        return ai;
    }
    
    private void bj() {
        this.iL = false;
        this.iM = false;
        if (this.hT != null) {
            this.hT.recycle();
            this.hT = null;
        }
    }
    
    private boolean bk() {
        if (this.iu > 0) {
            this.b(-1 + this.iu, true);
            return true;
        }
        return false;
    }
    
    private boolean bl() {
        if (this.it != null && this.iu < -1 + this.it.getCount()) {
            this.b(1 + this.iu, true);
            return true;
        }
        return false;
    }
    
    private aI d(final int position, final int n) {
        final aI ai = new aI();
        ai.position = position;
        ai.jr = this.it.a(this, position);
        final U it = this.it;
        ai.jt = 1.0f;
        if (n < 0 || n >= this.iq.size()) {
            this.iq.add(ai);
            return ai;
        }
        this.iq.add(n, ai);
        return ai;
    }
    
    private void d(final MotionEvent motionEvent) {
        final int b = P.b(motionEvent);
        if (P.b(motionEvent, b) == this.iU) {
            int n;
            if (b == 0) {
                n = 1;
            }
            else {
                n = 0;
            }
            this.iQ = P.c(motionEvent, n);
            this.iU = P.b(motionEvent, n);
            if (this.hT != null) {
                this.hT.clear();
            }
        }
    }
    
    private void d(final boolean b) {
        boolean b2;
        if (this.jp == 2) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        if (b2) {
            this.setScrollingCacheEnabled(false);
            this.iy.abortAnimation();
            final int scrollX = this.getScrollX();
            final int scrollY = this.getScrollY();
            final int currX = this.iy.getCurrX();
            final int currY = this.iy.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                this.scrollTo(currX, currY);
            }
        }
        this.iJ = false;
        int i = 0;
        int n = b2 ? 1 : 0;
        while (i < this.iq.size()) {
            final aI ai = this.iq.get(i);
            if (ai.js) {
                ai.js = false;
                n = 1;
            }
            ++i;
        }
        if (n != 0) {
            if (!b) {
                this.jo.run();
                return;
            }
            ad.a((View)this, this.jo);
        }
    }
    
    private void setScrollingCacheEnabled(final boolean ii) {
        if (this.iI != ii) {
            this.iI = ii;
        }
    }
    
    private void x(final int jp) {
        if (this.jp != jp) {
            this.jp = jp;
            if (this.jj != null) {
                int n;
                if (jp != 0) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
                    int n2;
                    if (n != 0) {
                        n2 = 2;
                    }
                    else {
                        n2 = 0;
                    }
                    ad.a(this.getChildAt(i), n2, null);
                }
            }
            if (this.jg != null) {
                this.jg.E(jp);
            }
        }
    }
    
    private aI y(final View view) {
        for (int i = 0; i < this.iq.size(); ++i) {
            final aI ai = this.iq.get(i);
            if (this.it.b(view, ai.jr)) {
                return ai;
            }
        }
        return null;
    }
    
    private aI z(View view) {
        while (true) {
            final ViewParent parent = view.getParent();
            if (parent == this) {
                return this.y(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View)parent;
        }
    }
    
    public final void a(final U it) {
        if (this.it != null) {
            this.it.unregisterDataSetObserver(this.iz);
            final U it2 = this.it;
            for (int i = 0; i < this.iq.size(); ++i) {
                final aI ai = this.iq.get(i);
                this.it.a(this, ai.position, ai.jr);
            }
            this.it.aW();
            this.iq.clear();
            for (int j = 0; j < this.getChildCount(); ++j) {
                if (!((aJ)this.getChildAt(j).getLayoutParams()).jv) {
                    this.removeViewAt(j);
                    --j;
                }
            }
            this.scrollTo(this.iu = 0, 0);
        }
        final U it3 = this.it;
        this.it = it;
        this.in = 0;
        if (this.it != null) {
            if (this.iz == null) {
                this.iz = new aO(this, (byte)0);
            }
            this.it.registerDataSetObserver(this.iz);
            this.iJ = false;
            final boolean jc = this.jc;
            this.jc = true;
            this.in = this.it.getCount();
            if (this.iv >= 0) {
                this.it.a(this.iw, this.ix);
                this.a(this.iv, false, true);
                this.iv = -1;
                this.iw = null;
                this.ix = null;
            }
            else if (!jc) {
                this.bf();
            }
            else {
                this.requestLayout();
            }
        }
        if (this.ji != null && it3 != it) {
            final aL ji = this.ji;
        }
    }
    
    public final void a(final aM jg) {
        this.jg = jg;
    }
    
    public final void a(final aN p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_2       
        //     2: getstatic       android/os/Build$VERSION.SDK_INT:I
        //     5: bipush          11
        //     7: if_icmplt       125
        //    10: aload_1        
        //    11: ifnull          126
        //    14: iload_2        
        //    15: istore_3       
        //    16: aload_0        
        //    17: getfield        android/support/v4/view/ViewPager.jj:Landroid/support/v4/view/aN;
        //    20: ifnull          131
        //    23: iload_2        
        //    24: istore          4
        //    26: iload_3        
        //    27: iload           4
        //    29: if_icmpeq       137
        //    32: aload_0        
        //    33: aload_1        
        //    34: putfield        android/support/v4/view/ViewPager.jj:Landroid/support/v4/view/aN;
        //    37: getstatic       android/os/Build$VERSION.SDK_INT:I
        //    40: bipush          7
        //    42: if_icmplt       108
        //    45: aload_0        
        //    46: getfield        android/support/v4/view/ViewPager.jk:Ljava/lang/reflect/Method;
        //    49: ifnonnull       79
        //    52: iconst_1       
        //    53: anewarray       Ljava/lang/Class;
        //    56: astore          12
        //    58: aload           12
        //    60: iconst_0       
        //    61: getstatic       java/lang/Boolean.TYPE:Ljava/lang/Class;
        //    64: aastore        
        //    65: aload_0        
        //    66: ldc             Landroid/view/ViewGroup;.class
        //    68: ldc_w           "setChildrenDrawingOrderEnabled"
        //    71: aload           12
        //    73: invokevirtual   java/lang/Class.getDeclaredMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //    76: putfield        android/support/v4/view/ViewPager.jk:Ljava/lang/reflect/Method;
        //    79: aload_0        
        //    80: getfield        android/support/v4/view/ViewPager.jk:Ljava/lang/reflect/Method;
        //    83: astore          7
        //    85: iconst_1       
        //    86: anewarray       Ljava/lang/Object;
        //    89: astore          8
        //    91: aload           8
        //    93: iconst_0       
        //    94: iload_3        
        //    95: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    98: aastore        
        //    99: aload           7
        //   101: aload_0        
        //   102: aload           8
        //   104: invokevirtual   java/lang/reflect/Method.invoke:(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
        //   107: pop            
        //   108: iload_3        
        //   109: ifeq            176
        //   112: aload_0        
        //   113: iconst_2       
        //   114: putfield        android/support/v4/view/ViewPager.jl:I
        //   117: iload_2        
        //   118: ifeq            125
        //   121: aload_0        
        //   122: invokevirtual   android/support/v4/view/ViewPager.bf:()V
        //   125: return         
        //   126: iconst_0       
        //   127: istore_3       
        //   128: goto            16
        //   131: iconst_0       
        //   132: istore          4
        //   134: goto            26
        //   137: iconst_0       
        //   138: istore_2       
        //   139: goto            32
        //   142: astore          10
        //   144: ldc_w           "ViewPager"
        //   147: ldc_w           "Can't find setChildrenDrawingOrderEnabled"
        //   150: aload           10
        //   152: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   155: pop            
        //   156: goto            79
        //   159: astore          5
        //   161: ldc_w           "ViewPager"
        //   164: ldc_w           "Error changing children drawing order"
        //   167: aload           5
        //   169: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   172: pop            
        //   173: goto            108
        //   176: aload_0        
        //   177: iconst_0       
        //   178: putfield        android/support/v4/view/ViewPager.jl:I
        //   181: goto            117
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  52     79     142    159    Ljava/lang/NoSuchMethodException;
        //  79     108    159    176    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0079:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void addFocusables(final ArrayList<View> list, final int n, final int n2) {
        final int size = list.size();
        final int descendantFocusability = this.getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i = 0; i < this.getChildCount(); ++i) {
                final View child = this.getChildAt(i);
                if (child.getVisibility() == 0) {
                    final aI y = this.y(child);
                    if (y != null && y.position == this.iu) {
                        child.addFocusables((ArrayList)list, n, n2);
                    }
                }
            }
        }
        if ((descendantFocusability != 262144 || size == list.size()) && this.isFocusable() && ((n2 & 0x1) != 0x1 || !this.isInTouchMode() || this.isFocusableInTouchMode()) && list != null) {
            list.add((View)this);
        }
    }
    
    public void addTouchables(final ArrayList<View> list) {
        for (int i = 0; i < this.getChildCount(); ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() == 0) {
                final aI y = this.y(child);
                if (y != null && y.position == this.iu) {
                    child.addTouchables((ArrayList)list);
                }
            }
        }
    }
    
    public void addView(final View view, final int n, final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        ViewGroup$LayoutParams generateLayoutParams;
        if (!this.checkLayoutParams(viewGroup$LayoutParams)) {
            generateLayoutParams = this.generateLayoutParams(viewGroup$LayoutParams);
        }
        else {
            generateLayoutParams = viewGroup$LayoutParams;
        }
        final aJ aj = (aJ)generateLayoutParams;
        aj.jv |= (view instanceof aH);
        if (!this.aC) {
            super.addView(view, n, generateLayoutParams);
            return;
        }
        if (aj != null && aj.jv) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        aj.jw = true;
        this.addViewInLayout(view, n, generateLayoutParams);
    }
    
    public final void b(final int n, final boolean b) {
        this.a(n, b, this.iJ = false);
    }
    
    public final U bb() {
        return this.it;
    }
    
    public final int bd() {
        return this.iu;
    }
    
    final void be() {
        final int count = this.it.getCount();
        this.in = count;
        int n;
        if (this.iq.size() < 1 + 2 * this.iK && this.iq.size() < count) {
            n = 1;
        }
        else {
            n = 0;
        }
        final int iu = this.iu;
        int n2 = 0;
        int n3 = iu;
        int n4 = n;
        int i = 0;
    Label_0204_Outer:
        while (i < this.iq.size()) {
            final aI ai = this.iq.get(i);
            final int f = this.it.f(ai.jr);
            while (true) {
                Label_0375: {
                    if (f == -1) {
                        break Label_0375;
                    }
                    int n6;
                    int n7;
                    int n8;
                    int n9;
                    if (f == -2) {
                        this.iq.remove(i);
                        final int n5 = i - 1;
                        if (n2 == 0) {
                            final U it = this.it;
                            n2 = 1;
                        }
                        this.it.a(this, ai.position, ai.jr);
                        if (this.iu == ai.position) {
                            final int max = Math.max(0, Math.min(this.iu, count - 1));
                            n6 = n5;
                            n7 = n2;
                            n8 = max;
                            n9 = 1;
                        }
                        else {
                            n6 = n5;
                            n7 = n2;
                            n8 = n3;
                            n9 = 1;
                        }
                    }
                    else {
                        if (ai.position == f) {
                            break Label_0375;
                        }
                        if (ai.position == this.iu) {
                            n3 = f;
                        }
                        ai.position = f;
                        n6 = i;
                        n7 = n2;
                        n8 = n3;
                        n9 = 1;
                    }
                    final int n10 = n6 + 1;
                    n4 = n9;
                    n3 = n8;
                    n2 = n7;
                    i = n10;
                    continue Label_0204_Outer;
                }
                int n6 = i;
                int n7 = n2;
                int n8 = n3;
                int n9 = n4;
                continue;
            }
        }
        if (n2 != 0) {
            this.it.aW();
        }
        Collections.sort(this.iq, ViewPager.io);
        if (n4 != 0) {
            for (int childCount = this.getChildCount(), j = 0; j < childCount; ++j) {
                final aJ aj = (aJ)this.getChildAt(j).getLayoutParams();
                if (!aj.jv) {
                    aj.jt = 0.0f;
                }
            }
            this.a(n3, false, true);
            this.requestLayout();
        }
    }
    
    final void bf() {
        this.A(this.iu);
    }
    
    public final void c(final Drawable ib) {
        this.iB = ib;
        if (ib != null) {
            this.refreshDrawableState();
        }
        this.setWillNotDraw(ib == null);
        this.invalidate();
    }
    
    public boolean canScrollHorizontally(final int n) {
        if (this.it != null) {
            final int bc = this.bc();
            final int scrollX = this.getScrollX();
            if (n < 0) {
                if (scrollX > (int)(bc * this.iE)) {
                    return true;
                }
            }
            else if (n > 0 && scrollX < (int)(bc * this.iF)) {
                return true;
            }
        }
        return false;
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof aJ && super.checkLayoutParams(viewGroup$LayoutParams);
    }
    
    public void computeScroll() {
        if (!this.iy.isFinished() && this.iy.computeScrollOffset()) {
            final int scrollX = this.getScrollX();
            final int scrollY = this.getScrollY();
            final int currX = this.iy.getCurrX();
            final int currY = this.iy.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                this.scrollTo(currX, currY);
                if (!this.C(currX)) {
                    this.iy.abortAnimation();
                    this.scrollTo(0, currY);
                }
            }
            ad.i((View)this);
            return;
        }
        this.d(true);
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        if (!super.dispatchKeyEvent(keyEvent)) {
            boolean b = false;
            Label_0054: {
                if (keyEvent.getAction() == 0) {
                    switch (keyEvent.getKeyCode()) {
                        case 21: {
                            b = this.arrowScroll(17);
                            break Label_0054;
                        }
                        case 22: {
                            b = this.arrowScroll(66);
                            break Label_0054;
                        }
                        case 61: {
                            if (Build$VERSION.SDK_INT < 11) {
                                break;
                            }
                            if (A.b(keyEvent)) {
                                b = this.arrowScroll(2);
                                break Label_0054;
                            }
                            if (A.a(keyEvent)) {
                                b = this.arrowScroll(1);
                                break Label_0054;
                            }
                            break;
                        }
                    }
                }
                b = false;
            }
            final boolean b2 = false;
            if (!b) {
                return b2;
            }
        }
        return true;
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 4096) {
            final int childCount = this.getChildCount();
            int n = 0;
            while (true) {
                final boolean dispatchPopulateAccessibilityEvent = false;
                if (n >= childCount) {
                    return dispatchPopulateAccessibilityEvent;
                }
                final View child = this.getChildAt(n);
                if (child.getVisibility() == 0) {
                    final aI y = this.y(child);
                    if (y != null && y.position == this.iu && child.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                        break;
                    }
                }
                ++n;
            }
            return true;
        }
        return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }
    
    public void draw(final Canvas canvas) {
        super.draw(canvas);
        final int h = ad.h((View)this);
        boolean b;
        if (h == 0 || (h == 1 && this.it != null && this.it.getCount() > 1)) {
            final boolean finished = this.ja.isFinished();
            b = false;
            if (!finished) {
                final int save = canvas.save();
                final int n = this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
                final int width = this.getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float)(-n + this.getPaddingTop()), this.iE * width);
                this.ja.setSize(n, width);
                b = (false | this.ja.draw(canvas));
                canvas.restoreToCount(save);
            }
            if (!this.jb.isFinished()) {
                final int save2 = canvas.save();
                final int width2 = this.getWidth();
                final int n2 = this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float)(-this.getPaddingTop()), -(1.0f + this.iF) * width2);
                this.jb.setSize(n2, width2);
                b |= this.jb.draw(canvas);
                canvas.restoreToCount(save2);
            }
        }
        else {
            this.ja.finish();
            this.jb.finish();
            b = false;
        }
        if (b) {
            ad.i((View)this);
        }
    }
    
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        final Drawable ib = this.iB;
        if (ib != null && ib.isStateful()) {
            ib.setState(this.getDrawableState());
        }
    }
    
    protected ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new aJ();
    }
    
    public ViewGroup$LayoutParams generateLayoutParams(final AttributeSet set) {
        return new aJ(this.getContext(), set);
    }
    
    protected ViewGroup$LayoutParams generateLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return this.generateDefaultLayoutParams();
    }
    
    protected int getChildDrawingOrder(final int n, int n2) {
        if (this.jl == 2) {
            n2 = n - 1 - n2;
        }
        return ((aJ)this.jm.get(n2).getLayoutParams()).jx;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.jc = true;
    }
    
    protected void onDetachedFromWindow() {
        this.removeCallbacks(this.jo);
        super.onDetachedFromWindow();
    }
    
    protected void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        if (this.iA > 0 && this.iB != null && this.iq.size() > 0 && this.it != null) {
            final int scrollX = this.getScrollX();
            final int width = this.getWidth();
            final float n = this.iA / width;
            aI ai = this.iq.get(0);
            float ju = ai.ju;
            final int size = this.iq.size();
            final int position = ai.position;
            final int position2 = this.iq.get(size - 1).position;
            int n2 = 0;
            for (int i = position; i < position2; ++i) {
                while (i > ai.position && n2 < size) {
                    final ArrayList<aI> iq = this.iq;
                    ++n2;
                    ai = iq.get(n2);
                }
                float n3;
                if (i == ai.position) {
                    n3 = (ai.ju + ai.jt) * width;
                    ju = n + (ai.ju + ai.jt);
                }
                else {
                    final U it = this.it;
                    n3 = (1.0f + ju) * width;
                    ju += 1.0f + n;
                }
                if (n3 + this.iA > scrollX) {
                    this.iB.setBounds((int)n3, this.iC, (int)(0.5f + (n3 + this.iA)), this.iD);
                    this.iB.draw(canvas);
                }
                if (n3 > scrollX + width) {
                    break;
                }
            }
        }
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        final int n = 0xFF & motionEvent.getAction();
        if (n != 3 && n != 1) {
            if (n != 0) {
                if (this.iL) {
                    return true;
                }
                if (this.iM) {
                    return false;
                }
            }
            switch (n) {
                case 2: {
                    final int iu = this.iU;
                    if (iu == -1) {
                        break;
                    }
                    final int a = P.a(motionEvent, iu);
                    final float c = P.c(motionEvent, a);
                    final float n2 = c - this.iQ;
                    final float abs = Math.abs(n2);
                    final float d = P.d(motionEvent, a);
                    final float abs2 = Math.abs(d - this.iT);
                    if (n2 != 0.0f) {
                        final float iq = this.iQ;
                        boolean b;
                        if ((iq < this.iO && n2 > 0.0f) || (iq > this.getWidth() - this.iO && n2 < 0.0f)) {
                            b = true;
                        }
                        else {
                            b = false;
                        }
                        if (!b && this.a((View)this, false, (int)n2, (int)c, (int)d)) {
                            this.iQ = c;
                            this.iR = d;
                            this.iM = true;
                            return false;
                        }
                    }
                    if (abs > this.iP && 0.5f * abs > abs2) {
                        this.iL = true;
                        this.bh();
                        this.x(1);
                        float iq2;
                        if (n2 > 0.0f) {
                            iq2 = this.iS + this.iP;
                        }
                        else {
                            iq2 = this.iS - this.iP;
                        }
                        this.iQ = iq2;
                        this.iR = d;
                        this.setScrollingCacheEnabled(true);
                    }
                    else if (abs2 > this.iP) {
                        this.iM = true;
                    }
                    if (this.iL && this.a(c)) {
                        ad.i((View)this);
                        break;
                    }
                    break;
                }
                case 0: {
                    final float x = motionEvent.getX();
                    this.iS = x;
                    this.iQ = x;
                    final float y = motionEvent.getY();
                    this.iT = y;
                    this.iR = y;
                    this.iU = P.b(motionEvent, 0);
                    this.iM = false;
                    this.iy.computeScrollOffset();
                    if (this.jp == 2 && Math.abs(this.iy.getFinalX() - this.iy.getCurrX()) > this.iY) {
                        this.iy.abortAnimation();
                        this.iJ = false;
                        this.bf();
                        this.iL = true;
                        this.bh();
                        this.x(1);
                        break;
                    }
                    this.d(false);
                    this.iL = false;
                    break;
                }
                case 6: {
                    this.d(motionEvent);
                    break;
                }
            }
            if (this.hT == null) {
                this.hT = VelocityTracker.obtain();
            }
            this.hT.addMovement(motionEvent);
            return this.iL;
        }
        this.iL = false;
        this.iM = false;
        this.iU = -1;
        if (this.hT != null) {
            this.hT.recycle();
            this.hT = null;
        }
        return false;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        final int childCount = this.getChildCount();
        final int n5 = n3 - n;
        final int n6 = n4 - n2;
        int paddingLeft = this.getPaddingLeft();
        int paddingTop = this.getPaddingTop();
        int paddingRight = this.getPaddingRight();
        int paddingBottom = this.getPaddingBottom();
        final int scrollX = this.getScrollX();
        int jf = 0;
        int i = 0;
    Label_0262_Outer:
        while (i < childCount) {
            final View child = this.getChildAt(i);
            while (true) {
                Label_0659: {
                    if (child.getVisibility() == 8) {
                        break Label_0659;
                    }
                    final aJ aj = (aJ)child.getLayoutParams();
                    if (!aj.jv) {
                        break Label_0659;
                    }
                    final int n7 = 0x7 & aj.gravity;
                    final int n8 = 0x70 & aj.gravity;
                    int max = 0;
                    switch (n7) {
                        default: {
                            max = paddingLeft;
                            break;
                        }
                        case 3: {
                            final int n9 = paddingLeft + child.getMeasuredWidth();
                            max = paddingLeft;
                            paddingLeft = n9;
                            break;
                        }
                        case 1: {
                            max = Math.max((n5 - child.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        }
                        case 5: {
                            final int n10 = n5 - paddingRight - child.getMeasuredWidth();
                            paddingRight += child.getMeasuredWidth();
                            max = n10;
                            break;
                        }
                    }
                    int max2 = 0;
                    int n12 = 0;
                    int n13 = 0;
                    switch (n8) {
                        default: {
                            max2 = paddingTop;
                            final int n11 = paddingBottom;
                            n12 = paddingTop;
                            n13 = n11;
                            break;
                        }
                        case 48: {
                            final int n14 = paddingTop + child.getMeasuredHeight();
                            final int n15 = paddingTop;
                            n13 = paddingBottom;
                            n12 = n14;
                            max2 = n15;
                            break;
                        }
                        case 16: {
                            max2 = Math.max((n6 - child.getMeasuredHeight()) / 2, paddingTop);
                            final int n16 = paddingBottom;
                            n12 = paddingTop;
                            n13 = n16;
                            break;
                        }
                        case 80: {
                            max2 = n6 - paddingBottom - child.getMeasuredHeight();
                            final int n17 = paddingBottom + child.getMeasuredHeight();
                            n12 = paddingTop;
                            n13 = n17;
                            break;
                        }
                    }
                    final int n18 = max + scrollX;
                    child.layout(n18, max2, n18 + child.getMeasuredWidth(), max2 + child.getMeasuredHeight());
                    final int n19 = jf + 1;
                    final int n20 = n12;
                    paddingBottom = n13;
                    final int n21 = paddingRight;
                    final int n22 = paddingLeft;
                    ++i;
                    paddingLeft = n22;
                    paddingRight = n21;
                    paddingTop = n20;
                    jf = n19;
                    continue Label_0262_Outer;
                }
                final int n19 = jf;
                final int n20 = paddingTop;
                final int n21 = paddingRight;
                final int n22 = paddingLeft;
                continue;
            }
        }
        final int n23 = n5 - paddingLeft - paddingRight;
        for (int j = 0; j < childCount; ++j) {
            final View child2 = this.getChildAt(j);
            if (child2.getVisibility() != 8) {
                final aJ aj2 = (aJ)child2.getLayoutParams();
                if (!aj2.jv) {
                    final aI y = this.y(child2);
                    if (y != null) {
                        final int n24 = paddingLeft + (int)(n23 * y.ju);
                        if (aj2.jw) {
                            aj2.jw = false;
                            child2.measure(View$MeasureSpec.makeMeasureSpec((int)(n23 * aj2.jt), 1073741824), View$MeasureSpec.makeMeasureSpec(n6 - paddingTop - paddingBottom, 1073741824));
                        }
                        child2.layout(n24, paddingTop, n24 + child2.getMeasuredWidth(), paddingTop + child2.getMeasuredHeight());
                    }
                }
            }
        }
        this.iC = paddingTop;
        this.iD = n6 - paddingBottom;
        this.jf = jf;
        if (this.jc) {
            this.a(this.iu, false, 0, false);
        }
        this.jc = false;
    }
    
    protected void onMeasure(final int n, final int n2) {
        this.setMeasuredDimension(getDefaultSize(0, n), getDefaultSize(0, n2));
        final int measuredWidth = this.getMeasuredWidth();
        this.iO = Math.min(measuredWidth / 10, this.iN);
        int n3 = measuredWidth - this.getPaddingLeft() - this.getPaddingRight();
        int n4 = this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom();
    Label_0288:
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                final aJ aj = (aJ)child.getLayoutParams();
                if (aj != null && aj.jv) {
                    final int n5 = 0x7 & aj.gravity;
                    final int n6 = 0x70 & aj.gravity;
                    int n7 = Integer.MIN_VALUE;
                    int n8 = Integer.MIN_VALUE;
                    boolean b;
                    if (n6 == 48 || n6 == 80) {
                        b = true;
                    }
                    else {
                        b = false;
                    }
                    final boolean b2 = n5 == 3 || n5 == 5;
                    if (b) {
                        n7 = 1073741824;
                    }
                    else if (b2) {
                        n8 = 1073741824;
                    }
                    int n9;
                    int width;
                    if (aj.width != -2) {
                        n9 = 1073741824;
                        if (aj.width != -1) {
                            width = aj.width;
                        }
                        else {
                            width = n3;
                        }
                    }
                    else {
                        n9 = n7;
                        width = n3;
                    }
                    while (true) {
                        Label_0464: {
                            if (aj.height == -2) {
                                break Label_0464;
                            }
                            n8 = 1073741824;
                            if (aj.height == -1) {
                                break Label_0464;
                            }
                            final int height = aj.height;
                            child.measure(View$MeasureSpec.makeMeasureSpec(width, n9), View$MeasureSpec.makeMeasureSpec(height, n8));
                            if (b) {
                                n4 -= child.getMeasuredHeight();
                                continue Label_0288;
                            }
                            if (b2) {
                                n3 -= child.getMeasuredWidth();
                            }
                            continue Label_0288;
                        }
                        final int height = n4;
                        continue;
                    }
                }
            }
        }
        this.iG = View$MeasureSpec.makeMeasureSpec(n3, 1073741824);
        this.iH = View$MeasureSpec.makeMeasureSpec(n4, 1073741824);
        this.aC = true;
        this.bf();
        this.aC = false;
        for (int childCount2 = this.getChildCount(), j = 0; j < childCount2; ++j) {
            final View child2 = this.getChildAt(j);
            if (child2.getVisibility() != 8) {
                final aJ aj2 = (aJ)child2.getLayoutParams();
                if (aj2 == null || !aj2.jv) {
                    child2.measure(View$MeasureSpec.makeMeasureSpec((int)(n3 * aj2.jt), 1073741824), this.iH);
                }
            }
        }
    }
    
    protected boolean onRequestFocusInDescendants(final int n, final Rect rect) {
        int n2 = -1;
        int childCount = this.getChildCount();
        int i;
        if ((n & 0x2) != 0x0) {
            n2 = 1;
            i = 0;
        }
        else {
            i = childCount - 1;
            childCount = n2;
        }
        while (i != childCount) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() == 0) {
                final aI y = this.y(child);
                if (y != null && y.position == this.iu && child.requestFocus(n, rect)) {
                    return true;
                }
            }
            i += n2;
        }
        return false;
    }
    
    public void onRestoreInstanceState(final Parcelable parcelable) {
        if (!(parcelable instanceof ViewPager$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        final ViewPager$SavedState viewPager$SavedState = (ViewPager$SavedState)parcelable;
        super.onRestoreInstanceState(viewPager$SavedState.getSuperState());
        if (this.it != null) {
            this.it.a(viewPager$SavedState.jy, viewPager$SavedState.jz);
            this.a(viewPager$SavedState.position, false, true);
            return;
        }
        this.iv = viewPager$SavedState.position;
        this.iw = viewPager$SavedState.jy;
        this.ix = viewPager$SavedState.jz;
    }
    
    public Parcelable onSaveInstanceState() {
        final ViewPager$SavedState viewPager$SavedState = new ViewPager$SavedState(super.onSaveInstanceState());
        viewPager$SavedState.position = this.iu;
        if (this.it != null) {
            viewPager$SavedState.jy = this.it.aY();
        }
        return (Parcelable)viewPager$SavedState;
    }
    
    protected void onSizeChanged(final int n, final int n2, final int n3, final int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        if (n != n3) {
            this.a(n, n3, this.iA, this.iA);
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        if (this.iZ) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.it == null || this.it.getCount() == 0) {
            return false;
        }
        if (this.hT == null) {
            this.hT = VelocityTracker.obtain();
        }
        this.hT.addMovement(motionEvent);
        final int n = 0xFF & motionEvent.getAction();
        int n2 = 0;
        switch (n) {
            case 0: {
                this.iy.abortAnimation();
                this.iJ = false;
                this.bf();
                final float x = motionEvent.getX();
                this.iS = x;
                this.iQ = x;
                final float y = motionEvent.getY();
                this.iT = y;
                this.iR = y;
                this.iU = P.b(motionEvent, 0);
                n2 = 0;
                break;
            }
            case 2: {
                if (!this.iL) {
                    final int a = P.a(motionEvent, this.iU);
                    final float c = P.c(motionEvent, a);
                    final float abs = Math.abs(c - this.iQ);
                    final float d = P.d(motionEvent, a);
                    final float abs2 = Math.abs(d - this.iR);
                    if (abs > this.iP && abs > abs2) {
                        this.iL = true;
                        this.bh();
                        float iq;
                        if (c - this.iS > 0.0f) {
                            iq = this.iS + this.iP;
                        }
                        else {
                            iq = this.iS - this.iP;
                        }
                        this.iQ = iq;
                        this.iR = d;
                        this.x(1);
                        this.setScrollingCacheEnabled(true);
                        final ViewParent parent = this.getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
                final boolean il = this.iL;
                n2 = 0;
                if (il) {
                    n2 = ((false | this.a(P.c(motionEvent, P.a(motionEvent, this.iU)))) ? 1 : 0);
                    break;
                }
                break;
            }
            case 1: {
                final boolean il2 = this.iL;
                n2 = 0;
                if (il2) {
                    final VelocityTracker ht = this.hT;
                    ht.computeCurrentVelocity(1000, (float)this.iW);
                    final int n3 = (int)Z.a(ht, this.iU);
                    this.iJ = true;
                    final int bc = this.bc();
                    final int scrollX = this.getScrollX();
                    final aI bi = this.bi();
                    int position = bi.position;
                    final float n4 = (scrollX / bc - bi.ju) / bi.jt;
                    int max;
                    if (Math.abs((int)(P.c(motionEvent, P.a(motionEvent, this.iU)) - this.iS)) > this.iX && Math.abs(n3) > this.iV) {
                        if (n3 <= 0) {
                            ++position;
                        }
                        max = position;
                    }
                    else {
                        float n5;
                        if (position >= this.iu) {
                            n5 = 0.4f;
                        }
                        else {
                            n5 = 0.6f;
                        }
                        max = (int)(n5 + (n4 + position));
                    }
                    if (this.iq.size() > 0) {
                        max = Math.max(this.iq.get(0).position, Math.min(max, this.iq.get(-1 + this.iq.size()).position));
                    }
                    this.a(max, true, true, n3);
                    this.iU = -1;
                    this.bj();
                    n2 = ((this.ja.bV() | this.jb.bV()) ? 1 : 0);
                    break;
                }
                break;
            }
            case 3: {
                final boolean il3 = this.iL;
                n2 = 0;
                if (il3) {
                    this.a(this.iu, true, 0, false);
                    this.iU = -1;
                    this.bj();
                    n2 = ((this.ja.bV() | this.jb.bV()) ? 1 : 0);
                    break;
                }
                break;
            }
            case 5: {
                final int b = P.b(motionEvent);
                this.iQ = P.c(motionEvent, b);
                this.iU = P.b(motionEvent, b);
                n2 = 0;
                break;
            }
            case 6: {
                this.d(motionEvent);
                this.iQ = P.c(motionEvent, P.a(motionEvent, this.iU));
                n2 = 0;
                break;
            }
        }
        if (n2 != 0) {
            ad.i((View)this);
        }
        return true;
    }
    
    public void removeView(final View view) {
        if (this.aC) {
            this.removeViewInLayout(view);
            return;
        }
        super.removeView(view);
    }
    
    protected boolean verifyDrawable(final Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.iB;
    }
    
    public final void y(final int n) {
        this.iJ = false;
        this.a(n, !this.jc, false);
    }
    
    public final void z(final int ia) {
        final int ia2 = this.iA;
        this.iA = ia;
        final int width = this.getWidth();
        this.a(width, width, ia, ia2);
        this.requestLayout();
    }
}
