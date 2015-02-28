package com.google.android.gm.welcome;

import com.google.android.gm.ui.*;
import com.android.mail.ui.*;
import android.view.*;
import java.util.*;
import android.content.*;
import com.google.android.gm.persistence.*;
import com.google.android.gsf.*;
import com.android.mail.utils.*;
import android.os.*;
import android.app.*;
import com.android.mail.a.*;
import android.support.v4.view.*;

public class WelcomeTourActivity extends Activity implements aM, View$OnClickListener, x
{
    private static Intent bsy;
    private ViewPager aGq;
    private CirclePageIndicator bso;
    private ao bsp;
    private View bsq;
    private View bsr;
    private View bss;
    private View bst;
    private int bsu;
    private WelcomeTourState bsv;
    private d bsw;
    private ArrayList<WelcomeTourState$AccountState> bsx;
    
    private void IU() {
        final Intent intent = new Intent((Context)this, (Class)SetupAddressesActivity.class);
        if (this.bsx != null) {
            intent.putParcelableArrayListExtra("pending-changes", (ArrayList)this.bsx);
        }
        if (this.bsv != null) {
            intent.putExtra("tour-state", (Parcelable)this.bsv);
        }
        this.startActivityForResult(intent, 1);
    }
    
    private void IV() {
        if (this.aGq.bb().getCount() == 1) {
            this.bsq.setVisibility(8);
            this.bst.setVisibility(0);
            return;
        }
        this.bsq.setVisibility(0);
        this.bst.setVisibility(8);
        if (this.aGq.bd() == this.bsp.xT()) {
            this.bsr.setVisibility(8);
            this.bss.setVisibility(0);
            return;
        }
        this.bsr.setVisibility(0);
        this.bss.setVisibility(8);
    }
    
    private boolean IW() {
        return this.bsu == -1;
    }
    
    public static boolean d(final Context context, final Intent bsy) {
        if (bsy.getBooleanExtra("launched-from-welcome-tour", false)) {
            return false;
        }
        final b dd = b.DD();
        final int int1 = c.getInt(context.getContentResolver(), "gmail_welcome_tour_debug_mode", 1);
        int bs = dd.bS(context);
        boolean b;
        if (int1 != 1) {
            E.c("WelcomeTour", "Displaying welcome tour because debug flag was set", new Object[0]);
            bs = int1;
            b = true;
        }
        else if (bs == -2) {
            E.c("WelcomeTour", "Shared pref was absent :-( Defaulting to welcome tour for returning user", new Object[0]);
            b = true;
            bs = 0;
        }
        else if (bs <= 0) {
            E.c("WelcomeTour", "Displaying welcome tour because seen version %d is less than current %d", bs, 1);
            b = true;
        }
        else if (dd.bT(context)) {
            E.c("WelcomeTour", "Force display welcome tour pref was set", new Object[0]);
            b = true;
        }
        else {
            E.c("WelcomeTour", "Welcome tour not required", new Object[0]);
            b = false;
        }
        if (b) {
            WelcomeTourActivity.bsy = bsy;
            E.c("WelcomeTour", "Retained pendingIntent %s", bsy.getAction());
            E.c("WelcomeTour", "Starting welcome tour", new Object[0]);
            final Intent intent = new Intent(context, (Class)WelcomeTourActivity.class);
            intent.putExtra("tour-highest-version-seen", bs);
            intent.putExtra("source", bsy.getAction());
            intent.setFlags(67108864);
            context.startActivity(intent);
        }
        return b;
    }
    
    private void ej(final int n) {
        this.bsw.a("welcome_tour", "page", this.aGq.bb().w(n).toString(), n);
    }
    
    public final void D(final int n) {
        this.ej(n);
        this.bso.D(n);
        this.IV();
    }
    
    public final void E(final int n) {
        this.bso.E(n);
    }
    
    public final void a(final int n, final float n2, final int n3) {
        this.bso.a(n, n2, n3);
    }
    
