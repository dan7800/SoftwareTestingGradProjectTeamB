package com.google.android.gm.ads;

import com.android.mail.c.*;
import android.net.*;
import com.android.mail.providers.*;
import android.content.*;
import android.util.*;
import android.graphics.*;
import android.content.res.*;
import android.view.animation.*;
import android.animation.*;
import android.os.*;
import com.android.mail.browse.*;
import com.google.android.gm.provider.*;
import com.android.mail.a.*;
import com.android.mail.utils.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.android.mail.ui.*;

public class AdTeaserView extends LinearLayout implements View$OnClickListener, aL, dh
{
    private static int aZB;
    private static int aZC;
    private static int ant;
    private static int aol;
    private Account Nc;
    private int aHx;
    private boolean aME;
    private boolean aMj;
    private R aZA;
    private final Bitmap aZD;
    private boolean aZE;
    private boolean aZF;
    private boolean aZG;
    private final Runnable aZH;
    private final Runnable aZI;
    private final e aZJ;
    private final e aZK;
    private final Runnable aZL;
    private final Runnable aZM;
    private final LoaderManager$LoaderCallbacks<b<Advertisement>> aZN;
    private Advertisement aZp;
    private Uri aZx;
    private ViewGroup aZy;
    private View aZz;
    private ae anZ;
    private as aob;
    private Bitmap aop;
    private final M aor;
    private LoaderManager aqI;
    private Folder aqp;
    private ConversationItemView auE;
    private boolean azx;
    private final Handler mHandler;
    
    static {
        AdTeaserView.aol = -1;
        AdTeaserView.ant = -1;
        AdTeaserView.aZC = -1;
    }
    
    public AdTeaserView(final Context context) {
        this(context, null);
    }
    
    public AdTeaserView(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public AdTeaserView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.aMj = false;
        this.aqI = null;
        this.anZ = null;
        this.aHx = -1;
        this.aZE = false;
        this.mHandler = new Handler();
        this.aZF = false;
        this.aME = false;
        this.aZG = true;
        this.azx = false;
        this.aZH = new h(this);
        this.aor = new i(this);
        this.aZI = new j(this);
        this.aZJ = new k(this);
        this.aZK = new l(this);
        this.aZL = new m(this);
        this.aZM = new n(this);
        this.aZN = (LoaderManager$LoaderCallbacks<b<Advertisement>>)new g(this);
        final Resources resources = context.getResources();
        synchronized (AdTeaserView.class) {
            if (AdTeaserView.aol == -1) {
                AdTeaserView.aol = resources.getInteger(2131427360);
                AdTeaserView.ant = resources.getInteger(2131427343);
                AdTeaserView.aZB = resources.getInteger(2131427403);
                AdTeaserView.aZC = resources.getInteger(2131427351);
            }
            // monitorexit(AdTeaserView.class)
            this.aZD = BitmapFactory.decodeResource(this.getResources(), 2130837617);
        }
    }
    
    private void Dh() {
        this.mHandler.removeCallbacks(this.aZL);
        final int height = this.getHeight();
        this.aHx = height;
        final ObjectAnimator ofInt = ObjectAnimator.ofInt((Object)this, "animatedHeight", new int[] { height, 0 });
        ofInt.setInterpolator((TimeInterpolator)new DecelerateInterpolator(2.0f));
        ofInt.setDuration((long)AdTeaserView.ant);
        ofInt.addListener((Animator$AnimatorListener)new o(this));
        ofInt.start();
        AsyncTask.execute(this.aZM);
    }
    
    private void Di() {
        this.aZG = !this.anZ.xL();
        float alpha;
        if (this.aZG) {
            alpha = 1.0f;
        }
        else {
            alpha = 0.3f;
        }
        this.setAlpha(alpha);
    }
    
    private void reset() {
        this.aZy.setAlpha(1.0f);
        this.aZy.setTranslationX(0.0f);
        this.setAnimatedHeight(-1);
    }
    
    public final void a(final LoaderManager aqI, final Bundle bundle) {
        if (this.aqI != null) {
            throw new IllegalStateException("This view has already been bound to a LoaderManager.");
        }
        (this.aqI = aqI).initLoader(1500, (Bundle)null, (LoaderManager$LoaderCallbacks)this.aZN);
        if (bundle != null && bundle.containsKey("AdTeaserView")) {
            this.aZF = bundle.getBundle("AdTeaserView").getBoolean("reported-shown", false);
        }
        this.aME = true;
    }
    
