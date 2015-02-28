package com.android.mail.browse;

import com.android.mail.f.*;
import android.widget.*;
import android.support.v4.e.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.text.format.*;
import android.content.*;
import android.text.style.*;
import android.view.animation.*;
import com.android.mail.b.*;
import android.util.*;
import com.android.mail.providers.*;
import com.android.mail.a.*;
import android.view.*;
import android.animation.*;
import android.graphics.drawable.*;
import java.util.*;
import android.graphics.*;
import com.android.mail.ui.*;
import com.android.mail.utils.*;
import android.text.*;

public class ConversationItemView extends View implements bd, j, aK, dh
{
    private static int amU;
    private static b amV;
    private static final Typeface amW;
    private static final Typeface amX;
    private static final int[] amY;
    private static Bitmap amZ;
    private static final Paint anA;
    private static final Paint anB;
    private static int anC;
    private static BroadcastReceiver anD;
    private static Bitmap ana;
    private static Bitmap anb;
    private static Bitmap anc;
    private static Bitmap and;
    private static Bitmap ane;
    private static Bitmap anf;
    private static Bitmap ang;
    private static Bitmap anh;
    private static Bitmap ani;
    private static Bitmap anj;
    private static Bitmap ank;
    private static Drawable anl;
    private static String anm;
    private static String ann;
    private static int ano;
    private static int anp;
    private static int anq;
    private static int anr;
    private static int ans;
    private static int ant;
    private static int anu;
    private static int anv;
    private static int anw;
    private static int anx;
    private static final TextPaint any;
    private static final TextPaint anz;
    private static int aog;
    private static TextAppearanceSpan aoh;
    private static TextAppearanceSpan aoi;
    private static TextAppearanceSpan aoj;
    private static BackgroundColorSpan aok;
    private static int aol;
    private static CharacterStyle aom;
    private static final String mW;
    private final Account Nc;
    private final SparseArray<Drawable> anE;
    private int anF;
    private int anG;
    private int anH;
    private int anI;
    private int anJ;
    private int anK;
    private int anL;
    private int anM;
    private final boolean anN;
    private final boolean anO;
    O anP;
    private P anQ;
    private R anR;
    private boolean anS;
    private boolean anT;
    private ConversationCheckedSet anU;
    private Folder anV;
    private boolean anW;
    private boolean anX;
    private boolean anY;
    private ae anZ;
    private float aoa;
    private as aob;
    private final TextView aoc;
    private final TextView aod;
    private final TextView aoe;
    private int aof;
    private final c aon;
    private int aoo;
    private Bitmap aop;
    private Rect aoq;
    private M aor;
    private final Context mContext;
    
    static {
        ConversationItemView.amU = 0;
        mW = D.AU();
        amW = Typeface.create("sans-serif", 1);
        amX = Typeface.create("sans-serif-light", 0);
        amY = new int[] { 16842912 };
        any = new TextPaint();
        anz = new TextPaint();
        anA = new Paint();
        anB = new Paint();
        ConversationItemView.any.setAntiAlias(true);
        ConversationItemView.anz.setAntiAlias(true);
        ConversationItemView.anA.setColor(-7829368);
    }
    
    public ConversationItemView(final Context context, final Account nc) {
        super(context);
        this.anE = (SparseArray<Drawable>)new SparseArray();
        this.anF = -1;
        this.anT = false;
        this.aoa = 1.0f;
        this.aoo = -1;
        this.aop = null;
        this.aoq = new Rect();
        this.aor = null;
        ag.cJ("CIVC constructor");
        this.setClickable(true);
        this.setLongClickable(true);
        this.mContext = context.getApplicationContext();
        final Resources resources = this.mContext.getResources();
        this.anN = ag.b(resources);
        this.anO = !resources.getBoolean(2131623944);
        this.Nc = nc;
        ak(this.mContext);
        final int layoutDirectionFromLocale = q.getLayoutDirectionFromLocale(Locale.getDefault());
        (this.aoc = new TextView(this.mContext)).setIncludeFontPadding(false);
        (this.aod = new TextView(this.mContext)).setEllipsize(TextUtils$TruncateAt.END);
        this.aod.setIncludeFontPadding(false);
        ad.d((View)this.aod, layoutDirectionFromLocale);
        al.aJ((View)this.aod);
        (this.aoe = new TextView(this.mContext)).setEllipsize(TextUtils$TruncateAt.END);
        this.aoe.setIncludeFontPadding(false);
        this.aoe.setTypeface(ConversationItemView.amX);
        this.aoe.setTextColor(this.getResources().getColor(2131361919));
        ad.d((View)this.aoe, layoutDirectionFromLocale);
        al.aJ((View)this.aoe);
        if (layoutDirectionFromLocale == 1) {
            this.aod.setMaxLines(1);
            this.aoe.setMaxLines(1);
        }
        else {
            this.aod.setSingleLine();
            this.aoe.setSingleLine();
        }
        (this.aon = new c(resources, ConversationItemView.anv)).setCallback((Drawable$Callback)this);
        ag.Bi();
    }
    
    private static SpannableString a(final CharacterStyle[] array, final CharSequence charSequence) {
        final SpannableString spannableString = new SpannableString(charSequence);
        if (array != null && array.length > 0) {
            spannableString.setSpan((Object)array[0], 0, spannableString.length(), 0);
        }
        return spannableString;
    }
    
