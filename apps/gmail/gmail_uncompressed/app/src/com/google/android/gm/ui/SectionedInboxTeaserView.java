package com.google.android.gm.ui;

import com.android.mail.c.*;
import android.app.*;
import com.android.mail.providers.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import com.android.mail.utils.*;
import android.text.*;
import com.google.android.gm.*;
import android.widget.*;
import android.graphics.*;
import android.graphics.drawable.shapes.*;
import android.graphics.drawable.*;
import android.os.*;
import com.android.mail.browse.*;
import com.google.android.gm.provider.*;
import java.util.*;
import com.android.mail.a.*;
import android.view.animation.*;
import android.animation.*;
import com.google.common.collect.*;
import android.view.*;
import com.android.mail.ui.*;

public class SectionedInboxTeaserView extends LinearLayout implements aL, dh
{
    private static float[] aJj;
    private static int ant;
    private static int aol;
    private static final String mW;
    private Account Nc;
    private final int aDu;
    private int aHx;
    private View aHy;
    private final LoaderManager$LoaderCallbacks<b<Folder>> aIQ;
    private boolean aMj;
    private bV aMk;
    private final com.google.android.gm.persistence.b aWK;
    private ae anZ;
    private LoaderManager aqI;
    private boolean bqD;
    private View bqE;
    private View bqF;
    private Map<String, N> bqG;
    private boolean bqH;
    private final LoaderManager$LoaderCallbacks<b<Conversation>> bqI;
    private int vk;
    
    static {
        mW = D.AU();
        SectionedInboxTeaserView.aol = -1;
        SectionedInboxTeaserView.ant = -1;
    }
    
    public SectionedInboxTeaserView(final Context context) {
        this(context, null);
    }
    
    public SectionedInboxTeaserView(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public SectionedInboxTeaserView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.aMj = false;
        this.vk = 0;
        this.bqD = false;
        this.aqI = null;
        this.anZ = null;
        this.aHx = -1;
        this.bqH = false;
        this.aIQ = (LoaderManager$LoaderCallbacks<b<Folder>>)new L(this);
        this.bqI = (LoaderManager$LoaderCallbacks<b<Conversation>>)new M(this);
        final Resources resources = context.getResources();
        synchronized (SectionedInboxTeaserView.class) {
            if (SectionedInboxTeaserView.aol == -1) {
                SectionedInboxTeaserView.aol = resources.getInteger(2131427360);
                SectionedInboxTeaserView.ant = resources.getInteger(2131427343);
            }
            if (SectionedInboxTeaserView.aJj == null) {
                final float dimension = context.getResources().getDimension(2131492989);
                SectionedInboxTeaserView.aJj = new float[] { dimension, dimension, dimension, dimension, dimension, dimension, dimension, dimension };
            }
            // monitorexit(SectionedInboxTeaserView.class)
            this.aWK = com.google.android.gm.persistence.b.DD();
            this.aDu = resources.getInteger(2131427365);
        }
    }
    
    private N S(final int n, final int text) {
        final View viewById = this.findViewById(n);
        viewById.findViewById(2131558836).setBackgroundResource(2130837598);
        ((TextView)viewById.findViewById(2131558839)).setText(text);
        final TextView textView = (TextView)viewById.findViewById(2131558840);
        final TextView textView2 = (TextView)viewById.findViewById(2131558842);
        textView2.setVisibility(0);
        return new N(viewById, textView, textView2);
    }
    
    private void a(final N n) {
        n.Iz().setText((CharSequence)ag.m(this.getContext(), n.vT().aAe));
        n.zR().setText((CharSequence)TextUtils.join((CharSequence)this.getResources().getString(2131296553), (Iterable)n.IA()));
    }
    
