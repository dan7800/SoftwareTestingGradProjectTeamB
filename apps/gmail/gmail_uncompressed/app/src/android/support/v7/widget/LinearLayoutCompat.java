package android.support.v7.widget;

import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.graphics.*;
import android.support.v7.internal.widget.*;
import android.view.*;
import android.os.*;
import android.view.accessibility.*;
import android.support.v4.view.*;

public class LinearLayoutCompat extends ViewGroup
{
    private boolean Eh;
    private int Ei;
    private int Ej;
    private int Ek;
    private float El;
    private boolean Em;
    private int[] En;
    private int[] Eo;
    private Drawable Ep;
    private int Eq;
    private int Er;
    private int Es;
    private int Et;
    private int dV;
    private int fI;
    
    public LinearLayoutCompat(final Context context) {
        this(context, null);
    }
    
    public LinearLayoutCompat(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public LinearLayoutCompat(final Context context, final AttributeSet set, final int n) {
        boolean b = true;
        super(context, set, n);
        this.Eh = b;
        this.Ei = -1;
        this.Ej = 0;
        this.dV = 8388659;
        final Z a = Z.a(context, set, l.rV, n);
        final int int1 = a.getInt(l.rZ, -1);
        if (int1 >= 0 && this.fI != int1) {
            this.fI = int1;
            this.requestLayout();
        }
        final int int2 = a.getInt(l.rY, -1);
        if (int2 >= 0) {
            this.setGravity(int2);
        }
        final boolean boolean1 = a.getBoolean(l.rW, b);
        if (!boolean1) {
            this.Eh = boolean1;
        }
        this.El = a.ar(l.sa);
        this.Ei = a.getInt(l.rX, -1);
        this.Em = a.getBoolean(l.sd, false);
        final Drawable drawable = a.getDrawable(l.sb);
        if (drawable != this.Ep) {
            if ((this.Ep = drawable) != null) {
                this.Eq = drawable.getIntrinsicWidth();
                this.Er = drawable.getIntrinsicHeight();
            }
            else {
                this.Eq = 0;
                this.Er = 0;
            }
            if (drawable != null) {
                b = false;
            }
            this.setWillNotDraw(b);
            this.requestLayout();
        }
        this.Es = a.getInt(l.se, 0);
        this.Et = a.getDimensionPixelSize(l.sc, 0);
        a.recycle();
    }
    
    private void a(final Canvas canvas, final int n) {
        this.Ep.setBounds(this.getPaddingLeft() + this.Et, n, this.getWidth() - this.getPaddingRight() - this.Et, n + this.Er);
        this.Ep.draw(canvas);
    }
    
    private boolean aA(final int n) {
        if (n == 0) {
            if ((0x1 & this.Es) == 0x0) {
                return false;
            }
        }
        else if (n == this.getChildCount()) {
            if ((0x4 & this.Es) == 0x0) {
                return false;
            }
        }
        else {
            if ((0x2 & this.Es) != 0x0) {
                for (int i = n - 1; i >= 0; --i) {
                    if (this.getChildAt(i).getVisibility() != 8) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
        return true;
    }
    
    private void b(final Canvas canvas, final int n) {
        this.Ep.setBounds(n, this.getPaddingTop() + this.Et, n + this.Eq, this.getHeight() - this.getPaddingBottom() - this.Et);
        this.Ep.draw(canvas);
    }
    
    private void d(final View view, final int n, final int n2, final int n3, final int n4) {
        this.measureChildWithMargins(view, n, n2, n3, n4);
    }
    
    private static void e(final View view, final int n, final int n2, final int n3, final int n4) {
        view.layout(n, n2, n + n3, n2 + n4);
    }
    
    private void v(final int n, final int n2) {
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(this.getMeasuredWidth(), 1073741824);
        for (int i = 0; i < n; ++i) {
            final View child = this.getChildAt(i);
            if (child.getVisibility() != 8) {
                final G g = (G)child.getLayoutParams();
                if (g.width == -1) {
                    final int height = g.height;
                    g.height = child.getMeasuredHeight();
                    this.measureChildWithMargins(child, measureSpec, 0, n2, 0);
                    g.height = height;
                }
            }
        }
    }
    
    private void w(final int n, final int n2) {
        this.Ek = 0;
        int n3 = 0;
        int n4 = 0;
        int n5 = 0;
        int n6 = 0;
        int n7 = 1;
        float el = 0.0f;
        final int childCount = this.getChildCount();
        final int mode = View$MeasureSpec.getMode(n);
        final int mode2 = View$MeasureSpec.getMode(n2);
        int n8 = 0;
        int n9 = 0;
        if (this.En == null || this.Eo == null) {
            this.En = new int[4];
            this.Eo = new int[4];
        }
        final int[] en = this.En;
        final int[] eo = this.Eo;
        en[2] = (en[3] = -1);
        en[0] = (en[1] = -1);
        eo[2] = (eo[3] = -1);
        eo[0] = (eo[1] = -1);
        final boolean eh = this.Eh;
        final boolean em = this.Em;
        final boolean b = mode == 1073741824;
        int n10 = Integer.MIN_VALUE;
        int n11;
        for (int i = 0; i < childCount; i = n11 + 1) {
            final View child = this.getChildAt(i);
            if (child == null) {
                this.Ek += 0;
                n11 = i;
            }
            else {
                int n15;
                int combineMeasuredStates;
                float n21;
                int n22;
                int n23;
                int n24;
                int n25;
                int n27;
                int n28;
                if (child.getVisibility() != 8) {
                    if (this.aA(i)) {
                        this.Ek += this.Eq;
                    }
                    final G g = (G)child.getLayoutParams();
                    final float n12 = el + g.weight;
                    int max;
                    int n13;
                    if (mode == 1073741824 && g.width == 0 && g.weight > 0.0f) {
                        if (b) {
                            this.Ek += g.leftMargin + g.rightMargin;
                        }
                        else {
                            final int ek = this.Ek;
                            this.Ek = Math.max(ek, ek + g.leftMargin + g.rightMargin);
                        }
                        if (eh) {
                            final int measureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
                            child.measure(measureSpec, measureSpec);
                            max = n10;
                            n13 = n9;
                        }
                        else {
                            max = n10;
                            n13 = 1;
                        }
                    }
                    else {
                        int n14 = Integer.MIN_VALUE;
                        if (g.width == 0 && g.weight > 0.0f) {
                            n14 = 0;
                            g.width = -2;
                        }
                        final int width = n14;
                        int ek2;
                        if (n12 == 0.0f) {
                            ek2 = this.Ek;
                        }
                        else {
                            ek2 = 0;
                        }
                        this.d(child, n, ek2, n2, 0);
                        if (width != Integer.MIN_VALUE) {
                            g.width = width;
                        }
                        final int measuredWidth = child.getMeasuredWidth();
                        if (b) {
                            this.Ek += 0 + (measuredWidth + g.leftMargin + g.rightMargin);
                        }
                        else {
                            final int ek3 = this.Ek;
                            this.Ek = Math.max(ek3, 0 + (ek3 + measuredWidth + g.leftMargin + g.rightMargin));
                        }
                        if (em) {
                            max = Math.max(measuredWidth, n10);
                            n13 = n9;
                        }
                        else {
                            max = n10;
                            n13 = n9;
                        }
                    }
                    boolean b2;
                    if (mode2 != 1073741824 && g.height == -1) {
                        n15 = 1;
                        b2 = true;
                    }
                    else {
                        n15 = n8;
                        b2 = false;
                    }
                    int n16 = g.topMargin + g.bottomMargin;
                    final int n17 = n16 + child.getMeasuredHeight();
                    combineMeasuredStates = af.combineMeasuredStates(n4, ad.p(child));
                    if (eh) {
                        final int baseline = child.getBaseline();
                        if (baseline != -1) {
                            int n18;
                            if (g.gravity < 0) {
                                n18 = this.dV;
                            }
                            else {
                                n18 = g.gravity;
                            }
                            final int n19 = (0xFFFFFFFE & (n18 & 0x70) >> 4) >> 1;
                            en[n19] = Math.max(en[n19], baseline);
                            eo[n19] = Math.max(eo[n19], n17 - baseline);
                        }
                    }
                    final int max2 = Math.max(n3, n17);
                    boolean b3;
                    if (n7 != 0 && g.height == -1) {
                        b3 = true;
                    }
                    else {
                        b3 = false;
                    }
                    if (g.weight > 0.0f) {
                        int n20;
                        if (b2) {
                            n20 = n16;
                        }
                        else {
                            n20 = n17;
                        }
                        final int max3 = Math.max(n6, n20);
                        n21 = n12;
                        n22 = (b3 ? 1 : 0);
                        n23 = n5;
                        n24 = n13;
                        n25 = max2;
                        final int n26 = max;
                        n27 = max3;
                        n28 = n26;
                    }
                    else {
                        if (!b2) {
                            n16 = n17;
                        }
                        final int max4 = Math.max(n5, n16);
                        n21 = n12;
                        n22 = (b3 ? 1 : 0);
                        n23 = max4;
                        n24 = n13;
                        n28 = max;
                        n27 = n6;
                        n25 = max2;
                    }
                }
                else {
                    n28 = n10;
                    n24 = n9;
                    n21 = el;
                    n22 = n7;
                    n27 = n6;
                    n23 = n5;
                    n15 = n8;
                    n25 = n3;
                    combineMeasuredStates = n4;
                }
                final int n29 = i + 0;
                n7 = n22;
                n6 = n27;
                n5 = n23;
                n4 = combineMeasuredStates;
                n3 = n25;
                n10 = n28;
                n8 = n15;
                n11 = n29;
                el = n21;
                n9 = n24;
            }
        }
        if (this.Ek > 0 && this.aA(childCount)) {
            this.Ek += this.Eq;
        }
        int max5;
        if (en[1] != -1 || en[0] != -1 || en[2] != -1 || en[3] != -1) {
            max5 = Math.max(n3, Math.max(en[3], Math.max(en[0], Math.max(en[1], en[2]))) + Math.max(eo[3], Math.max(eo[0], Math.max(eo[1], eo[2]))));
        }
        else {
            max5 = n3;
        }
        if (em && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.Ek = 0;
            int n30;
            for (int j = 0; j < childCount; j = n30 + 1) {
                final View child2 = this.getChildAt(j);
                if (child2 == null) {
                    this.Ek += 0;
                    n30 = j;
                }
                else if (child2.getVisibility() == 8) {
                    n30 = j + 0;
                }
                else {
                    final G g2 = (G)child2.getLayoutParams();
                    if (b) {
                        this.Ek += 0 + (n10 + g2.leftMargin + g2.rightMargin);
                        n30 = j;
                    }
                    else {
                        final int ek4 = this.Ek;
                        this.Ek = Math.max(ek4, 0 + (ek4 + n10 + g2.leftMargin + g2.rightMargin));
                        n30 = j;
                    }
                }
            }
        }
        this.Ek += this.getPaddingLeft() + this.getPaddingRight();
        final int resolveSizeAndState = ad.resolveSizeAndState(Math.max(this.Ek, this.getSuggestedMinimumWidth()), n, 0);
        int n31 = (0xFFFFFF & resolveSizeAndState) - this.Ek;
        int n53;
        int n54;
        if (n9 != 0 || (n31 != 0 && el > 0.0f)) {
            if (this.El > 0.0f) {
                el = this.El;
            }
            en[2] = (en[3] = -1);
            en[0] = (en[1] = -1);
            eo[2] = (eo[3] = -1);
            eo[0] = (eo[1] = -1);
            this.Ek = 0;
            int k = 0;
            int n32 = n7;
            int n33 = n5;
            int max6 = -1;
            int n34 = n4;
            while (k < childCount) {
                final View child3 = this.getChildAt(k);
                float n47;
                int n48;
                int n49;
                int n50;
                int n51;
                int n52;
                if (child3 != null && child3.getVisibility() != 8) {
                    final G g3 = (G)child3.getLayoutParams();
                    final float weight = g3.weight;
                    int combineMeasuredStates2;
                    float n38;
                    int n39;
                    if (weight > 0.0f) {
                        int n35 = (int)(weight * n31 / el);
                        final float n36 = el - weight;
                        final int n37 = n31 - n35;
                        final int childMeasureSpec = getChildMeasureSpec(n2, this.getPaddingTop() + this.getPaddingBottom() + g3.topMargin + g3.bottomMargin, g3.height);
                        View view;
                        if (g3.width != 0 || mode != 1073741824) {
                            n35 += child3.getMeasuredWidth();
                            if (n35 < 0) {
                                n35 = 0;
                            }
                            view = child3;
                        }
                        else if (n35 > 0) {
                            view = child3;
                        }
                        else {
                            view = child3;
                            n35 = 0;
                        }
                        view.measure(View$MeasureSpec.makeMeasureSpec(n35, 1073741824), childMeasureSpec);
                        combineMeasuredStates2 = af.combineMeasuredStates(n34, 0xFF000000 & ad.p(child3));
                        n38 = n36;
                        n39 = n37;
                    }
                    else {
                        n39 = n31;
                        combineMeasuredStates2 = n34;
                        n38 = el;
                    }
                    if (b) {
                        this.Ek += 0 + (child3.getMeasuredWidth() + g3.leftMargin + g3.rightMargin);
                    }
                    else {
                        final int ek5 = this.Ek;
                        this.Ek = Math.max(ek5, 0 + (ek5 + child3.getMeasuredWidth() + g3.leftMargin + g3.rightMargin));
                    }
                    int n40;
                    if (mode2 != 1073741824 && g3.height == -1) {
                        n40 = 1;
                    }
                    else {
                        n40 = 0;
                    }
                    final int n41 = g3.topMargin + g3.bottomMargin;
                    final int n42 = n41 + child3.getMeasuredHeight();
                    final int max7 = Math.max(max6, n42);
                    int n43;
                    if (n40 != 0) {
                        n43 = n41;
                    }
                    else {
                        n43 = n42;
                    }
                    final int max8 = Math.max(n33, n43);
                    int n44;
                    if (n32 != 0 && g3.height == -1) {
                        n44 = 1;
                    }
                    else {
                        n44 = 0;
                    }
                    if (eh) {
                        final int baseline2 = child3.getBaseline();
                        if (baseline2 != -1) {
                            int n45;
                            if (g3.gravity < 0) {
                                n45 = this.dV;
                            }
                            else {
                                n45 = g3.gravity;
                            }
                            final int n46 = (0xFFFFFFFE & (n45 & 0x70) >> 4) >> 1;
                            en[n46] = Math.max(en[n46], baseline2);
                            eo[n46] = Math.max(eo[n46], n42 - baseline2);
                        }
                    }
                    n47 = n38;
                    n48 = max8;
                    n49 = combineMeasuredStates2;
                    n50 = n44;
                    n51 = max7;
                    n52 = n39;
                }
                else {
                    n47 = el;
                    n52 = n31;
                    n48 = n33;
                    n50 = n32;
                    n49 = n34;
                    n51 = max6;
                }
                ++k;
                n32 = n50;
                n33 = n48;
                max6 = n51;
                n34 = n49;
                el = n47;
                n31 = n52;
            }
            this.Ek += this.getPaddingLeft() + this.getPaddingRight();
            if (en[1] != -1 || en[0] != -1 || en[2] != -1 || en[3] != -1) {
                max6 = Math.max(max6, Math.max(en[3], Math.max(en[0], Math.max(en[1], en[2]))) + Math.max(eo[3], Math.max(eo[0], Math.max(eo[1], eo[2]))));
            }
            n53 = n33;
            n4 = n34;
            n54 = max6;
            n7 = n32;
        }
        else {
            final int max9 = Math.max(n5, n6);
            if (em && mode != 1073741824) {
                for (int l = 0; l < childCount; ++l) {
                    final View child4 = this.getChildAt(l);
                    if (child4 != null && child4.getVisibility() != 8 && ((G)child4.getLayoutParams()).weight > 0.0f) {
                        child4.measure(View$MeasureSpec.makeMeasureSpec(n10, 1073741824), View$MeasureSpec.makeMeasureSpec(child4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            n53 = max9;
            n54 = max5;
        }
        if (n7 != 0 || mode2 == 1073741824) {
            n53 = n54;
        }
        this.setMeasuredDimension(resolveSizeAndState | (0xFF000000 & n4), ad.resolveSizeAndState(Math.max(n53 + (this.getPaddingTop() + this.getPaddingBottom()), this.getSuggestedMinimumHeight()), n2, n4 << 16));
        if (n8 != 0) {
            final int measureSpec2 = View$MeasureSpec.makeMeasureSpec(this.getMeasuredHeight(), 1073741824);
            for (int n55 = 0; n55 < childCount; ++n55) {
                final View child5 = this.getChildAt(n55);
                if (child5.getVisibility() != 8) {
                    final G g4 = (G)child5.getLayoutParams();
                    if (g4.height == -1) {
                        final int width2 = g4.width;
                        g4.width = child5.getMeasuredWidth();
                        this.measureChildWithMargins(child5, n, 0, measureSpec2, 0);
                        g4.width = width2;
                    }
                }
            }
        }
    }
    
    protected G b(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return new G(viewGroup$LayoutParams);
    }
    
    protected boolean checkLayoutParams(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof G;
    }
    
    public G d(final AttributeSet set) {
        return new G(this.getContext(), set);
    }
    
    public final int fF() {
        return this.Eq;
    }
    
    public final void fG() {
        this.Em = true;
    }
    
    protected G fi() {
        if (this.fI == 0) {
            return new G(-2, -2);
        }
        if (this.fI == 1) {
            return new G(-1, -2);
        }
        return null;
    }
    
    public int getBaseline() {
        int baseline = -1;
        if (this.Ei < 0) {
            baseline = super.getBaseline();
        }
        else {
            if (this.getChildCount() <= this.Ei) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
            }
            final View child = this.getChildAt(this.Ei);
            final int baseline2 = child.getBaseline();
            if (baseline2 != baseline) {
                final int ej = this.Ej;
                if (this.fI == 1) {
                    final int n = 0x70 & this.dV;
                    if (n != 48) {
                        switch (n) {
                            case 80: {
                                final int n2 = this.getBottom() - this.getTop() - this.getPaddingBottom() - this.Ek;
                                return baseline2 + (n2 + ((G)child.getLayoutParams()).topMargin);
                            }
                            case 16: {
                                final int n2 = ej + (this.getBottom() - this.getTop() - this.getPaddingTop() - this.getPaddingBottom() - this.Ek) / 2;
                                return baseline2 + (n2 + ((G)child.getLayoutParams()).topMargin);
                            }
                        }
                    }
                }
                final int n2 = ej;
                return baseline2 + (n2 + ((G)child.getLayoutParams()).topMargin);
            }
            if (this.Ei != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        }
        return baseline;
    }
    
    protected void onDraw(final Canvas canvas) {
        if (this.Ep != null) {
            if (this.fI == 1) {
                final int childCount = this.getChildCount();
                for (int i = 0; i < childCount; ++i) {
                    final View child = this.getChildAt(i);
                    if (child != null && child.getVisibility() != 8 && this.aA(i)) {
                        this.a(canvas, child.getTop() - ((G)child.getLayoutParams()).topMargin - this.Er);
                    }
                }
                if (this.aA(childCount)) {
                    final View child2 = this.getChildAt(childCount - 1);
                    int n;
                    if (child2 == null) {
                        n = this.getHeight() - this.getPaddingBottom() - this.Er;
                    }
                    else {
                        n = child2.getBottom() + ((G)child2.getLayoutParams()).bottomMargin;
                    }
                    this.a(canvas, n);
                }
            }
            else {
                final int childCount2 = this.getChildCount();
                final boolean af = android.support.v7.internal.widget.af.af((View)this);
                for (int j = 0; j < childCount2; ++j) {
                    final View child3 = this.getChildAt(j);
                    if (child3 != null && child3.getVisibility() != 8 && this.aA(j)) {
                        final G g = (G)child3.getLayoutParams();
                        int n2;
                        if (af) {
                            n2 = child3.getRight() + g.rightMargin;
                        }
                        else {
                            n2 = child3.getLeft() - g.leftMargin - this.Eq;
                        }
                        this.b(canvas, n2);
                    }
                }
                if (this.aA(childCount2)) {
                    final View child4 = this.getChildAt(childCount2 - 1);
                    int paddingLeft;
                    if (child4 == null) {
                        if (af) {
                            paddingLeft = this.getPaddingLeft();
                        }
                        else {
                            paddingLeft = this.getWidth() - this.getPaddingRight() - this.Eq;
                        }
                    }
                    else {
                        final G g2 = (G)child4.getLayoutParams();
                        if (af) {
                            paddingLeft = child4.getLeft() - g2.leftMargin - this.Eq;
                        }
                        else {
                            paddingLeft = child4.getRight() + g2.rightMargin;
                        }
                    }
                    this.b(canvas, paddingLeft);
                }
            }
        }
    }
    
    public void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        if (Build$VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName((CharSequence)LinearLayoutCompat.class.getName());
        }
    }
    
    public void onInitializeAccessibilityNodeInfo(final AccessibilityNodeInfo accessibilityNodeInfo) {
        if (Build$VERSION.SDK_INT >= 14) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName((CharSequence)LinearLayoutCompat.class.getName());
        }
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        if (this.fI == 1) {
            final int paddingLeft = this.getPaddingLeft();
            final int n5 = n3 - n;
            final int n6 = n5 - this.getPaddingRight();
            final int n7 = n5 - paddingLeft - this.getPaddingRight();
            final int childCount = this.getChildCount();
            final int n8 = 0x70 & this.dV;
            final int n9 = 0x800007 & this.dV;
            int paddingTop = 0;
            switch (n8) {
                default: {
                    paddingTop = this.getPaddingTop();
                    break;
                }
                case 80: {
                    paddingTop = n4 + this.getPaddingTop() - n2 - this.Ek;
                    break;
                }
                case 16: {
                    paddingTop = this.getPaddingTop() + (n4 - n2 - this.Ek) / 2;
                    break;
                }
            }
            int i = 0;
            int n10 = paddingTop;
            while (i < childCount) {
                final View child = this.getChildAt(i);
                int n11;
                if (child == null) {
                    n10 += 0;
                    n11 = i;
                }
                else if (child.getVisibility() != 8) {
                    final int measuredWidth = child.getMeasuredWidth();
                    final int measuredHeight = child.getMeasuredHeight();
                    final G g = (G)child.getLayoutParams();
                    int gravity = g.gravity;
                    if (gravity < 0) {
                        gravity = n9;
                    }
                    int n12 = 0;
                    switch (0x7 & v.getAbsoluteGravity(gravity, ad.m((View)this))) {
                        default: {
                            n12 = paddingLeft + g.leftMargin;
                            break;
                        }
                        case 1: {
                            n12 = paddingLeft + (n7 - measuredWidth) / 2 + g.leftMargin - g.rightMargin;
                            break;
                        }
                        case 5: {
                            n12 = n6 - measuredWidth - g.rightMargin;
                            break;
                        }
                    }
                    if (this.aA(i)) {
                        n10 += this.Er;
                    }
                    final int n13 = n10 + g.topMargin;
                    e(child, n12, n13 + 0, measuredWidth, measuredHeight);
                    n10 = n13 + (0 + (measuredHeight + g.bottomMargin));
                    n11 = i + 0;
                }
                else {
                    n11 = i;
                }
                i = n11 + 1;
            }
        }
        else {
            final boolean af = android.support.v7.internal.widget.af.af((View)this);
            final int paddingTop2 = this.getPaddingTop();
            final int n14 = n4 - n2;
            final int n15 = n14 - this.getPaddingBottom();
            final int n16 = n14 - paddingTop2 - this.getPaddingBottom();
            final int childCount2 = this.getChildCount();
            final int n17 = 0x800007 & this.dV;
            final int n18 = 0x70 & this.dV;
            final boolean eh = this.Eh;
            final int[] en = this.En;
            final int[] eo = this.Eo;
            int paddingLeft2 = 0;
            switch (v.getAbsoluteGravity(n17, ad.m((View)this))) {
                default: {
                    paddingLeft2 = this.getPaddingLeft();
                    break;
                }
                case 5: {
                    paddingLeft2 = n3 + this.getPaddingLeft() - n - this.Ek;
                    break;
                }
                case 1: {
                    paddingLeft2 = this.getPaddingLeft() + (n3 - n - this.Ek) / 2;
                    break;
                }
            }
            int n19;
            int n20;
            if (af) {
                n19 = childCount2 - 1;
                n20 = -1;
            }
            else {
                n20 = 1;
                n19 = 0;
            }
            int n22;
        Label_0568:
            for (int j = 0; j < childCount2; j = n22 + 1) {
                final int n21 = n19 + n20 * j;
                final View child2 = this.getChildAt(n21);
                if (child2 == null) {
                    paddingLeft2 += 0;
                    n22 = j;
                }
                else {
                    if (child2.getVisibility() != 8) {
                        final int measuredWidth2 = child2.getMeasuredWidth();
                        final int measuredHeight2 = child2.getMeasuredHeight();
                        int baseline = -1;
                        final G g2 = (G)child2.getLayoutParams();
                        if (eh && g2.height != -1) {
                            baseline = child2.getBaseline();
                        }
                        int gravity2 = g2.gravity;
                        if (gravity2 < 0) {
                            gravity2 = n18;
                        }
                        while (true) {
                            int n24 = 0;
                            Label_0913: {
                                int n23 = 0;
                                switch (gravity2 & 0x70) {
                                    default: {
                                        n23 = paddingTop2;
                                        break;
                                    }
                                    case 48: {
                                        n24 = paddingTop2 + g2.topMargin;
                                        if (baseline != -1) {
                                            n23 = n24 + (en[1] - baseline);
                                            break;
                                        }
                                        break Label_0913;
                                    }
                                    case 16: {
                                        n23 = paddingTop2 + (n16 - measuredHeight2) / 2 + g2.topMargin - g2.bottomMargin;
                                        break;
                                    }
                                    case 80: {
                                        n24 = n15 - measuredHeight2 - g2.bottomMargin;
                                        if (baseline != -1) {
                                            n23 = n24 - (eo[2] - (child2.getMeasuredHeight() - baseline));
                                            break;
                                        }
                                        break Label_0913;
                                    }
                                }
                                int n25;
                                if (this.aA(n21)) {
                                    n25 = paddingLeft2 + this.Eq;
                                }
                                else {
                                    n25 = paddingLeft2;
                                }
                                final int n26 = n25 + g2.leftMargin;
                                e(child2, n26 + 0, n23, measuredWidth2, measuredHeight2);
                                paddingLeft2 = n26 + (0 + (measuredWidth2 + g2.rightMargin));
                                n22 = j + 0;
                                continue Label_0568;
                            }
                            int n23 = n24;
                            continue;
                        }
                    }
                    n22 = j;
                }
            }
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.fI == 1) {
            this.Ek = 0;
            int n3 = 0;
            int n4 = 0;
            int n5 = 0;
            int n6 = 0;
            int n7 = 1;
            float el = 0.0f;
            final int childCount = this.getChildCount();
            final int mode = View$MeasureSpec.getMode(n);
            final int mode2 = View$MeasureSpec.getMode(n2);
            int n8 = 0;
            int n9 = 0;
            final int ei = this.Ei;
            final boolean em = this.Em;
            int n10 = Integer.MIN_VALUE;
            int n11;
            for (int i = 0; i < childCount; i = n11 + 1) {
                final View child = this.getChildAt(i);
                if (child == null) {
                    this.Ek += 0;
                    n11 = i;
                }
                else {
                    int n15;
                    int combineMeasuredStates;
                    float n19;
                    int n20;
                    int n21;
                    int n22;
                    int n23;
                    int n25;
                    int n26;
                    if (child.getVisibility() != 8) {
                        if (this.aA(i)) {
                            this.Ek += this.Er;
                        }
                        final G g = (G)child.getLayoutParams();
                        final float n12 = el + g.weight;
                        int max;
                        int n13;
                        if (mode2 == 1073741824 && g.height == 0 && g.weight > 0.0f) {
                            final int ek = this.Ek;
                            this.Ek = Math.max(ek, ek + g.topMargin + g.bottomMargin);
                            max = n10;
                            n13 = 1;
                        }
                        else {
                            int n14 = Integer.MIN_VALUE;
                            if (g.height == 0 && g.weight > 0.0f) {
                                n14 = 0;
                                g.height = -2;
                            }
                            final int height = n14;
                            int ek2;
                            if (n12 == 0.0f) {
                                ek2 = this.Ek;
                            }
                            else {
                                ek2 = 0;
                            }
                            this.d(child, n, 0, n2, ek2);
                            if (height != Integer.MIN_VALUE) {
                                g.height = height;
                            }
                            final int measuredHeight = child.getMeasuredHeight();
                            final int ek3 = this.Ek;
                            this.Ek = Math.max(ek3, 0 + (ek3 + measuredHeight + g.topMargin + g.bottomMargin));
                            if (em) {
                                max = Math.max(measuredHeight, n10);
                                n13 = n9;
                            }
                            else {
                                max = n10;
                                n13 = n9;
                            }
                        }
                        if (ei >= 0 && ei == i + 1) {
                            this.Ej = this.Ek;
                        }
                        if (i < ei && g.weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        boolean b;
                        if (mode != 1073741824 && g.width == -1) {
                            n15 = 1;
                            b = true;
                        }
                        else {
                            n15 = n8;
                            b = false;
                        }
                        int n16 = g.leftMargin + g.rightMargin;
                        final int n17 = n16 + child.getMeasuredWidth();
                        final int max2 = Math.max(n3, n17);
                        combineMeasuredStates = af.combineMeasuredStates(n4, ad.p(child));
                        boolean b2;
                        if (n7 != 0 && g.width == -1) {
                            b2 = true;
                        }
                        else {
                            b2 = false;
                        }
                        if (g.weight > 0.0f) {
                            int n18;
                            if (b) {
                                n18 = n16;
                            }
                            else {
                                n18 = n17;
                            }
                            final int max3 = Math.max(n6, n18);
                            n19 = n12;
                            n20 = (b2 ? 1 : 0);
                            n21 = n5;
                            n22 = n13;
                            n23 = max2;
                            final int n24 = max;
                            n25 = max3;
                            n26 = n24;
                        }
                        else {
                            if (!b) {
                                n16 = n17;
                            }
                            final int max4 = Math.max(n5, n16);
                            n19 = n12;
                            n20 = (b2 ? 1 : 0);
                            n21 = max4;
                            n22 = n13;
                            n26 = max;
                            n25 = n6;
                            n23 = max2;
                        }
                    }
                    else {
                        n26 = n10;
                        n22 = n9;
                        n19 = el;
                        n20 = n7;
                        n25 = n6;
                        n21 = n5;
                        n15 = n8;
                        n23 = n3;
                        combineMeasuredStates = n4;
                    }
                    final int n27 = i + 0;
                    n7 = n20;
                    n6 = n25;
                    n5 = n21;
                    n4 = combineMeasuredStates;
                    n3 = n23;
                    n10 = n26;
                    n8 = n15;
                    n11 = n27;
                    el = n19;
                    n9 = n22;
                }
            }
            if (this.Ek > 0 && this.aA(childCount)) {
                this.Ek += this.Er;
            }
            if (em && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
                this.Ek = 0;
                int n28;
                for (int j = 0; j < childCount; j = n28 + 1) {
                    final View child2 = this.getChildAt(j);
                    if (child2 == null) {
                        this.Ek += 0;
                        n28 = j;
                    }
                    else if (child2.getVisibility() == 8) {
                        n28 = j + 0;
                    }
                    else {
                        final G g2 = (G)child2.getLayoutParams();
                        final int ek4 = this.Ek;
                        this.Ek = Math.max(ek4, 0 + (ek4 + n10 + g2.topMargin + g2.bottomMargin));
                        n28 = j;
                    }
                }
            }
            this.Ek += this.getPaddingTop() + this.getPaddingBottom();
            final int resolveSizeAndState = ad.resolveSizeAndState(Math.max(this.Ek, this.getSuggestedMinimumHeight()), n2, 0);
            int n29 = (0xFFFFFF & resolveSizeAndState) - this.Ek;
            int n46;
            int n47;
            if (n9 != 0 || (n29 != 0 && el > 0.0f)) {
                if (this.El > 0.0f) {
                    el = this.El;
                }
                this.Ek = 0;
                int k = 0;
                int n30 = n7;
                int n31 = n5;
                int n32 = n4;
                int n33 = n3;
                while (k < childCount) {
                    final View child3 = this.getChildAt(k);
                    int n37;
                    int n38;
                    float n39;
                    int n43;
                    int n44;
                    int n45;
                    if (child3.getVisibility() != 8) {
                        final G g3 = (G)child3.getLayoutParams();
                        final float weight = g3.weight;
                        if (weight > 0.0f) {
                            int n34 = (int)(weight * n29 / el);
                            final float n35 = el - weight;
                            final int n36 = n29 - n34;
                            final int childMeasureSpec = getChildMeasureSpec(n, this.getPaddingLeft() + this.getPaddingRight() + g3.leftMargin + g3.rightMargin, g3.width);
                            View view;
                            if (g3.height != 0 || mode2 != 1073741824) {
                                n34 += child3.getMeasuredHeight();
                                if (n34 < 0) {
                                    n34 = 0;
                                }
                                view = child3;
                            }
                            else if (n34 > 0) {
                                view = child3;
                            }
                            else {
                                view = child3;
                                n34 = 0;
                            }
                            view.measure(childMeasureSpec, View$MeasureSpec.makeMeasureSpec(n34, 1073741824));
                            final int combineMeasuredStates2 = af.combineMeasuredStates(n32, 0xFFFFFF00 & ad.p(child3));
                            n37 = n36;
                            n38 = combineMeasuredStates2;
                            n39 = n35;
                        }
                        else {
                            n39 = el;
                            n37 = n29;
                            n38 = n32;
                        }
                        int n40 = g3.leftMargin + g3.rightMargin;
                        final int n41 = n40 + child3.getMeasuredWidth();
                        final int max5 = Math.max(n33, n41);
                        int n42;
                        if (mode != 1073741824 && g3.width == -1) {
                            n42 = 1;
                        }
                        else {
                            n42 = 0;
                        }
                        if (n42 == 0) {
                            n40 = n41;
                        }
                        final int max6 = Math.max(n31, n40);
                        if (n30 != 0 && g3.width == -1) {
                            n43 = 1;
                        }
                        else {
                            n43 = 0;
                        }
                        final int ek5 = this.Ek;
                        this.Ek = Math.max(ek5, 0 + (ek5 + child3.getMeasuredHeight() + g3.topMargin + g3.bottomMargin));
                        n44 = max6;
                        n45 = max5;
                    }
                    else {
                        n39 = el;
                        n43 = n30;
                        n44 = n31;
                        n45 = n33;
                        n37 = n29;
                        n38 = n32;
                    }
                    ++k;
                    n30 = n43;
                    n31 = n44;
                    n32 = n38;
                    n33 = n45;
                    n29 = n37;
                    el = n39;
                }
                this.Ek += this.getPaddingTop() + this.getPaddingBottom();
                n46 = n31;
                n4 = n32;
                n47 = n33;
                n7 = n30;
            }
            else {
                final int max7 = Math.max(n5, n6);
                if (em && mode2 != 1073741824) {
                    for (int l = 0; l < childCount; ++l) {
                        final View child4 = this.getChildAt(l);
                        if (child4 != null && child4.getVisibility() != 8 && ((G)child4.getLayoutParams()).weight > 0.0f) {
                            child4.measure(View$MeasureSpec.makeMeasureSpec(child4.getMeasuredWidth(), 1073741824), View$MeasureSpec.makeMeasureSpec(n10, 1073741824));
                        }
                    }
                }
                n46 = max7;
                n47 = n3;
            }
            if (n7 != 0 || mode == 1073741824) {
                n46 = n47;
            }
            this.setMeasuredDimension(ad.resolveSizeAndState(Math.max(n46 + (this.getPaddingLeft() + this.getPaddingRight()), this.getSuggestedMinimumWidth()), n, n4), resolveSizeAndState);
            if (n8 != 0) {
                this.v(childCount, n2);
            }
            return;
        }
        this.w(n, n2);
    }
    
    public final void setBaselineAligned(final boolean b) {
        this.Eh = false;
    }
    
    public final void setGravity(final int n) {
        if (this.dV != n) {
            int dv;
            if ((0x800007 & n) == 0x0) {
                dv = (0x800003 | n);
            }
            else {
                dv = n;
            }
            if ((dv & 0x70) == 0x0) {
                dv |= 0x30;
            }
            this.dV = dv;
            this.requestLayout();
        }
    }
    
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