    private void a(final R anR, final as aob, final M aor, final ConversationCheckedSet anU, final Folder anV, final int n, final boolean anX, final boolean b, final boolean b2, final ae anZ, final int aoo, final Bitmap aop, final boolean b3, final boolean anY) {
        this.aoo = aoo;
        this.aop = aop;
        this.aor = aor;
        this.anY = anY;
        if (this.anR != null) {
            ag.cJ("unbind");
            boolean b4;
            if (anR.amQ.id != this.anR.amQ.id) {
                b4 = true;
            }
            else {
                b4 = false;
            }
            if (b4 || !this.anR.aqa.equals(anR.aqa)) {
                this.aon.ox().ov();
            }
            if (b4) {
                this.aon.ap(!this.anT);
            }
            ag.Bi();
        }
        this.anP = null;
        this.anR = anR;
        this.aob = aob;
        this.anU = anU;
        if (this.anU != null) {
            this.anU.a(this);
        }
        this.anV = anV;
        this.anW = (anV != null && !anV.uU());
        this.anX = anX;
        this.anZ = anZ;
        ag.cJ("drawables");
        this.aon.ox().a(this.anZ.xI());
        this.aon.ox().a(this.anZ.xJ());
        ag.Bi();
        if (n == 1) {
            this.aof = 1;
        }
        else {
            this.aof = 0;
        }
        ag.cJ("folder displayer");
        if (this.anR.apS == null) {
            this.anR.apS = new N(this.mContext, this.anZ.qJ());
        }
        else {
            this.anR.apS.reset();
        }
        ag.Bi();
        int n2;
        if (this.anV.uR()) {
            n2 = 2;
        }
        else {
            n2 = -1;
        }
        ag.cJ("load folders");
        this.anR.apS.a(this.anR.amQ, this.anV.azZ, n2);
        ag.Bi();
        if (this.anR.apE) {
            ag.cJ("relative time");
            this.anR.apD = DateUtils.getRelativeTimeSpanString(this.mContext, this.anR.amQ.ayW);
            ag.Bi();
        }
        else {
            this.anR.apD = "";
        }
        ag.cJ("config setup");
        this.anQ = new P().bW(this.aof).aw(b3);
        if (anR.apS.pS()) {
            this.anQ.pU();
        }
        if (anR.apT || anR.apU || anR.apV) {
            this.anQ.pV();
        }
        if (this.anR.amQ.color != 0) {
            this.anQ.pW();
        }
        this.anR.apF = null;
        final int azf = this.anR.amQ.azf;
        boolean b5;
        if (this.anR.amQ.priority == 1) {
            b5 = true;
        }
        else {
            b5 = false;
        }
        boolean b6;
        if (b5 && b) {
            b6 = true;
        }
        else {
            b6 = false;
        }
        if (b2 && azf == 2) {
            final R anR2 = this.anR;
            Bitmap apF;
            if (b6) {
                apF = ConversationItemView.ane;
            }
            else {
                apF = ConversationItemView.anc;
            }
            anR2.apF = apF;
        }
        else if (b2 && azf == 1) {
            final R anR3 = this.anR;
            Bitmap apF2;
            if (b6) {
                apF2 = ConversationItemView.anf;
            }
            else {
                apF2 = ConversationItemView.and;
            }
            anR3.apF = apF2;
        }
        else if (b6) {
            this.anR.apF = ConversationItemView.ang;
        }
        if (this.anR.apF != null) {
            this.anQ.pX();
        }
        ag.Bi();
        ag.cJ("content description");
        this.px();
        ag.Bi();
        this.requestLayout();
    }
    
    private static void ak(final Context context) {
        synchronized (ConversationItemView.class) {
            if (ConversationItemView.anD == null) {
                context.registerReceiver(ConversationItemView.anD = new L(), new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            }
            if (ConversationItemView.amZ == null) {
                final Resources resources = context.getResources();
                ConversationItemView.amZ = BitmapFactory.decodeResource(resources, 2130837753);
                ConversationItemView.ana = BitmapFactory.decodeResource(resources, 2130837752);
                ConversationItemView.anb = BitmapFactory.decodeResource(resources, 2130837628);
                ConversationItemView.anc = BitmapFactory.decodeResource(resources, 2130837691);
                ConversationItemView.and = BitmapFactory.decodeResource(resources, 2130837694);
                ConversationItemView.ane = BitmapFactory.decodeResource(resources, 2130837692);
                ConversationItemView.anf = BitmapFactory.decodeResource(resources, 2130837695);
                ConversationItemView.ang = BitmapFactory.decodeResource(resources, 2130837693);
                ConversationItemView.anh = BitmapFactory.decodeResource(resources, 2130837633);
                ConversationItemView.ani = BitmapFactory.decodeResource(resources, 2130837630);
                ConversationItemView.anj = BitmapFactory.decodeResource(resources, 2130837632);
                ConversationItemView.ank = BitmapFactory.decodeResource(resources, 2130837631);
                ConversationItemView.anl = resources.getDrawable(2130837789);
                ConversationItemView.aom = CharacterStyle.wrap((CharacterStyle)new ForegroundColorSpan(resources.getColor(2131361916)));
                ConversationItemView.ano = resources.getColor(2131361916);
                ConversationItemView.aoh = new TextAppearanceSpan(context, 2131231135);
                ConversationItemView.aoi = new TextAppearanceSpan(context, 2131231136);
                ConversationItemView.aoj = new TextAppearanceSpan(context, 2131231159);
                ConversationItemView.aok = new BackgroundColorSpan(resources.getColor(2131361987));
                ConversationItemView.anp = resources.getColor(2131361921);
                ConversationItemView.anq = resources.getColor(2131361920);
                ConversationItemView.anr = resources.getDimensionPixelSize(2131492986);
                ConversationItemView.ans = resources.getDimensionPixelSize(2131492987);
                ConversationItemView.ant = resources.getInteger(2131427343);
                ConversationItemView.anu = resources.getInteger(2131427344);
                ConversationItemView.anm = resources.getString(2131296605);
                ConversationItemView.ann = resources.getString(2131296608);
                ConversationItemView.aol = resources.getInteger(2131427360);
                ConversationItemView.aog = resources.getInteger(2131427389);
                ConversationItemView.anv = resources.getInteger(2131427384);
                ConversationItemView.anw = resources.getDimensionPixelSize(2131493121);
                ConversationItemView.anx = resources.getDimensionPixelSize(2131493122);
                ConversationItemView.anB.setColor(resources.getColor(2131361915));
                ConversationItemView.anC = resources.getDimensionPixelSize(2131493147);
            }
        }
    }
    
    private ObjectAnimator au(final boolean b) {
        final SwipeableListView pf = this.pF();
        int measuredWidth;
        if (pf != null) {
            measuredWidth = pf.getMeasuredWidth();
        }
        else {
            measuredWidth = 0;
        }
        float n;
        if (b) {
            n = measuredWidth;
        }
        else {
            n = 0.0f;
        }
        float n2 = 0.0f;
        if (!b) {
            n2 = measuredWidth;
        }
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this, "translationX", new float[] { n, n2 });
        ofFloat.setInterpolator((TimeInterpolator)new DecelerateInterpolator(2.0f));
        ofFloat.setDuration((long)ConversationItemView.anu);
        return ofFloat;
    }
    