    private void i(final String s, final int n) {
        final N n2 = this.bqG.get(s);
        final int e = T.e(this.Nc.lw(), s, "0");
        final ImageView imageView = (ImageView)n2.zQ().findViewById(2131558837);
        final Drawable drawable = this.getResources().getDrawable(n);
        drawable.mutate().setColorFilter(0xFF000000 | e, PorterDuff$Mode.SRC_IN);
        imageView.setImageDrawable(drawable);
        final ShapeDrawable backgroundDrawable = new ShapeDrawable((Shape)new RoundRectShape(SectionedInboxTeaserView.aJj, (RectF)null, (float[])null));
        backgroundDrawable.getPaint().setColor(e);
        n2.Iz().setBackgroundDrawable((Drawable)backgroundDrawable);
    }
    
    public final void a(final LoaderManager aqI, final Bundle bundle) {
        if (this.aqI != null) {
            throw new IllegalStateException("This view has already been bound to a LoaderManager.");
        }
        (this.aqI = aqI).initLoader(1000, (Bundle)null, (LoaderManager$LoaderCallbacks)this.aIQ);
    }
    
    public final void a(final Account nc, final bV aMk) {
        this.Nc = nc;
        this.aMk = aMk;
    }
    
    public final void a(final Folder folder, final u u) {
        this.aMj = false;
        if (folder != null && u != null && "^sq_ig_i_personal".equals(GmailProvider.u(folder)) && this.aWK.E(this.getContext(), this.Nc.lw())) {
            if (!this.bqH && MailEngine.eO(this.Nc.lw()) != null) {
                this.i("^sq_ig_i_social", 2130837756);
                this.i("^sq_ig_i_promo", 2130837755);
                this.i("^sq_ig_i_notification", 2130837757);
                this.i("^sq_ig_i_group", 2130837754);
                this.bqH = true;
            }
            if (this.bqH) {
                final MailEngine eo = MailEngine.eO(this.Nc.lw());
                if (eo != null) {
                    final Iterator<N> iterator = this.bqG.values().iterator();
                    while (iterator.hasNext()) {
                        iterator.next().zQ().setVisibility(8);
                    }
                    final Collection<ai> values = eo.Fu().values();
                    final ArrayList list = new ArrayList<Object>(values.size());
                    final HashMap<String, Long> hashMap = new HashMap<String, Long>(this.bqG.size());
                    if (values.size() != 0) {
                        this.bqD = eo.Fy();
                        final View bqE = this.bqE;
                        int visibility;
                        if (this.bqD) {
                            visibility = 0;
                        }
                        else {
                            visibility = 8;
                        }
                        bqE.setVisibility(visibility);
                        final View bqF = this.bqF;
                        int visibility2;
                        if (this.bqD) {
                            visibility2 = 0;
                        }
                        else {
                            visibility2 = 8;
                        }
                        bqF.setVisibility(visibility2);
                        if (this.bqD) {
                            this.aMj = true;
                            this.aWK.F(this.getContext(), this.Nc.lw());
                        }
                        final Iterator<ai> iterator2 = values.iterator();
                        while (iterator2.hasNext()) {
                            final String label = iterator2.next().getLabel();
                            if (!"^sq_ig_i_personal".equals(label)) {
                                final N n = this.bqG.get(label);
                                final Folder vt = n.vT();
                                if (vt == null || (!this.bqD && vt.aAe <= 0)) {
                                    continue;
                                }
                                final long aAr = vt.aAr;
                                final long s = this.aWK.s(this.getContext(), this.Nc.lw(), label);
                                final long max = Math.max(this.aWK.t(this.getContext(), this.Nc.lw(), label), aAr);
                                if (s >= aAr && !this.bqD) {
                                    continue;
                                }
                                list.add(max);
                                final View zq = n.zQ();
                                zq.setVisibility(0);
                                zq.setOnClickListener((View$OnClickListener)new J(this, vt));
                                this.a(n);
                                hashMap.put(label, max);
                            }
                        }
                        if (this.bqD || !list.isEmpty()) {
                            this.aMj = true;
                            long n2 = -1L;
                            if (!list.isEmpty()) {
                                Collections.sort((List<Comparable>)list);
                                final long longValue = list.get(-1 + list.size());
                                final Iterator<Map.Entry<Object, Object>> iterator3 = hashMap.entrySet().iterator();
                                while (iterator3.hasNext()) {
                                    iterator3.next().setValue(longValue);
                                }
                                this.aWK.b(this.getContext(), this.Nc.lw(), hashMap);
                                n2 = longValue;
                            }
                            this.vk = 0;
                            if (!this.bqD) {
                                final int position = u.getPosition();
                                if (u.moveToFirst()) {
                                    do {
                                        final Conversation ph = u.ph();
                                        long n3;
                                        if (ph != null) {
                                            n3 = ph.ayW;
                                        }
                                        else {
                                            n3 = u.getLong(6);
                                        }
                                        if (n3 <= n2) {
                                            break;
                                        }
                                        ++this.vk;
                                    } while (u.moveToNext());
                                    u.moveToPosition(position);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    public final void bm(final boolean b) {
    }
    
    public final void dismiss() {
        this.aMj = false;
        if (this.bqD) {
            this.bqD = false;
            this.aWK.G(this.getContext(), this.Nc.lw());
            MailEngine.eO(this.Nc.lw()).Fz();
        }
        a.oq().a("list_swipe", "sectioned_inbox_teaser", null, 0L);
        final y<String, Long> zv = ImmutableMap.Zv();
        for (final Map.Entry<String, N> entry : this.bqG.entrySet()) {
            final String s = entry.getKey();
            if (entry.getValue().vT() != null) {
                zv.p(s, entry.getValue().vT().aAr);
            }
        }
        this.aWK.a(this.getContext(), this.Nc.lw(), zv.Zo());
        final int height = this.getHeight();
        this.aHx = height;
        final ObjectAnimator ofInt = ObjectAnimator.ofInt((Object)this, "animatedHeight", new int[] { height, 0 });
        ofInt.setInterpolator((TimeInterpolator)new DecelerateInterpolator(2.0f));
        ofInt.setDuration((long)SectionedInboxTeaserView.ant);
        ofInt.addListener((Animator$AnimatorListener)new K(this));
        ofInt.start();
    }
    
    public final int getPosition() {
        return this.vk;
    }
    
    public final void j(final ae anZ) {
        this.anZ = anZ;
    }
    
    public final void m(final Bundle bundle) {
    }
    
    protected void onFinishInflate() {
        (this.bqE = this.findViewById(2131558903)).setOnClickListener((View$OnClickListener)new H(this));
        (this.bqF = this.findViewById(2131558908)).setOnClickListener((View$OnClickListener)new I(this));
        this.aHy = this.findViewById(2131558627);
        final y<String, N> zv = ImmutableMap.Zv();
        zv.p("^sq_ig_i_social", this.S(2131558904, 2131297161));
        zv.p("^sq_ig_i_promo", this.S(2131558905, 2131297162));
        zv.p("^sq_ig_i_notification", this.S(2131558906, 2131297163));
        zv.p("^sq_ig_i_group", this.S(2131558907, 2131297164));
        this.bqG = zv.Zo();
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
        return SectionedInboxTeaserView.aol;
    }
    
    public final void qD() {
    }
    
    public void setAnimatedHeight(final int aHx) {
        this.aHx = aHx;
        this.requestLayout();
    }
    
    public final void wk() {
    }
    
    public final void wl() {
    }
    
    public final void xK() {
        if (this.bqD) {
            this.aWK.G(this.getContext(), this.Nc.lw());
            this.dismiss();
        }
    }
    
    public final boolean yE() {
        return this.aMj;
    }
    
    public final void yK() {
    }
    
    public final boolean yL() {
        return false;
    }
    
    public final boolean yM() {
        return false;
    }
}
