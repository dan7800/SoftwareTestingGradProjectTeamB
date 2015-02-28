package com.android.mail.ui;

import android.content.*;
import com.android.mail.utils.*;
import android.util.*;
import android.content.res.*;
import android.app.*;
import android.os.*;
import com.android.mail.providers.*;
import com.android.mail.browse.*;
import android.view.animation.*;
import android.animation.*;
import android.view.*;
import android.widget.*;

public abstract class ConversationTipView extends LinearLayout implements View$OnClickListener, aL, dh
{
    protected static final String mW;
    private TextView aGH;
    private int aHv;
    private int aHw;
    private int aHx;
    protected View aHy;
    private View aHz;
    protected ae anZ;
    protected Context mContext;
    
    static {
        mW = D.AU();
    }
    
    public ConversationTipView(final Context context) {
        this(context, (byte)0);
    }
    
    private ConversationTipView(final Context mContext, final byte b) {
        super(mContext, (AttributeSet)null);
        this.aHx = -1;
        this.mContext = mContext;
        final Resources resources = mContext.getResources();
        this.aHv = resources.getInteger(2131427360);
        this.aHw = resources.getInteger(2131427343);
        this.addView(this.aHz = LayoutInflater.from(this.mContext).inflate(this.yO(), (ViewGroup)this, false));
        this.yP();
    }
    
    public void a(final LoaderManager loaderManager, final Bundle bundle) {
    }
    
    public void a(final Folder folder, final u u) {
    }
    
    public final void bm(final boolean b) {
    }
    
    public void dismiss() {
        final int height = this.getHeight();
        this.aHx = height;
        final ObjectAnimator ofInt = ObjectAnimator.ofInt((Object)this, "animatedHeight", new int[] { height, 0 });
        ofInt.setInterpolator((TimeInterpolator)new DecelerateInterpolator(2.0f));
        ofInt.setDuration((long)this.aHw);
        ofInt.start();
    }
    
    public ViewGroup$LayoutParams getLayoutParams() {
        final ViewGroup$LayoutParams layoutParams = super.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -2;
        }
        return layoutParams;
    }
    
    public final int getPosition() {
        return 0;
    }
    
    public final void j(final ae anZ) {
        this.anZ = anZ;
    }
    
    public final void m(final Bundle bundle) {
    }
    
    public void onClick(final View view) {
        this.dismiss();
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.aHx == -1) {
            super.onMeasure(n, n2);
            return;
        }
        this.setMeasuredDimension(View$MeasureSpec.getSize(n), this.aHx);
    }
    
    public final boolean pE() {
        return true;
    }
    
    public final di pK() {
        return di.aE(this.aHy);
    }
    
    public final float pL() {
        return this.aHv;
    }
    
    public final void qD() {
    }
    
    public void setAnimatedHeight(final int aHx) {
        this.aHx = aHx;
        this.requestLayout();
    }
    
    protected final void setText(final CharSequence text) {
        this.aGH.setText(text);
    }
    
    public void wk() {
    }
    
    public final void wl() {
    }
    
    public final void xK() {
    }
    
    protected aO yG() {
        return null;
    }
    
    public final void yK() {
    }
    
    public final boolean yL() {
        return true;
    }
    
    public final boolean yM() {
        return false;
    }
    
    protected View$OnClickListener yN() {
        return null;
    }
    
    protected int yO() {
        return 2130968673;
    }
    
    protected void yP() {
        this.aHy = this.aHz.findViewById(2131558772);
        this.aGH = (TextView)this.aHz.findViewById(2131558774);
        final ImageView imageView = (ImageView)this.aHz.findViewById(2131558773);
        final ImageView imageView2 = (ImageView)this.aHz.findViewById(2131558775);
        final aO yg = this.yG();
        if (yg != null) {
            imageView.setVisibility(0);
            imageView.setContentDescription((CharSequence)yg.aHB);
            imageView.setImageResource(yg.aHA);
            if (yg.background != -1) {
                imageView.setBackgroundResource(yg.background);
            }
        }
        else {
            imageView.setVisibility(8);
        }
        imageView2.setOnClickListener((View$OnClickListener)this);
        this.aGH.setOnClickListener(this.yN());
    }
}