    public final void a(final Folder aqp, final u u) {
        this.aMj = false;
        if (aqp != null && u != null && "^sq_ig_i_promo".equals(GmailProvider.u(aqp))) {
            this.aqp = aqp;
            if (this.aZA != null) {
                if (this.aZp.bcs == 1) {
                    this.aMj = false;
                    return;
                }
                this.aMj = true;
                if (!this.azx) {
                    if (!this.aZE) {
                        a.oq().a("view_ad_teaser", null, null, 0L);
                    }
                    this.azx = true;
                }
            }
        }
    }
    
    public final void a(final as aob, final Account nc) {
        this.aob = aob;
        this.Nc = nc;
        this.aZx = GmailProvider.es(this.Nc.lw());
        final String lw = nc.lw();
        if (this.auE == null || !lw.equals(this.auE.pM())) {
            this.auE = new ConversationItemView(this.getContext(), nc);
            if (this.aZy.getChildCount() > 1) {
                this.aZy.removeViews(1, -1 + this.aZy.getChildCount());
            }
            this.aZy.addView((View)this.auE);
            this.auE.setOnClickListener((View$OnClickListener)this);
        }
    }
    
    public final void bm(final boolean ame) {
        E.c("AdTeaserView", "onConversationListVisibilityChanged: %b", ame);
        if (!(this.aME = ame)) {
            this.aqI.destroyLoader(1500);
            this.aqI.initLoader(1500, (Bundle)null, (LoaderManager$LoaderCallbacks)this.aZN);
        }
    }
    
    public final void dismiss() {
        E.c("AdTeaserView", "dismiss() called when mShowingLeaveBehind was %b", this.aZE);
        if (this.aZE) {
            this.Dh();
            return;
        }
        a.oq().a("list_swipe", "ad_teaser", null, 0L);
        this.reset();
        final ViewGroup$LayoutParams layoutParams = this.aZz.getLayoutParams();
        layoutParams.height = this.auE.getHeight();
        this.aZz.setLayoutParams(layoutParams);
        this.auE.setVisibility(8);
        this.aZz.setVisibility(0);
        this.aZE = true;
        LeaveBehindItem.p(this.aZz, AdTeaserView.aZC);
        this.mHandler.postDelayed(this.aZL, (long)AdTeaserView.aZB);
    }
    
    public final int getPosition() {
        return 0;
    }
    
    public final void j(final ae anZ) {
        if (this.anZ != anZ) {
            this.azx = false;
        }
        this.anZ = anZ;
    }
    
    public final void m(final Bundle bundle) {
        final Bundle bundle2 = new Bundle(1);
        bundle2.putBoolean("reported-shown", this.aZF);
        bundle.putBundle("AdTeaserView", bundle2);
    }
    
    public void onClick(final View view) {
        if (this.aZG) {
            this.aob.xX().AH();
            AsyncTask.execute(this.aZH);
            this.aob.yi().a(s.a(this.aZp, this.Nc), this.anZ.a(this));
        }
    }
    
    protected void onFinishInflate() {
        this.aZy = (ViewGroup)this.findViewById(2131558627);
        this.aZz = this.aZy.findViewById(2131558628);
        final TextView textView = (TextView)this.aZz.findViewById(2131558940);
        textView.setText(2131297186);
        this.aZz.setOnClickListener((View$OnClickListener)new f(this));
        final Resources resources = this.getResources();
        textView.setTextColor(resources.getColor(2131362035));
        ((TextView)this.findViewById(2131558941)).setTextColor(resources.getColor(2131362034));
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
        return di.aE((View)this.aZy);
    }
    
    public final float pL() {
        return AdTeaserView.aol;
    }
    
    public final void qD() {
        this.mHandler.removeCallbacks(this.aZL);
        if (this.aZE) {
            AsyncTask.execute(this.aZM);
        }
    }
    
    public void setAnimatedHeight(final int aHx) {
        this.aHx = aHx;
        this.requestLayout();
    }
    
    public final void wk() {
        this.Di();
    }
    
    public final void wl() {
        this.Di();
    }
    
    public final void xK() {
    }
    
    public final boolean yE() {
        return this.aMj;
    }
    
    public final void yK() {
        if (!this.aZE) {
            this.reset();
            this.aZz.setVisibility(8);
            this.auE.setVisibility(0);
            this.auE.a(this.aZA, this.aob, this.aor, this.aqp, this.Nc.ayw.aBS, this.anZ, this.aop);
            this.Di();
            if (!this.aZF && this.aME) {
                this.aZK.a(this.aZp);
                AsyncTask.execute((Runnable)this.aZK);
            }
        }
    }
    
    public final boolean yL() {
        return false;
    }
    
    public final boolean yM() {
        if (this.aZE) {
            this.Dh();
            return true;
        }
        return false;
    }
}
