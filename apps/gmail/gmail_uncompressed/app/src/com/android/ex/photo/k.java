package com.android.ex.photo;

import android.database.*;
import android.widget.*;
import com.android.ex.photo.a.*;
import android.graphics.drawable.*;
import android.os.*;
import java.util.*;
import android.view.animation.*;
import android.net.*;
import android.support.v4.view.*;
import android.text.*;
import com.android.ex.photo.c.*;
import android.support.v4.app.*;
import android.util.*;
import android.app.*;
import com.android.ex.photo.util.*;
import android.content.*;
import android.content.res.*;
import android.view.*;

public class k implements L<Cursor>, aM, b, h, w
{
    public static int agI;
    public static int agJ;
    protected boolean agE;
    private final t agK;
    private int agL;
    private final View$OnSystemUiVisibilityChangeListener agM;
    private int agN;
    private String agO;
    protected int agP;
    protected boolean agQ;
    protected View agR;
    protected View agS;
    protected PhotoViewPager agT;
    protected ImageView agU;
    protected d agV;
    protected boolean agW;
    private final Map<Integer, j> agX;
    private final Set<i> agY;
    private boolean agZ;
    private String agu;
    private boolean aha;
    protected boolean ahb;
    protected float ahc;
    protected String ahd;
    protected String ahe;
    private boolean ahf;
    protected boolean ahg;
    protected int ahh;
    protected int ahi;
    protected int ahj;
    protected int ahk;
    protected boolean ahl;
    protected u ahm;
    private long ahn;
    private final Runnable aho;
    private String[] eN;
    protected final Handler mHandler;
    
    public k(final t agK) {
        this.agP = -1;
        this.agX = new HashMap<Integer, j>();
        this.agY = new HashSet<i>();
        this.ahb = true;
        this.mHandler = new Handler();
        this.aho = new m(this);
        this.agK = agK;
        if (Build$VERSION.SDK_INT < 11) {
            this.agM = null;
            return;
        }
        this.agM = (View$OnSystemUiVisibilityChangeListener)new l(this);
    }
    
    private static int a(final int n, final int n2, final int n3, final float n4) {
        return n - Math.round((n3 - n4 * n3) / 2.0f) - Math.round((n4 * n3 - n2) / 2.0f);
    }
    
    private void a(final a a) {
        if (a == null) {
            return;
        }
        a.setTitle(aU(this.ahd));
        a.setSubtitle(aU(this.ahe));
    }
    
    private static final String aU(String s) {
        if (s == null) {
            s = "";
        }
        return s;
    }
    
    private void ak(final boolean b) {
        final int sdk_INT = Build$VERSION.SDK_INT;
        final boolean b2 = sdk_INT < 16;
        int n2 = 0;
        if (b && (!this.ahg || this.ahf)) {
            Label_0086: {
                Label_0081: {
                    if (sdk_INT <= 19) {
                        if (sdk_INT == 19) {
                            if (Build$VERSION.SDK_INT != 19) {
                                throw new IllegalStateException("kitkatIsSecondary user is only callable on KitKat");
                            }
                            int n;
                            if (Process.myUid() > 100000) {
                                n = 1;
                            }
                            else {
                                n = 0;
                            }
                            if (n == 0) {
                                break Label_0081;
                            }
                        }
                        if (sdk_INT >= 16) {
                            n2 = 1285;
                            break Label_0086;
                        }
                        if (sdk_INT >= 14) {
                            n2 = 1;
                            break Label_0086;
                        }
                        n2 = 0;
                        if (sdk_INT >= 11) {
                            n2 = 1;
                        }
                        break Label_0086;
                    }
                }
                n2 = 3846;
            }
            if (b2) {
                this.agK.nH().hide();
            }
        }
        else {
            if (sdk_INT >= 19) {
                n2 = 1792;
            }
            else if (sdk_INT >= 16) {
                n2 = 1280;
            }
            else {
                n2 = 0;
                if (sdk_INT < 14) {
                    n2 = 0;
                    if (sdk_INT >= 11) {
                        n2 = 0;
                    }
                }
            }
            if (b2) {
                this.agK.nH().show();
            }
        }
        if (sdk_INT >= 11) {
            this.agL = n2;
            this.agR.setSystemUiVisibility(n2);
        }
    }
    