    private ObjectAnimator av(final boolean b) {
        float n = 1.0f;
        float n2;
        if (b) {
            n2 = 0.0f;
        }
        else {
            n2 = n;
        }
        if (!b) {
            n = 0.0f;
        }
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this, "animatedHeightFraction", new float[] { n2, n });
        ofFloat.setInterpolator((TimeInterpolator)new DecelerateInterpolator(2.0f));
        ofFloat.setDuration((long)ConversationItemView.ant);
        return ofFloat;
    }
    
    private static void g(final View view, final int n, final int n2) {
        view.measure(View$MeasureSpec.makeMeasureSpec(n, 1073741824), View$MeasureSpec.makeMeasureSpec(n2, 1073741824));
        view.layout(0, 0, n, n2);
    }
    
    private SpannableStringBuilder k(final List<SpannableString> list) {
        final SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int n2;
        float n3;
        if (this.anV.uZ() && !list.isEmpty()) {
            final SpannableString rv = aR.rV();
            final CharacterStyle[] array = (CharacterStyle[])rv.getSpans(0, rv.length(), (Class)CharacterStyle.class);
            if (array.length > 0) {
                array[0].updateDrawState(ConversationItemView.any);
            }
            final float n = 0.0f + ConversationItemView.any.measureText(rv.toString());
            spannableStringBuilder.append((CharSequence)rv);
            n2 = 1;
            n3 = n;
        }
        else {
            n2 = 0;
            n3 = 0.0f;
        }
        final SpannableStringBuilder apW = this.anR.apW;
        if (!TextUtils.isEmpty((CharSequence)apW)) {
            final CharacterStyle[] array2 = (CharacterStyle[])apW.getSpans(0, apW.length(), (Class)CharacterStyle.class);
            if (array2.length > 0) {
                array2[0].updateDrawState(ConversationItemView.any);
            }
            n3 += ConversationItemView.any.measureText(apW.toString());
        }
        final Iterator<SpannableString> iterator = list.iterator();
        int n4 = n2;
        int n5 = 0;
        float n6 = n3;
        Object o = null;
        while (iterator.hasNext()) {
            final SpannableString spannableString = iterator.next();
            if (spannableString != null) {
                if (n5 != 0) {
                    break;
                }
                final CharacterStyle[] array3 = (CharacterStyle[])spannableString.getSpans(0, spannableString.length(), (Class)CharacterStyle.class);
                if (array3.length > 0) {
                    array3[0].updateDrawState(ConversationItemView.any);
                }
                if (aR.auf.equals(spannableString.toString())) {
                    o = a(array3, ConversationItemView.ann + spannableString + ConversationItemView.ann);
                }
                else if (n4 == 0 && spannableStringBuilder.length() > 0 && (o == null || !aR.auf.equals(((SpannableString)o).toString()))) {
                    o = a(array3, ConversationItemView.anm + spannableString);
                }
                else {
                    o = spannableString;
                    n4 = 0;
                }
                if (array3.length > 0) {
                    array3[0].updateDrawState(ConversationItemView.any);
                }
                final float n7 = (int)ConversationItemView.any.measureText(((SpannableString)o).toString());
                Object a;
                float n8;
                int n9;
                if (n7 + n6 > this.anM) {
                    a = a(array3, TextUtils.ellipsize((CharSequence)o, ConversationItemView.any, this.anM - n6, TextUtils$TruncateAt.END));
                    n8 = (int)ConversationItemView.any.measureText(((SpannableString)a).toString());
                    n9 = 1;
                }
                else {
                    n9 = n5;
                    n8 = n7;
                    a = null;
                }
                final float n10 = n8 + n6;
                if (a == null) {
                    a = o;
                }
                spannableStringBuilder.append((CharSequence)a);
                n6 = n10;
                n5 = n9;
            }
        }
        this.anR.apX = spannableStringBuilder.length();
        if (!TextUtils.isEmpty((CharSequence)apW)) {
            spannableStringBuilder.append((CharSequence)apW);
        }
        return spannableStringBuilder;
    }
    
    private boolean l(final float n, final float n2) {
        if (this.anR.apG != null) {
            if (al.aH(this)) {
                if (n > this.anI + this.anJ + ConversationItemView.anr) {
                    return false;
                }
            }
            else if (n < this.anI - ConversationItemView.anr) {
                return false;
            }
            if (!this.anW) {
                return true;
            }
            if (n2 < this.anP.aoE) {
                return true;
            }
        }
        return false;
    }
    
    private boolean m(final float n, final float n2) {
        if ((this.anR.apG == null || n2 >= this.anP.aoE) && this.anW) {
            int n3;
            if (al.aH(this)) {
                if (n < this.anP.aou + this.anP.aow + ConversationItemView.anr) {
                    n3 = 1;
                }
                else {
                    n3 = 0;
                }
            }
            else if (n >= this.anP.aou - ConversationItemView.anr) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            if (n3 != 0) {
                return true;
            }
        }
        return false;
    }
    
    private Bitmap pA() {
        if (this.anR.amQ.azc) {
            return ConversationItemView.ana;
        }
        return ConversationItemView.amZ;
    }
    
    private void pD() {
        this.anR.amQ.azc = !this.anR.amQ.azc;
        final Bitmap pa = this.pA();
        this.postInvalidate(this.anP.aou, this.anP.aov, this.anP.aou + pa.getWidth(), this.anP.aov + pa.getHeight());
        final u u = (u)this.anZ.getCursor();
        if (u != null) {
            u.a(this.anR.amQ, "starred", this.anR.amQ.azc);
        }
    }
    
    private SwipeableListView pF() {
        final ViewParent parent = this.getParent();
        Object o;
        if (parent == null || !(parent instanceof View)) {
            o = null;
        }
        else {
            o = parent;
        }
        SwipeableListView pf;
        if (o != null && o instanceof aZ) {
            pf = (SwipeableListView)((aZ)o).getListView();
        }
        else {
            pf = null;
        }
        if (pf == null) {
            pf = this.anZ.pF();
        }
        return pf;
    }
    
    private static void pv() {
        if (ConversationItemView.amV != null) {
            final b amV = ConversationItemView.amV;
            b.td();
        }
    }
    
    private static void pw() {
        if (ConversationItemView.amV != null) {
            final b amV = ConversationItemView.amV;
            b.te();
        }
    }
    
    private void px() {
        final R anR = this.anR;
        String pt = null;
        if (anR != null) {
            final N apS = this.anR.apS;
            pt = null;
            if (apS != null) {
                pt = this.anR.apS.pT();
            }
        }
        if (this.aob.yg()) {
            this.anR.qi();
            this.setContentDescription(this.anR.a(this.mContext, this.anV.uZ(), pt));
        }
    }
    
    private void py() {
        if (this.aof != 1 || this.anR.apZ.qk()) {
            return;
        }
        if (this.anP.apo <= 0 || this.anP.apn <= 0) {
            E.e(ConversationItemView.mW, "Contact image width(%d) or height(%d) is 0", this.anP.apo, this.anP.apn);
            return;
        }
        this.aon.setBounds(0, 0, this.anP.apo, this.anP.apn);
        ag.cJ("load sender image");
        final g ox = this.aon.ox();
        ox.L(this.anP.apo, this.anP.apn);
        ox.x(this.anR.apZ.getName(), this.anR.apZ.lw());
        ag.Bi();
    }
    
    private boolean pz() {
        return this.anN && !this.anO;
    }
    
    public static String s(final Context context, String format) {
        final String string = context.getResources().getString(2131296499);
        if (!TextUtils.isEmpty((CharSequence)format) && format.charAt(0) == '[') {
            final int index = format.indexOf(93);
            if (index > 0) {
                format = String.format(string, ag.cF(format.substring(1, index)), format.substring(index + 1));
            }
        }
        return format;
    }
    
    private void setChecked(final boolean anT) {
        this.anT = anT;
        this.refreshDrawableState();
    }
    
    private boolean w(final float n) {
        final boolean ah = al.aH(this);
        int n2;
        if (ah) {
            n2 = this.anP.app - ConversationItemView.ans;
        }
        else {
            n2 = this.anP.app + this.anP.apo + ConversationItemView.ans;
        }
        float applyDimension;
        if (this.anU == null || this.anU.isEmpty()) {
            applyDimension = 0.0f;
        }
        else {
            applyDimension = TypedValue.applyDimension(1, 16.0f, this.getResources().getDisplayMetrics());
        }
        if (this.anR.apR == 1) {
            if (ah) {
                if (n <= n2 - applyDimension) {
                    return false;
                }
            }
            else if (n >= applyDimension + n2) {
                return false;
            }
            return true;
        }
        return false;
    }
    
    public final void a(final R r, final as as, final M m, final Folder folder, final int n, final ae ae, final Bitmap bitmap) {
        ag.cJ("CIVC.bindAd");
        this.a(r, as, m, null, folder, n, true, false, false, ae, 2130837558, bitmap, true, false);
        ag.Bi();
    }
    
    public final void a(final Conversation conversation, final as as, final ConversationCheckedSet set, final Folder folder, final int n, final boolean b, final boolean b2, final boolean b3, final ae ae) {
        ag.cJ("CIVC.bind");
        this.a(R.b(this.Nc.lw(), conversation), as, null, set, folder, n, b, b2, b3, ae, -1, null, false, true);
        ag.Bi();
    }
    
    public final void a(final ConversationCheckedSet set) {
    }
    
    public final void b(final ConversationCheckedSet set) {
    }
    
    public final boolean bh(final String s) {
        if (this.anR == null || this.anR.amQ == null || this.anU == null) {
            return false;
        }
        Label_0166: {
            if (this.anT) {
                break Label_0166;
            }
            boolean checked = true;
        Label_0078_Outer:
            while (true) {
                this.setChecked(checked);
                final Conversation amQ = this.anR.amQ;
                final SwipeableListView pf = this.pF();
                while (true) {
                    try {
                        int positionForView;
                        if (this.anT && pf != null) {
                            positionForView = pf.getPositionForView((View)this);
                        }
                        else {
                            positionForView = -1;
                        }
                        amQ.position = positionForView;
                        if (this.anU.isEmpty()) {
                            String s2;
                            if (s != null) {
                                s2 = s;
                            }
                            else {
                                s2 = "checkbox";
                            }
                            a.oq().a("enter_cab_mode", s2, null, 0L);
                        }
                        this.anU.n(amQ);
                        if (this.anU.isEmpty()) {
                            pf.bo(true);
                        }
                        final boolean anT = this.anT;
                        boolean b = false;
                        if (!anT) {
                            b = true;
                        }
                        this.aon.aq(b);
                        this.requestLayout();
                        return true;
                        checked = false;
                        continue Label_0078_Outer;
                    }
                    catch (NullPointerException ex) {
                        continue;
                    }
                    break;
                }
            }
        }
    }
    
    public final void dismiss() {
        final SwipeableListView pf = this.pF();
        if (pf != null) {
            pf.a(this);
        }
    }
    
    public void invalidateDrawable(final Drawable drawable) {
        final O anP = this.anP;
        boolean b = false;
        if (anP != null) {
            final boolean equals = this.aon.equals(drawable);
            b = false;
            if (equals) {
                final Rect rect = new Rect(drawable.getBounds());
                rect.offset(this.anP.app, this.anP.apq);
                this.invalidate(rect.left, rect.top, rect.right, rect.bottom);
                b = true;
            }
        }
        if (!b) {
            super.invalidateDrawable(drawable);
        }
    }
    
    public final int oL() {
        return ConversationItemView.anw;
    }
    
    public final float oM() {
        return ConversationItemView.anx;
    }
    
    protected int[] onCreateDrawableState(final int n) {
        final int[] onCreateDrawableState = super.onCreateDrawableState(n + 1);
        if (this.anT) {
            mergeDrawableStates(onCreateDrawableState, ConversationItemView.amY);
        }
        return onCreateDrawableState;
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.anU != null) {
            this.anU.b(this);
        }
    }
    
    protected void onDraw(final Canvas canvas) {
        boolean b = true;
        if (this.anP == null) {
            E.f(ConversationItemView.mW, "null coordinates in ConversationItemView#onDraw", new Object[0]);
            return;
        }
        ag.cJ("CIVC.draw");
        if (this.aof == (b ? 1 : 0)) {
            canvas.save();
            ag.cJ("draw senders image");
            if (!this.aon.isFlipping()) {
                if (this.anT) {
                    b = false;
                }
                this.aon.ap(b);
            }
            canvas.translate((float)this.anP.app, (float)this.anP.apq);
            if (this.aop == null) {
                this.aon.draw(canvas);
            }
            else {
                canvas.drawBitmap(this.aop, (Rect)null, this.aoq, (Paint)ConversationItemView.any);
            }
            ag.Bi();
            canvas.restore();
        }
        final boolean apC = this.anR.apC;
        canvas.save();
        if (this.anR.apN != null) {
            ConversationItemView.any.setTextSize(this.anP.aoC);
            ConversationItemView.any.setTypeface(aR.aO(apC));
            ConversationItemView.any.setColor(ConversationItemView.ano);
            canvas.translate((float)this.anL, (float)(this.anP.aoy + this.anR.apN.getTopPadding()));
            this.anR.apN.draw(canvas);
        }
        else {
            canvas.translate((float)this.anL, (float)this.anP.aoy);
            this.aoc.draw(canvas);
        }
        canvas.restore();
        ConversationItemView.any.setTypeface(Typeface.DEFAULT);
        canvas.save();
        canvas.translate((float)this.anP.aoD, (float)this.anP.aoE);
        this.aod.draw(canvas);
        canvas.restore();
        canvas.save();
        int n = this.anP.aoK - this.aoe.getWidth();
        final int aoI = this.anP.aoI;
        if (!al.aH(this)) {
            n = 0;
        }
        canvas.translate((float)(n + aoI), (float)this.anP.aoJ);
        this.aoe.draw(canvas);
        canvas.restore();
        if (this.anQ.pZ()) {
            this.anR.apS.a(canvas, this.anP, al.aH(this));
        }
        if (this.anQ.qb()) {
            ConversationItemView.anz.setColor(this.anR.amQ.color);
            ConversationItemView.anz.setStyle(Paint$Style.FILL);
            canvas.drawRect((float)this.anP.apf, (float)this.anP.apg, (float)(this.anP.apf + this.anP.aph), (float)(this.anP.apg + this.anP.api), (Paint)ConversationItemView.anz);
        }
        if (this.anQ.qa()) {
            if (this.anR.apU && this.anR.apT) {
                canvas.drawBitmap(ConversationItemView.anj, (float)this.anP.apj, (float)this.anP.apk, (Paint)null);
            }
            else if (this.anR.apU) {
                canvas.drawBitmap(ConversationItemView.anh, (float)this.anP.apj, (float)this.anP.apk, (Paint)null);
            }
            else if (this.anR.apT) {
                canvas.drawBitmap(ConversationItemView.ani, (float)this.anP.apj, (float)this.anP.apk, (Paint)null);
            }
            else if (this.anR.apV) {
                canvas.drawBitmap(ConversationItemView.ank, (float)this.anP.apj, (float)this.anP.apk, (Paint)null);
            }
        }
        if (this.anQ.qc()) {
            canvas.drawBitmap(this.anR.apF, (float)this.anP.apl, (float)this.anP.apm, (Paint)null);
        }
        if (this.anR.apG != null) {
            canvas.drawBitmap(this.anR.apG, (float)this.anH, (float)this.anP.aoW, (Paint)ConversationItemView.any);
        }
        ConversationItemView.any.setTextSize(this.anP.apb);
        final TextPaint any = ConversationItemView.any;
        Typeface typeface;
        if (apC) {
            typeface = ConversationItemView.amW;
        }
        else {
            typeface = ConversationItemView.amX;
        }
        any.setTypeface(typeface);
        final TextPaint any2 = ConversationItemView.any;
        int color;
        if (apC) {
            color = ConversationItemView.anq;
        }
        else {
            color = ConversationItemView.anp;
        }
        any2.setColor(color);
        final CharSequence apD = this.anR.apD;
        canvas.drawText(apD, 0, apD.length(), (float)this.anI, (float)this.anP.apc, (Paint)ConversationItemView.any);
        if (this.anR.apJ != null) {
            canvas.drawBitmap(this.anR.apJ, (float)this.anK, (float)this.anP.apd, (Paint)ConversationItemView.any);
        }
        if (this.anW) {
            canvas.drawBitmap(this.pA(), (float)this.anP.aou, (float)this.anP.aov, (Paint)ConversationItemView.any);
        }
        if (this.anY) {
            final int height = this.getHeight();
            canvas.drawRect(0.0f, (float)(height - ConversationItemView.anC), (float)this.getWidth(), (float)height, ConversationItemView.anB);
        }
        final SwipeableListView pf = this.pF();
        if (pf != null && pf.t(this.anR.amQ)) {
            int n2 = ConversationItemView.anl.getIntrinsicWidth();
            final boolean ah = al.aH(this);
            final Drawable anl = ConversationItemView.anl;
            int n3;
            if (ah) {
                n3 = this.getWidth() - n2;
            }
            else {
                n3 = 0;
            }
            if (ah) {
                n2 = this.getWidth();
            }
            anl.setBounds(n3, 0, n2, this.getHeight());
            ConversationItemView.anl.draw(canvas);
        }
        ag.Bi();
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        pv();
        ag.cJ("CIVC.layout");
        super.onLayout(b, n, n2, n3, n4);
        ag.cJ("text and bitmaps");
        pv();
        if (this.anU != null) {
            this.setChecked(this.anU.m(this.anR.amQ));
        }
        this.anR.apR = this.aof;
        int aoo;
        if (this.aoo > 0) {
            aoo = this.aoo;
        }
        else {
            aoo = 2130837598;
        }
        this.setBackgroundResource(aoo);
        this.anR.apO = (this.anR.amQ.uI() > 0);
        if (this.anR.apK) {
            this.anR.apM = new SpannableStringBuilder((CharSequence)this.anR.apL);
            this.py();
        }
        else if (this.anR.amQ.azk != null) {
            final Context context = this.getContext();
            this.anR.apW = aR.a(context, this.anR.amQ);
            final boolean ayX = this.anR.amQ.ayX;
            final Resources resources = context.getResources();
            int n5;
            if (ayX) {
                n5 = resources.getInteger(2131427392);
            }
            else {
                n5 = resources.getInteger(2131427393);
            }
            this.anR.apZ.clear();
            this.anR.aqa.clear();
            this.anR.aqb.clear();
            aR.a(context, this.anR.amQ.azk, this.anR.apW.toString(), n5, this.anR.aqb, this.anR.aqa, this.anR.apZ, this.Nc, this.anV.uZ());
            this.py();
        }
        else {
            E.g(ConversationItemView.mW, "Null conversationInfo", new Object[0]);
        }
        if (this.anR.qh()) {
            pw();
        }
        else {
            pv();
            pw();
            this.anR.apJ = null;
            if (this.anR.amQ.ayX) {
                this.anR.apJ = ConversationItemView.anb;
            }
            pv();
            pw();
            pw();
        }
        ag.Bi();
        ag.cJ("coordinates");
        pv();
        ConversationItemView.any.setTextSize(this.anP.apb);
        ConversationItemView.any.setTypeface(Typeface.DEFAULT);
        final boolean ah = al.aH(this);
        final TextPaint any = ConversationItemView.any;
        String string;
        if (this.anR.apD != null) {
            string = this.anR.apD.toString();
        }
        else {
            string = "";
        }
        this.anJ = (int)any.measureText(string);
        if (this.anR.apG != null) {
            int aoU;
            if (ah) {
                aoU = this.anP.aoU;
            }
            else {
                aoU = this.anP.aoV - this.anR.apG.getWidth();
            }
            this.anH = aoU;
            int aoX;
            if (ah) {
                aoX = this.anP.aoX;
            }
            else {
                aoX = this.anP.aoY - this.anJ;
            }
            this.anI = aoX;
        }
        else {
            int aoU2;
            if (ah) {
                aoU2 = this.anP.aoU;
            }
            else {
                aoU2 = this.anP.aoV - this.anJ;
            }
            this.anI = aoU2;
        }
        int anK;
        if (ah) {
            anK = this.anI + this.anJ + this.anP.apa;
        }
        else {
            anK = this.anI - ConversationItemView.anb.getWidth() - this.anP.apa;
        }
        this.anK = anK;
        int n7;
        if (this.anR.apJ != null) {
            int n6;
            if (ah) {
                n6 = this.anK + ConversationItemView.anb.getWidth() + this.anP.ape;
            }
            else {
                n6 = this.anK - this.anP.ape;
            }
            n7 = n6;
        }
        else {
            int anK2;
            if (ah) {
                anK2 = this.anK;
            }
            else {
                anK2 = this.anI - this.anP.apa;
            }
            n7 = anK2;
        }
        int anM;
        if (ah) {
            anM = this.anP.aoz + this.anP.aox - n7;
        }
        else {
            anM = n7 - this.anP.aox;
        }
        this.anM = anM;
        int aox;
        if (ah) {
            aox = n7;
        }
        else {
            aox = this.anP.aox;
        }
        this.anL = aox;
        ConversationItemView.any.setTextSize(this.anP.aoC);
        ConversationItemView.any.setTypeface(Typeface.DEFAULT);
        if (this.anM < 0) {
            this.anM = 0;
        }
        if (this.anR.apK) {
            this.anR.apN = new StaticLayout((CharSequence)this.anR.apM, ConversationItemView.any, this.anM, Layout$Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        }
        else {
            final SpannableStringBuilder k = this.k(this.anR.aqb);
            if (k != null) {
                if (this.isActivated() && this.pz()) {
                    k.setSpan((Object)ConversationItemView.aom, 0, this.anR.apX, 33);
                }
                else {
                    k.removeSpan((Object)ConversationItemView.aom);
                }
                final int anM2 = this.anM;
                final int aoA = this.anP.aoA;
                this.aoc.setLayoutParams(new ViewGroup$LayoutParams(anM2, aoA));
                this.aoc.setMaxLines(this.anP.aoB);
                this.aoc.setTextSize(0, this.anP.aoC);
                g((View)this.aoc, anM2, aoA);
                this.aoc.setText((CharSequence)k);
            }
        }
        pw();
        ag.Bi();
        ag.cJ("subject");
        final boolean apC = this.anR.apC;
        String apH;
        if (this.anR.apH == null) {
            apH = "";
        }
        else {
            apH = this.anR.apH;
        }
        final String e = Conversation.e(this.mContext, apH, this.anZ.qJ().unicodeWrap(s(this.getContext(), this.anR.amQ.ayV)));
        final SpannableString text = new SpannableString((CharSequence)e);
        int length;
        if (apH != null) {
            length = apH.length();
        }
        else {
            length = 0;
        }
        if (!TextUtils.isEmpty((CharSequence)apH)) {
            ((Spannable)text).setSpan((Object)TextAppearanceSpan.wrap((CharacterStyle)ConversationItemView.aoj), 0, length, 33);
            ((Spannable)text).setSpan((Object)TextAppearanceSpan.wrap((CharacterStyle)ConversationItemView.aok), 0, length, 33);
            ((Spannable)text).setSpan((Object)new i((Spanned)text, this), 0, length, 33);
        }
        if (!TextUtils.isEmpty((CharSequence)e)) {
            TextAppearanceSpan textAppearanceSpan;
            if (apC) {
                textAppearanceSpan = ConversationItemView.aoh;
            }
            else {
                textAppearanceSpan = ConversationItemView.aoi;
            }
            ((Spannable)text).setSpan((Object)TextAppearanceSpan.wrap((CharacterStyle)textAppearanceSpan), length, e.length(), 33);
        }
        if (this.isActivated() && this.pz()) {
            ((Spannable)text).setSpan((Object)ConversationItemView.aom, length, ((Spannable)text).length(), 18);
        }
        final int aoF = this.anP.aoF;
        final int aoG = this.anP.aoG;
        this.aod.setLayoutParams(new ViewGroup$LayoutParams(aoF, aoG));
        this.aod.setTextSize(0, this.anP.aoH);
        g((View)this.aod, aoF, aoG);
        this.aod.setText((CharSequence)text);
        final SpannableString text2 = new SpannableString((CharSequence)this.anR.amQ.uG());
        final int n8 = this.anP.aoK - N.a(this.anR.apS, this.anP);
        final int aoL = this.anP.aoL;
        this.aoe.setLayoutParams(new ViewGroup$LayoutParams(n8, aoL));
        this.aoe.setTextSize(0, this.anP.aoM);
        g((View)this.aoe, n8, aoL);
        this.aoe.setText((CharSequence)text2);
        if (!this.anR.qh()) {
            this.px();
        }
        this.anR.qg();
        ag.Bi();
        pw();
        if (ConversationItemView.amV != null && ++ConversationItemView.amU >= 50) {
            final b amV = ConversationItemView.amV;
            b.tf();
            ConversationItemView.amV = new b();
            ConversationItemView.amU = 0;
        }
        ag.Bi();
    }
    
    protected void onMeasure(final int n, final int n2) {
        ag.cJ("CIVC.measure");
        final int size = View$MeasureSpec.getSize(n);
        final int mode = this.aob.xX().getMode();
        if (size != this.anF || this.anG != mode) {
            this.anF = size;
            this.anG = mode;
        }
        this.anR.apP = this.anF;
        this.anQ.bX(size).bY(ad.m(this));
        this.anR.apQ = this.getResources().getDimensionPixelOffset(2131492988);
        this.anP = O.a(this.mContext, this.anQ, this.anZ.xB());
        if (this.aop != null) {
            this.aoq.set(0, 0, this.anP.apo, this.anP.apn);
        }
        int n3;
        if (this.aoa != 1.0f) {
            n3 = Math.round(this.aoa * this.anP.height);
        }
        else {
            n3 = this.anP.height;
        }
        this.setMeasuredDimension(this.anQ.getWidth(), n3);
        ag.Bi();
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        boolean onTouchEvent = true;
        ag.cJ("on touch event");
        final int n = (int)motionEvent.getX();
        final int n2 = (int)motionEvent.getY();
        if (!this.anX) {
            ag.Bi();
            ag.cJ("on touch event no swipe");
            final int n3 = (int)motionEvent.getX();
            final int n4 = (int)motionEvent.getY();
            Label_0086: {
                switch (motionEvent.getAction()) {
                    case 0: {
                        if (this.w(n3) || this.l(n3, n4) || this.m(n3, n4)) {
                            this.anS = onTouchEvent;
                            break Label_0086;
                        }
                        break;
                    }
                    case 3: {
                        this.anS = false;
                        onTouchEvent = false;
                        break Label_0086;
                    }
                    case 1: {
                        if (!this.anS) {
                            break;
                        }
                        if (this.w(n3)) {
                            this.bh(null);
                            break Label_0086;
                        }
                        if (this.l(n3, n4)) {
                            if (this.aor != null) {
                                this.aor.pP();
                            }
                            break Label_0086;
                        }
                        else {
                            if (!this.m(n3, n4)) {
                                break Label_0086;
                            }
                            if (this.aor == null) {
                                this.pD();
                                break Label_0086;
                            }
                            this.aor.pQ();
                            break Label_0086;
                        }
                        break;
                    }
                }
                onTouchEvent = false;
            }
            if (!onTouchEvent) {
                onTouchEvent = super.onTouchEvent(motionEvent);
            }
            ag.Bi();
            return onTouchEvent;
        }
        switch (motionEvent.getAction()) {
            case 0: {
                if (this.w(n) || this.l(n, n2) || this.m(n, n2)) {
                    this.anS = onTouchEvent;
                    ag.Bi();
                    return onTouchEvent;
                }
                break;
            }
            case 1: {
                if (!this.anS) {
                    break;
                }
                if (this.w(n)) {
                    ag.Bi();
                    this.anS = false;
                    this.bh(null);
                    ag.Bi();
                    return onTouchEvent;
                }
                if (this.l(n, n2)) {
                    this.anS = false;
                    if (this.aor != null) {
                        this.aor.pP();
                    }
                    ag.Bi();
                    return onTouchEvent;
                }
                if (this.m(n, n2)) {
                    this.anS = false;
                    if (this.aor == null) {
                        this.pD();
                    }
                    else {
                        this.aor.pQ();
                    }
                    ag.Bi();
                    return onTouchEvent;
                }
                break;
            }
        }
        final boolean onTouchEvent2 = super.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 0) {
            ag.Bi();
            return onTouchEvent;
        }
        ag.Bi();
        return onTouchEvent2;
    }
    
    public final boolean pB() {
        return this.bh(null);
    }
    
    public final void pC() {
        this.aon.aq(true);
    }
    
    public final boolean pE() {
        return this.anX;
    }
    
    public final Animator pG() {
        return (Animator)this.au(true);
    }
    
    public final Animator pH() {
        final ObjectAnimator av = this.av(true);
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this, "alpha", new float[] { 0.0f, 1.0f });
        ((Animator)ofFloat).setDuration((long)ConversationItemView.ant);
        ((Animator)ofFloat).setInterpolator((TimeInterpolator)new DecelerateInterpolator(2.0f));
        final AnimatorSet set = new AnimatorSet();
        set.playTogether(new Animator[] { av, ofFloat });
        set.addListener((Animator$AnimatorListener)new r(this));
        return (Animator)set;
    }
    
    public final Animator pI() {
        final ObjectAnimator au = this.au(false);
        final ObjectAnimator av = this.av(false);
        final AnimatorSet set = new AnimatorSet();
        set.playSequentially(new Animator[] { au, av });
        return (Animator)set;
    }
    
    public final Animator pJ() {
        return (Animator)this.av(false);
    }
    
    public final di pK() {
        return di.aE(this);
    }
    
    public final float pL() {
        return ConversationItemView.aol;
    }
    
    public final String pM() {
        return this.Nc.lw();
    }
    
    public boolean performClick() {
        final boolean performClick = super.performClick();
        final SwipeableListView pf = this.pF();
        if (!performClick && pf != null && pf.getAdapter() != null) {
            pf.performItemClick(this, pf.a(this, this.anR.amQ), this.anR.amQ.id);
        }
        return performClick;
    }
    
    public final Conversation pg() {
        return this.anR.amQ;
    }
    
    public final void reset() {
        ag.cJ("reset");
        this.setAlpha(1.0f);
        this.setTranslationX(0.0f);
        this.aoa = 1.0f;
        ag.Bi();
    }
    
    public void setAnimatedHeightFraction(final float aoa) {
        this.aoa = aoa;
        this.requestLayout();
    }
    
    public void setBackgroundResource(final int n) {
        ag.cJ("set background resource");
        Object backgroundDrawable = this.anE.get(n);
        if (backgroundDrawable == null) {
            final Drawable drawable = this.getResources().getDrawable(n);
            final int apI = this.anR.apI;
            if (apI > 0) {
                backgroundDrawable = new InsetDrawable(drawable, apI);
            }
            else {
                backgroundDrawable = drawable;
            }
            this.anE.put(n, backgroundDrawable);
        }
        if (this.getBackground() != backgroundDrawable) {
            super.setBackgroundDrawable((Drawable)backgroundDrawable);
        }
        ag.Bi();
    }
    
    public void setSelected(final boolean selected) {
        if (selected) {
            final SwipeableListView pf = this.pF();
            if (pf != null) {
                pf.s(this.anR.amQ);
            }
        }
        super.setSelected(selected);
    }
    
    public void setTranslationX(final float translationX) {
        super.setTranslationX(translationX);
        final View view = (View)this.getParent();
        if (view == null) {
            E.e(ConversationItemView.mW, "CIV.setTranslationX null ConversationItemView parent x=%s", translationX);
        }
        if (view instanceof aZ) {
            if (translationX == 0.0f) {
                view.setBackgroundDrawable((Drawable)null);
                return;
            }
            view.setBackgroundResource(2131361927);
        }
    }
}
