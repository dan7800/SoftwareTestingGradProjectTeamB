package com.android.mail.ui;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import android.view.animation.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.animation.*;
import com.google.common.collect.*;
import java.util.*;
import com.android.mail.browse.*;
import com.android.mail.a.*;
import android.view.*;

public class LeaveBehindItem extends FrameLayout implements View$OnClickListener, dh
{
    private static int aKW;
    private static float aKX;
    private static int ant;
    private int GN;
    private Account Nc;
    private TextView aGH;
    private int aHx;
    private View aHy;
    private ToastBarOperation aKR;
    private Conversation aKS;
    private boolean aKT;
    private boolean aKU;
    private ObjectAnimator aKV;
    private ae anZ;
    private boolean kq;
    public int position;
    private int yS;
    
    static {
        LeaveBehindItem.ant = -1;
        LeaveBehindItem.aKW = -1;
    }
    
    public LeaveBehindItem(final Context context) {
        this(context, null);
    }
    
    public LeaveBehindItem(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public LeaveBehindItem(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.aHx = -1;
        this.aKU = false;
        at(context);
    }
    
    private static void at(final Context context) {
        if (LeaveBehindItem.ant == -1) {
            final Resources resources = context.getResources();
            LeaveBehindItem.ant = resources.getInteger(2131427343);
            LeaveBehindItem.aKW = resources.getInteger(2131427345);
            LeaveBehindItem.aKX = resources.getInteger(2131427361);
        }
    }
    
    public static ObjectAnimator p(final View view, final int n) {
        at(view.getContext());
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)view, "alpha", new float[] { 0.0f, 1.0f });
        view.setAlpha(0.0f);
        if (n != 0) {
            ofFloat.setStartDelay((long)n);
        }
        ofFloat.setInterpolator((TimeInterpolator)new DecelerateInterpolator(1.0f));
        ofFloat.setDuration((long)(LeaveBehindItem.aKW / 2));
        ofFloat.start();
        return ofFloat;
    }
    
    public final void a(final int position, final Account nc, final ae anZ, final ToastBarOperation akr, final Conversation aks, final Folder folder, final int ys) {
        this.position = position;
        this.aKR = akr;
        this.Nc = nc;
        this.anZ = anZ;
        this.yS = ys;
        this.aKS = aks;
        (this.aHy = this.findViewById(2131558627)).setOnClickListener((View$OnClickListener)this);
        this.aHy.setAlpha(0.0f);
        (this.aGH = (TextView)this.findViewById(2131558940)).setText((CharSequence)ag.cG(this.aKR.a(this.getContext(), folder)));
        this.aGH.setOnClickListener((View$OnClickListener)this);
    }
    
    public final void a(final Animator$AnimatorListener animator$AnimatorListener) {
        if (!this.kq) {
            this.kq = true;
            final ObjectAnimator ofInt = ObjectAnimator.ofInt((Object)this, "animatedHeight", new int[] { this.yS, 0 });
            this.setMinimumHeight(this.yS);
            this.GN = this.getWidth();
            ofInt.setInterpolator((TimeInterpolator)new DecelerateInterpolator(1.75f));
            ofInt.setDuration((long)LeaveBehindItem.ant);
            ofInt.addListener(animator$AnimatorListener);
            ofInt.start();
        }
    }
    
    public final void commit() {
        final u xe = this.anZ.xE();
        if (xe != null) {
            xe.f(ImmutableList.aE(this.aKS));
        }
    }
    
    public final void dc(final int n) {
        if (!this.aKT && this.aHy.getAlpha() != 1.0f) {
            this.aKT = true;
            this.aKV = p(this.aHy, n);
        }
    }
    
    public final void dd(final int n) {
        if (!this.aKT && this.aHy.getAlpha() != 1.0f) {
            this.aKT = true;
            final long startDelay = this.aKV.getStartDelay();
            if (n != startDelay && !this.aKV.isRunning()) {
                this.aKV.cancel();
                this.aKV.setStartDelay(n - startDelay);
                this.aKV.start();
            }
        }
    }
    
    public final void dismiss() {
        if (this.anZ != null) {
            a.oq().a("list_swipe", "leave_behind", null, 0L);
            this.anZ.T(this.aKS.id);
            this.anZ.notifyDataSetChanged();
        }
    }
    
    public void onClick(final View view) {
        if (view.getId() == 2131558627 && this.Nc.ayn != null && !this.aKU) {
            this.anZ.xw();
            this.anZ.W(this.aKS.id);
            final u xe = this.anZ.xE();
            if (xe != null) {
                xe.a(this.getContext(), this.Nc.ayn);
            }
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.aHx != -1) {
            this.setMeasuredDimension(this.GN, this.aHx);
            return;
        }
        super.onMeasure(n, View$MeasureSpec.makeMeasureSpec(this.yS, 1073741824));
    }
    
    public final boolean pE() {
        return !this.aKU;
    }
    
    public final di pK() {
        return di.aE(this.aHy);
    }
    
    public final float pL() {
        return LeaveBehindItem.aKX;
    }
    
    public void setAnimatedHeight(final int aHx) {
        this.aHx = aHx;
        this.requestLayout();
    }
    
    public final boolean wo() {
        return this.aKT;
    }
    
    public final void z(final float alpha) {
        if (this.aHy.getAlpha() > 0.0f) {
            this.aHy.setAlpha(alpha);
        }
    }
    
    public final long zC() {
        return this.aKS.id;
    }
    
    public final LeaveBehindData zD() {
        return new LeaveBehindData(this.aKS, this.aKR, this.yS);
    }
    
    public final void zE() {
        if (this.aKV != null) {
            this.aKT = false;
            this.aKV.cancel();
        }
    }
    
    public final boolean zF() {
        if (this.aKV != null && !this.aKV.isRunning()) {
            this.zE();
            return true;
        }
        return false;
    }
    
    public final Conversation zG() {
        return this.aKS;
    }
    
    public final void zH() {
        if (this.aKV != null) {
            this.aKV.cancel();
        }
        this.aHy.setVisibility(8);
        this.aKU = true;
    }
    
    public final void zI() {
        this.aHy.setAlpha(1.0f);
    }
}