    private void d(final Cursor cursor) {
        synchronized (this) {
            final Iterator<i> iterator = this.agY.iterator();
            while (iterator.hasNext()) {
                iterator.next().c(cursor);
            }
        }
    }
    // monitorexit(this)
    
    private void nS() {
        this.mHandler.postDelayed(this.aho, this.ahn);
    }
    
    private void nT() {
        this.mHandler.removeCallbacks(this.aho);
    }
    
    private void nW() {
        final int measuredWidth = this.agR.getMeasuredWidth();
        final int measuredHeight = this.agR.getMeasuredHeight();
        this.agU.setVisibility(0);
        final float max = Math.max(this.ahj / measuredWidth, this.ahk / measuredHeight);
        final int a = a(this.ahh, this.ahj, measuredWidth, max);
        final int a2 = a(this.ahi, this.ahk, measuredHeight, max);
        final int sdk_INT = Build$VERSION.SDK_INT;
        if (sdk_INT >= 14) {
            this.agS.setAlpha(0.0f);
            this.agS.animate().alpha(1.0f).setDuration(250L).start();
            this.agS.setVisibility(0);
            this.agU.setScaleX(max);
            this.agU.setScaleY(max);
            this.agU.setTranslationX((float)a);
            this.agU.setTranslationY((float)a2);
            final n n = new n(this);
            final ViewPropertyAnimator setDuration = this.agU.animate().scaleX(1.0f).scaleY(1.0f).translationX(0.0f).translationY(0.0f).setDuration(250L);
            if (sdk_INT >= 16) {
                setDuration.withEndAction((Runnable)n);
            }
            else {
                this.mHandler.postDelayed((Runnable)n, 250L);
            }
            setDuration.start();
            return;
        }
        final AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        ((Animation)alphaAnimation).setDuration(250L);
        this.agS.startAnimation((Animation)alphaAnimation);
        this.agS.setVisibility(0);
        final TranslateAnimation translateAnimation = new TranslateAnimation((float)a, (float)a2, 0.0f, 0.0f);
        ((Animation)translateAnimation).setDuration(250L);
        final ScaleAnimation scaleAnimation = new ScaleAnimation(max, max, 0.0f, 0.0f);
        ((Animation)scaleAnimation).setDuration(250L);
        final AnimationSet set = new AnimationSet(true);
        set.addAnimation((Animation)translateAnimation);
        set.addAnimation((Animation)scaleAnimation);
        set.setAnimationListener((Animation$AnimationListener)new o(this));
        this.agU.startAnimation((Animation)set);
    }
    
    @Override
    public final void D(final int agN) {
        this.bG(this.agN = agN);
    }
    
    @Override
    public final void E(final int n) {
    }
    
    @Override
    public final android.support.v4.content.j<Cursor> a(final int n, final Bundle bundle) {
        if (n == 100) {
            return new com.android.ex.photo.c.d(this.agK.getContext(), Uri.parse(this.agu), this.eN);
        }
        return null;
    }
    
    @Override
    public final void a(final int n, final float n2, final int n3) {
        if (n2 < 1.0E-4) {
            final j j = this.agX.get(n - 1);
            if (j != null) {
                j.nM();
            }
            final j i = this.agX.get(n + 1);
            if (i != null) {
                i.nM();
            }
        }
    }
    
    public void a(final int n, final int n2) {
    }
    
    @Override
    public final void a(final int n, final j j) {
        this.agX.put(n, j);
    }
    
    @Override
    public final void a(final android.support.v4.content.j<Cursor> j) {
        if (!this.aha) {
            this.agV.swapCursor(null);
        }
    }
    
    @Override
    public void a(final com.android.ex.photo.b.a a) {
    }
    
    @Override
    public void a(final com.android.ex.photo.b.a a, final Cursor cursor) {
    }
    