    public final void a(final WelcomeTourState bsv) {
        this.bsv = bsv;
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        Label_0027: {
            switch (n) {
                default: {
                    super.onActivityResult(n, n2, intent);
                    break;
                }
                case 1: {
                    switch (n2) {
                        default: {
                            return;
                        }
                        case -1: {
                            final b dd = b.DD();
                            dd.o((Context)this, 1);
                            dd.c((Context)this, false);
                            AsyncTask.execute((Runnable)new q((Context)this));
                            this.setResult(-1);
                            final Intent bsy = WelcomeTourActivity.bsy;
                            WelcomeTourActivity.bsy = null;
                            if (bsy != null) {
                                bsy.setFlags(0x10000000 ^ bsy.getFlags());
                                bsy.putExtra("launched-from-welcome-tour", true);
                                this.startActivity(bsy);
                                E.c("WelcomeTour", "Started pending intent", new Object[0]);
                            }
                            this.finish();
                            return;
                        }
                        case 0: {
                            if (intent != null) {
                                this.bsx = (ArrayList<WelcomeTourState$AccountState>)intent.getParcelableArrayListExtra("pending-changes");
                                return;
                            }
                            break Label_0027;
                        }
                    }
                    break;
                }
            }
        }
    }
    
    public void onBackPressed() {
        if (this.aGq.bd() != this.bsp.xS()) {
            this.aGq.y(this.bsp.xU());
            return;
        }
        this.moveTaskToBack(true);
    }
    
    public void onClick(final View view) {
        final int id = view.getId();
        if (id == 2131558987) {
            this.aGq.y(this.bsp.xV());
            this.bsw.a("welcome_tour", "click_button", "next", 0L);
        }
        else {
            if (id == 2131558984) {
                this.IU();
                this.bsw.a("welcome_tour", "click_button", "skip", 0L);
                return;
            }
            if (id == 2131558986) {
                this.IU();
                this.bsw.a("welcome_tour", "click_button", "done", 0L);
                return;
            }
            if (id == 2131558988) {
                this.IU();
                this.bsw.a("welcome_tour", "click_button", "got_it", 0L);
            }
        }
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.bsu = this.getIntent().getExtras().getInt("tour-highest-version-seen");
        final Object[] array = new Object[2];
        String s;
        if (this.IW()) {
            s = "new";
        }
        else {
            s = "upgrading";
        }
        array[0] = s;
        array[1] = this.bsu;
        E.b("WelcomeTour", "Welcome tour started (%s user, version: %d)", array);
        this.getLoaderManager().initLoader(21, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)v.a(this, this.getLoaderManager(), this));
        this.setContentView(2130968778);
        this.bsw = a.oq();
        this.bsu = this.getIntent().getExtras().getInt("tour-highest-version-seen");
        (this.aGq = (ViewPager)this.findViewById(2131558982)).a(this);
        this.aGq.a(new p(this, this.getFragmentManager(), (byte)0));
        (this.bso = (CirclePageIndicator)this.findViewById(2131558985)).e(this.aGq);
        this.bsp = new ao(this.aGq);
        this.bsq = this.findViewById(2131558983);
        (this.bsr = this.findViewById(2131558987)).setOnClickListener((View$OnClickListener)this);
        (this.bss = this.findViewById(2131558986)).setOnClickListener((View$OnClickListener)this);
        (this.bst = this.findViewById(2131558988)).setOnClickListener((View$OnClickListener)this);
        this.findViewById(2131558984).setOnClickListener((View$OnClickListener)this);
        if (this.aGq.bb().getCount() == 1) {
            this.bso.setVisibility(8);
        }
        ad.d((View)this.aGq, 3);
        this.aGq.y(this.bsp.xS());
        this.IV();
        final d oq = a.oq();
        String s2;
        if (this.IW()) {
            s2 = "new";
        }
        else {
            s2 = "upgrading";
        }
        oq.f(9, s2);
        String s3;
        if ("android.intent.action.MAIN".equals(this.getIntent().getStringExtra("source"))) {
            s3 = "launcher";
        }
        else {
            s3 = "other";
        }
        this.bsw.a("welcome_tour", "start_ww", s3, 0L);
        this.ej(0);
    }
    
    protected void onStart() {
        super.onStart();
        this.bsw.e(this);
    }
    
    protected void onStop() {
        this.bsw.f(this);
        super.onStop();
    }
}