    @Override
    public final void a(final com.android.ex.photo.b.a a, final boolean b) {
        if (this.agU.getVisibility() != 8 && TextUtils.equals((CharSequence)a.nY(), (CharSequence)this.agO)) {
            if (!b) {
                Log.w("PhotoViewController", "Failed to load fragment image");
                this.agU.setVisibility(8);
                this.agT.setVisibility(0);
                return;
            }
            this.agU.setVisibility(8);
            this.agT.setVisibility(0);
        }
    }
    
    @Override
    public final void a(final i i) {
        synchronized (this) {
            this.agY.add(i);
        }
    }
    
    @Override
    public final void b(final i i) {
        synchronized (this) {
            this.agY.remove(i);
        }
    }
    
    @Override
    public final void bE(final int n) {
        this.agX.remove(n);
    }
    
    @Override
    public void bF(final int n) {
    }
    
    public void bG(final int agN) {
        final j j = this.agX.get(agN);
        if (j != null) {
            j.nL();
        }
        final Cursor nv = this.nV();
        this.agN = agN;
        this.agO = nv.getString(nv.getColumnIndex("uri"));
        this.nU();
        this.nT();
        this.nS();
    }
    
    public final boolean cM() {
        if (this.agW && !this.agE) {
            this.nI();
        }
        else {
            final boolean ahg = this.ahg;
            final boolean b = false;
            if (!ahg) {
                return b;
            }
            this.agK.getIntent();
            final int measuredWidth = this.agR.getMeasuredWidth();
            final int measuredHeight = this.agR.getMeasuredHeight();
            final float max = Math.max(this.ahj / measuredWidth, this.ahk / measuredHeight);
            final int a = a(this.ahh, this.ahj, measuredWidth, max);
            final int a2 = a(this.ahi, this.ahk, measuredHeight, max);
            final int sdk_INT = Build$VERSION.SDK_INT;
            if (sdk_INT >= 14) {
                this.agS.animate().alpha(0.0f).setDuration(250L).start();
                this.agS.setVisibility(0);
                final p p = new p(this);
                ViewPropertyAnimator viewPropertyAnimator;
                if (this.agU.getVisibility() == 0) {
                    viewPropertyAnimator = this.agU.animate().scaleX(max).scaleY(max).translationX((float)a).translationY((float)a2).setDuration(250L);
                }
                else {
                    viewPropertyAnimator = this.agT.animate().scaleX(max).scaleY(max).translationX((float)a).translationY((float)a2).setDuration(250L);
                }
                if (sdk_INT >= 16) {
                    viewPropertyAnimator.withEndAction((Runnable)p);
                }
                else {
                    this.mHandler.postDelayed((Runnable)p, 250L);
                }
                viewPropertyAnimator.start();
            }
            else {
                final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                ((Animation)alphaAnimation).setDuration(250L);
                this.agS.startAnimation((Animation)alphaAnimation);
                this.agS.setVisibility(0);
                final ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.0f, max, max);
                ((Animation)scaleAnimation).setDuration(250L);
                ((Animation)scaleAnimation).setAnimationListener((Animation$AnimationListener)new q(this));
                if (this.agU.getVisibility() == 0) {
                    this.agU.startAnimation((Animation)scaleAnimation);
                }
                else {
                    this.agT.startAnimation((Animation)scaleAnimation);
                }
            }
        }
        return true;
    }
    
    protected final void d(final boolean agW, final boolean b) {
        int n;
        if (agW != this.agW) {
            n = 1;
        }
        else {
            n = 0;
        }
        this.agW = agW;
        if (this.agW) {
            this.ak(true);
            this.nT();
        }
        else {
            this.ak(false);
            if (b) {
                this.nS();
            }
        }
        if (n != 0) {
            for (final j j : this.agX.values()) {
                final boolean agW2 = this.agW;
                j.nK();
            }
        }
    }
    
    @Override
    public final android.support.v4.content.j<c> e(final int n, final String s) {
        switch (n) {
            default: {
                return null;
            }
            case 1:
            case 2:
            case 3: {
                return new com.android.ex.photo.c.a(this.agK.getContext(), s);
            }
        }
    }
    
    @Override
    public final boolean f(final Fragment fragment) {
        return this.agT != null && this.agV != null && this.agT.bd() == this.agV.f(fragment);
    }
    
    protected final View findViewById(final int n) {
        return this.agK.findViewById(n);
    }
    
    @Override
    public final boolean g(final Fragment fragment) {
        if (this.agT == null || this.agV == null || this.agV.getCount() == 0) {
            return this.agW;
        }
        return this.agW || this.agT.bd() != this.agV.f(fragment);
    }
    
    public final Cursor getCursor() {
        if (this.agV == null) {
            return null;
        }
        return this.agV.getCursor();
    }
    
    @Override
    public final PhotoViewPager$InterceptType i(final float n, final float n2) {
        final Iterator<j> iterator = this.agX.values().iterator();
        int n3 = 0;
        boolean nn = false;
        while (iterator.hasNext()) {
            final j j = iterator.next();
            if (!nn) {
                nn = j.nN();
            }
            int no;
            if (n3 == 0) {
                no = (j.nO() ? 1 : 0);
            }
            else {
                no = n3;
            }
            n3 = no;
        }
        if (nn) {
            if (n3 != 0) {
                return PhotoViewPager$InterceptType.ahz;
            }
            return PhotoViewPager$InterceptType.ahx;
        }
        else {
            if (n3 != 0) {
                return PhotoViewPager$InterceptType.ahy;
            }
            return PhotoViewPager$InterceptType.ahw;
        }
    }
    
    @Override
    public final void nI() {
        this.d(!this.agW, true);
    }
    
    @Override
    public final d nJ() {
        return this.agV;
    }
    
    public final t nP() {
        return this.agK;
    }
    
    public boolean nQ() {
        return true;
    }
    
    public void nR() {
    }
    
    public void nU() {
        final int n = 1 + this.agT.bd();
        boolean b;
        if (this.agP >= 0) {
            b = true;
        }
        else {
            b = false;
        }
        final Cursor nv = this.nV();
        if (nv != null) {
            this.ahd = nv.getString(nv.getColumnIndex("_display_name"));
        }
        else {
            this.ahd = null;
        }
        if (this.agQ || !b || n <= 0) {
            this.ahe = null;
        }
        else {
            this.ahe = this.agK.getResources().getString(F.ahX, new Object[] { n, this.agP });
        }
        this.a(this.agK.nH());
    }
    
    public final Cursor nV() {
        if (this.agT != null) {
            final int bd = this.agT.bd();
            final Cursor cursor = this.agV.getCursor();
            if (cursor != null) {
                cursor.moveToPosition(bd);
                return cursor;
            }
        }
        return null;
    }
    
    public void onCreate(final Bundle bundle) {
        if (k.agJ == 0) {
            final DisplayMetrics displayMetrics = new DisplayMetrics();
            final WindowManager windowManager = (WindowManager)this.agK.getContext().getSystemService("window");
            final ImageUtils$ImageSize aiA = ImageUtils.aiA;
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            switch (s.ahr[aiA.ordinal()]) {
                default: {
                    k.agJ = Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels);
                    break;
                }
                case 1: {
                    k.agJ = 800 * Math.min(displayMetrics.heightPixels, displayMetrics.widthPixels) / 1000;
                    break;
                }
            }
        }
        k.agI = ((ActivityManager)this.agK.getApplicationContext().getSystemService("activity")).getMemoryClass();
        final Intent intent = this.agK.getIntent();
        if (intent.hasExtra("photos_uri")) {
            this.agu = intent.getStringExtra("photos_uri");
        }
        if (intent.getBooleanExtra("scale_up_animation", false)) {
            this.ahg = true;
            this.ahh = intent.getIntExtra("start_x_extra", 0);
            this.ahi = intent.getIntExtra("start_y_extra", 0);
            this.ahj = intent.getIntExtra("start_width_extra", 0);
            this.ahk = intent.getIntExtra("start_height_extra", 0);
        }
        this.agE = intent.getBooleanExtra("action_bar_hidden_initially", false);
        this.ahl = intent.getBooleanExtra("display_thumbs_fullscreen", false);
        if (intent.hasExtra("projection")) {
            this.eN = intent.getStringArrayExtra("projection");
        }
        else {
            this.eN = null;
        }
        this.ahc = intent.getFloatExtra("max_scale", 1.0f);
        this.agO = null;
        this.agN = -1;
        if (intent.hasExtra("photo_index")) {
            this.agN = intent.getIntExtra("photo_index", -1);
        }
        if (intent.hasExtra("initial_photo_uri")) {
            this.agO = intent.getStringExtra("initial_photo_uri");
        }
        this.agQ = true;
        if (bundle != null) {
            this.agO = bundle.getString("com.android.ex.PhotoViewFragment.CURRENT_URI");
            this.agN = bundle.getInt("com.android.ex.PhotoViewFragment.CURRENT_INDEX");
            this.agW = bundle.getBoolean("com.android.ex.PhotoViewFragment.FULLSCREEN", false);
            this.ahd = bundle.getString("com.android.ex.PhotoViewFragment.ACTIONBARTITLE");
            this.ahe = bundle.getString("com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE");
            this.ahf = bundle.getBoolean("com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED", false);
        }
        else {
            this.agW = this.agE;
        }
        this.agK.setContentView(E.ahU);
        this.agV = new d(this.agK.getContext(), this.agK.F(), null, this.ahc, this.ahl);
        final Resources resources = this.agK.getResources();
        this.agR = this.findViewById(C.ahM);
        if (Build$VERSION.SDK_INT >= 11) {
            this.agR.setOnSystemUiVisibilityChangeListener(this.agM);
        }
        this.agS = this.findViewById(C.ahL);
        this.agU = (ImageView)this.findViewById(C.ahN);
        (this.agT = (PhotoViewPager)this.findViewById(C.ahR)).a(this.agV);
        this.agT.a(this);
        this.agT.a((w)this);
        this.agT.z(resources.getDimensionPixelSize(A.ahG));
        this.ahm = new u(this, (byte)0);
        if (!this.ahg || this.ahf) {
            this.agK.G().a(100, null, (L<Object>)this);
            this.agS.setVisibility(0);
        }
        else {
            this.agT.setVisibility(8);
            final Bundle bundle2 = new Bundle();
            bundle2.putString("image_uri", this.agO);
            this.agK.G().a(2, bundle2, (L<Object>)this.ahm);
        }
        this.ahn = resources.getInteger(D.ahT);
        final a nh = this.agK.nH();
        if (nh != null) {
            nh.nB();
            nh.a(this);
            nh.nC();
            this.a(nh);
        }
        if (!this.ahg) {
            this.ak(this.agW);
            return;
        }
        this.ak(false);
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        return true;
    }
    
    public final void onDestroy() {
        this.aha = true;
    }
    
    public final void onEnterAnimationComplete() {
        this.ahf = true;
        this.agT.setVisibility(0);
        this.ak(this.agW);
    }
    
    @Override
    public final void onMenuVisibilityChanged(final boolean b) {
        if (b) {
            this.nT();
            return;
        }
        this.nS();
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            default: {
                return false;
            }
            case 16908332: {
                this.agK.finish();
                return true;
            }
        }
    }
    
    public final void onPause() {
        this.ahb = true;
    }
    
    public void onResume() {
        this.d(this.agW, false);
        this.ahb = false;
        if (this.agZ) {
            this.agZ = false;
            this.agK.G().a(100, null, (L<Object>)this);
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        bundle.putString("com.android.ex.PhotoViewFragment.CURRENT_URI", this.agO);
        bundle.putInt("com.android.ex.PhotoViewFragment.CURRENT_INDEX", this.agN);
        bundle.putBoolean("com.android.ex.PhotoViewFragment.FULLSCREEN", this.agW);
        bundle.putString("com.android.ex.PhotoViewFragment.ACTIONBARTITLE", this.ahd);
        bundle.putString("com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE", this.ahe);
        bundle.putBoolean("com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED", this.ahf);
    }
    
    public void onStart() {
    }
    
    public void onStop() {
    }
}
