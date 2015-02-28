package com.android.email.activity.setup;

import com.android.emailcommon.*;
import java.util.*;
import android.view.inputmethod.*;
import android.text.*;
import android.accounts.*;
import com.android.emailcommon.provider.*;
import com.android.mail.utils.*;
import java.net.*;
import com.android.email.service.*;
import android.widget.*;
import android.content.*;
import android.app.*;
import java.io.*;
import android.os.*;
import com.android.mail.a.*;

public class AccountSetupFinal extends Q implements A, P, T, V, aD, aG, aJ, aj, an, ap, aw, b, ba, j, p
{
    private static String NW;
    private static final Boolean NX;
    private boolean NY;
    private boolean NZ;
    private boolean Oa;
    private AccountAuthenticatorResponse Ob;
    private boolean Oc;
    private boolean Od;
    private boolean Oe;
    private VendorPolicyLoader$Provider Of;
    private boolean Og;
    private String Oh;
    private Map<String, String> Oi;
    private int ao;
    
    static {
        NX = false;
    }
    
    public AccountSetupFinal() {
        this.ao = 0;
        this.NY = false;
        this.NZ = false;
        this.Oc = false;
        this.Od = false;
        this.Oe = false;
    }
    
    private void a(final String s, final String s2) {
        final Account ib = this.Mk.iB();
        ib.as(s);
        ib.ar(s2);
        ib.aq(s2);
        this.j(ib);
    }
    
    private void aP(final int n) {
        this.getFragmentManager().beginTransaction().add((Fragment)AccountCheckSettingsFragment.aN(n), "AccountCheckStgFrag").add((Fragment)aE.aR(n), "CheckProgressDialog").commit();
    }
    
    private void ab(final boolean b) {
        String s = null;
        ab ab = null;
        switch (this.ao) {
            default: {
                throw new IllegalStateException("Incorrect state " + this.ao);
            }
            case 0: {
                ab = R.hO();
                break;
            }
            case 2: {
                ab = av.iu();
                s = null;
                break;
            }
            case 3: {
                ab = O.a(this.Mk.hQ(), this.Mk.iI(), this.Mk.A((Context)this));
                s = null;
                break;
            }
            case 4: {
                ab = U.a(this.Mk.hQ(), this.Mk.A((Context)this), this.Mk.B((Context)this), this.Og, false);
                s = "AccountSetupCredentialsFragment";
                break;
            }
            case 7: {
                ab = ad.ac(false);
                s = null;
                break;
            }
            case 9: {
                ab = aq.ae(false);
                s = null;
                break;
            }
            case 11: {
                ab = com.android.email.activity.setup.ao.il();
                s = null;
                break;
            }
            case 13: {
                ab = ah.ij();
                s = null;
                break;
            }
        }
        ab.setState(this.ao);
        final FragmentTransaction beginTransaction = this.getFragmentManager().beginTransaction();
        beginTransaction.setCustomAnimations(2131034120, 2131034121, 2131034120, 2131034121);
        beginTransaction.replace(2131558561, (Fragment)ab, "AccountSetupContentFragment");
        if (b) {
            beginTransaction.addToBackStack(s);
        }
        beginTransaction.commit();
        ((InputMethodManager)this.getSystemService("input_method")).hideSoftInputFromWindow(this.findViewById(2131558561).getWindowToken(), 0);
    }
    
    private void hG() {
        this.getFragmentManager().beginTransaction().remove(this.getFragmentManager().findFragmentByTag("AccountCheckStgFrag")).remove(this.getFragmentManager().findFragmentByTag("CheckProgressDialog")).commit();
    }
    
    private ab hV() {
        return (ab)this.getFragmentManager().findFragmentByTag("AccountSetupContentFragment");
    }
    
    private void hW() {
        this.ao = this.hV().getState();
    }
    
    private boolean hX() {
        final boolean equals = TextUtils.equals((CharSequence)this.Mk.z((Context)this).protocol, (CharSequence)"gmail");
        boolean b = false;
        if (equals) {
            final Bundle bundle = new Bundle(1);
            bundle.putBoolean("allowSkip", false);
            AccountManager.get((Context)this).addAccount("com.google", "mail", (String[])null, bundle, (Activity)this, (AccountManagerCallback)null, (Handler)null);
            this.finish();
            b = true;
        }
        return b;
    }
    
    private boolean ib() {
        while (true) {
            final String hq = this.Mk.hQ();
            while (true) {
                o l = null;
                Label_0281: {
                    try {
                        this.Of.V(hq);
                        l = n.l((Context)this, HostAuth.aA(this.Of.incomingUri));
                        if (l.Vd || n.j((Context)this, l.protocol)) {
                            break Label_0281;
                        }
                        E.c(E.TAG, "Protocol %s not available, using alternate", l.protocol);
                        this.Of.W(hq);
                        final o i = n.l((Context)this, HostAuth.aA(this.Of.incomingUri));
                        final Account ib = this.Mk.iB();
                        final HostAuth z = ib.Z((Context)this);
                        z.az(this.Of.incomingUri);
                        z.ay(this.Of.incomingUsername);
                        int zi;
                        if ((0x1 & z.dM) != 0x0) {
                            zi = i.UF;
                        }
                        else {
                            zi = i.port;
                        }
                        z.Zi = zi;
                        if (i.UK) {
                            final HostAuth y = ib.Y((Context)this);
                            y.az(this.Of.outgoingUri);
                            y.ay(this.Of.outgoingUsername);
                        }
                        this.a(this.Oh, hq);
                        String s;
                        if (this.Oi != null) {
                            s = this.Oi.get(hq);
                        }
                        else {
                            s = null;
                        }
                        if (s != null) {
                            this.r(s);
                            return false;
                        }
                    }
                    catch (URISyntaxException ex) {
                        this.Od = false;
                        this.Oe = true;
                    }
                    break;
                }
                final o i = l;
                continue;
            }
        }
        return true;
    }
    
    private void ic() {
        this.NY = true;
        this.hV().Z(false);
        final ah ah = (ah)this.hV();
        final Account ib = this.Mk.iB();
        final String description = ah.getDescription();
        if (!TextUtils.isEmpty((CharSequence)description)) {
            ib.aq(description);
        }
        ib.as(ah.ik());
        final m f = m.f(ib);
        final FragmentTransaction beginTransaction = this.getFragmentManager().beginTransaction();
        beginTransaction.add((Fragment)f, "AccountFinalizeFragment");
        beginTransaction.commit();
    }
    
    private void j(final Account account) {
        final o z = this.Mk.z((Context)this);
        if (z != null) {
            account.XB = z.UX;
            account.XA = z.UQ;
            if (z.UL) {
                account.bj(z.UM);
            }
        }
    }
    
    private void proceed() {
        int n = 1;
        this.NY = false;
        final ab hv = this.hV();
        if (hv != null) {
            hv.Z(n != 0);
        }
        this.getFragmentManager().executePendingTransactions();
        switch (this.ao) {
            default: {
                final String tag = E.TAG;
                final Object[] array = new Object[n];
                array[0] = this.ao;
                E.g(tag, "Unknown state %d", array);
                break;
            }
            case 0: {
                final String hq = ((R)this.hV()).hQ();
                this.Mk.f((Context)this, null);
                if (!TextUtils.equals((CharSequence)hq, (CharSequence)this.Mk.hQ())) {
                    this.Og = false;
                }
                this.Mk.w(hq);
                this.Of = N.e((Context)this, hq.split("@")[n].trim());
                int ib;
                if (this.Of != null) {
                    this.Oc = (n != 0);
                    if (this.Of.note != null) {
                        ak.t(this.Of.note).show(this.getFragmentManager(), "NoteDialogFragment");
                        ib = 0;
                    }
                    else {
                        ib = (this.ib() ? 1 : 0);
                    }
                }
                else {
                    this.Oc = false;
                    String s;
                    if (this.Oi != null) {
                        s = this.Oi.get(hq);
                    }
                    else {
                        s = null;
                    }
                    if (!TextUtils.isEmpty((CharSequence)s)) {
                        this.r(s);
                        ib = 0;
                    }
                    else {
                        this.a(this.Oh, hq);
                        this.Od = false;
                        ib = n;
                    }
                }
                if (ib == 0) {
                    this.ao = n;
                    return;
                }
            }
            case 1: {
                Label_0381: {
                    if (((R)this.hV()).hR()) {
                        this.Od = (n != 0);
                        this.Oc = false;
                    }
                    else {
                        this.Od = false;
                        if (this.Oc) {
                            if (!TextUtils.isEmpty((CharSequence)this.Mk.iI()) && !TextUtils.equals((CharSequence)this.Mk.iI(), (CharSequence)this.Mk.A((Context)this))) {
                                this.ao = 3;
                                break Label_0381;
                            }
                            this.ao = 4;
                            if (this.hX()) {
                                return;
                            }
                            break Label_0381;
                        }
                        else {
                            final String ii = this.Mk.iI();
                            if (!TextUtils.isEmpty((CharSequence)ii)) {
                                this.Mk.f((Context)this, ii);
                                this.j(this.Mk.iB());
                                this.ao = 4;
                                break Label_0381;
                            }
                        }
                    }
                    this.ao = 2;
                }
                this.ab(n != 0);
            }
            case 2: {
                this.ao = 4;
                this.ab(n != 0);
            }
            case 3: {
                if (!this.hX()) {
                    this.ao = 4;
                    this.ab(n != 0);
                    return;
                }
                break;
            }
            case 4: {
                this.Mk.h(((U)this.hV()).hT());
                final Account ib2 = this.Mk.iB();
                U.a((Context)this, ib2.Z((Context)this), this.Mk.hT());
                this.Mk.iD();
                if (this.Mk.z((Context)this).UK) {
                    U.a((Context)this, ib2.Y((Context)this), this.Mk.hT());
                    this.Mk.iF();
                }
                if (this.Oc) {
                    this.ao = 5;
                    this.aP(3);
                    return;
                }
                final String hq2 = this.Mk.hQ();
                final String s2 = hq2.split("@")[n];
                final Account ib3 = this.Mk.iB();
                final o z = this.Mk.z((Context)this);
                final HostAuth z2 = ib3.Z((Context)this);
                z2.ay(hq2);
                final String ih = this.Mk.iH();
                int n2;
                if (z.UH) {
                    n2 = 2;
                }
                else {
                    n2 = n;
                }
                z2.a(ih, s2, -1, n2);
                U.a((Context)this, z2, this.Mk.hT());
                this.Mk.iD();
                if (z.UK) {
                    final HostAuth y = ib3.Y((Context)this);
                    y.ay(hq2);
                    y.a("smtp", s2, -1, 2);
                    U.a((Context)this, y, this.Mk.hT());
                    this.Mk.iF();
                }
                if (this.Od) {
                    this.ao = 7;
                    this.ab(n != 0);
                    return;
                }
                this.ao = 6;
                this.aP(4);
            }
            case 5: {
                if (!this.Oe) {
                    this.ao = 11;
                    this.ab(n != 0);
                    return;
                }
                if (this.Og) {
                    this.getFragmentManager().popBackStackImmediate("AccountSetupCredentialsFragment", 0);
                    ((U)this.hV()).aa(this.Og);
                    this.hW();
                    return;
                }
                this.ao = 7;
                this.ab(n != 0);
            }
            case 6: {
                this.ao = 7;
                this.ab(n != 0);
            }
            case 7: {
                ((ad)this.hV()).hD();
                this.ao = 8;
                this.aP(n);
            }
            case 8: {
                if (this.Mk.z((Context)this).UK) {
                    this.ao = 9;
                }
                else {
                    this.ao = 11;
                }
                this.ab(n != 0);
            }
            case 9: {
                ((aq)this.hV()).hD();
                this.ao = 10;
                this.aP(2);
            }
            case 10: {
                this.ao = 11;
                this.ab(n != 0);
            }
            case 11: {
                this.ao = 12;
                this.NY = (n != 0);
                this.hV().Z(false);
                final Account ib4 = this.Mk.iB();
                if (ib4.XL == null) {
                    throw new IllegalStateException("in AccountSetupOptions with null mHostAuthRecv");
                }
                final ao ao = (ao)this.hV();
                if (ao == null) {
                    throw new IllegalStateException("Fragment missing!");
                }
                ib4.aq(ib4.lw());
                int flags = 0xFFFFFEFF & ib4.getFlags();
                final o z3 = this.Mk.z((Context)this);
                if (z3.UU && ao.im()) {
                    flags |= 0x100;
                }
            Label_1186:
                while (true) {
                    if (!ib4.Z((Context)this).Zh.equals(this.getString(2131297000))) {
                        break Label_1186;
                    }
                Label_1305_Outer:
                    while (true) {
                        while (true) {
                        Label_1389:
                            while (true) {
                                try {
                                    if (Double.parseDouble(ib4.XG) >= 12.0) {
                                        flags |= 0x1880;
                                    }
                                    ib4.setFlags(flags);
                                    ib4.bh(ao.in());
                                    final Integer io = ao.io();
                                    if (io != null) {
                                        ib4.bi(io);
                                    }
                                    if (this.Mk.iG() != null) {
                                        ib4.dM |= 0x20;
                                        ib4.PW = this.Mk.iG();
                                    }
                                    final boolean ip = ao.ip();
                                    if (z3.UT && ao.iq()) {
                                        final boolean b = n != 0;
                                        if (z3.US && ao.ir()) {
                                            final c a = c.a(ib4, ip, b, n != 0, ao.is());
                                            final FragmentTransaction beginTransaction = this.getFragmentManager().beginTransaction();
                                            beginTransaction.add((Fragment)a, "AccountCreationFragment");
                                            beginTransaction.commit();
                                            X.id().show(this.getFragmentManager(), "CreateAccountDialogFragment");
                                            return;
                                        }
                                        break Label_1389;
                                    }
                                }
                                catch (NumberFormatException ex) {
                                    E.f(E.TAG, ex, "Exception thrown parsing the protocol version.", new Object[0]);
                                    continue Label_1186;
                                }
                                final boolean b = false;
                                continue Label_1305_Outer;
                            }
                            n = 0;
                            continue;
                        }
                    }
                    break;
                }
                break;
            }
            case 12: {
                this.ao = 13;
                this.ab(n != 0);
                if (this.Mk.iA() == 4) {
                    this.getFragmentManager().executePendingTransactions();
                    this.ic();
                    return;
                }
                break;
            }
            case 13: {
                this.ic();
            }
            case 14: {
                this.finish();
            }
        }
    }
    
    private void r(final String s) {
        aI.u(s).show(this.getFragmentManager(), "DuplicateAccountDialogFragment");
    }
    
    @Override
    public final void Y(final boolean b) {
        if (b) {
            this.proceed();
            return;
        }
        this.hW();
    }
    
    @Override
    public final void a(final int n, final String s) {
        if (n == 1 || n == 2) {
            this.Og = true;
        }
        this.hG();
        az.b(n, s).show(this.getFragmentManager(), "CheckSettingsErrorDialog");
    }
    
    @Override
    public final void aO(final int n) {
    }
    
    @Override
    public final void e(final Account account) {
        this.Mk.e(account);
    }
    
    public void finish() {
        if (this.Oa && this.Ob != null) {
            this.Ob.onError(4, "canceled");
            this.Ob = null;
        }
        super.finish();
    }
    
    @Override
    public final void g(final Bundle bundle) {
        this.proceed();
    }
    
    @Override
    public final void hE() {
    }
    
    @Override
    public final void hF() {
        this.hG();
        this.hW();
    }
    
    @Override
    public final void hH() {
        if (this.ao == 5 || this.ao == 6) {
            this.Oe = true;
            this.proceed();
            return;
        }
        this.hW();
    }
    
    @Override
    public final void hI() {
        if (this.ao == 5) {
            this.Oe = true;
            this.proceed();
        }
        else {
            this.hW();
        }
        ((ad)this.hV()).hU();
    }
    
    @Override
    public final void hY() {
        this.hW();
    }
    
    @Override
    public final void hZ() {
        this.ib();
        this.proceed();
    }
    
    @Override
    public final void hn() {
        this.Oe = false;
        this.Og = false;
        this.hG();
        this.proceed();
    }
    
    @Override
    public final void ho() {
        this.hG();
        this.proceed();
    }
    
    @Override
    public final void hs() {
        this.ht();
        if (this.Ob != null) {
            final o z = this.Mk.z((Context)this);
            final Bundle bundle = new Bundle(2);
            bundle.putString("authAccount", this.Mk.hQ());
            bundle.putString("accountType", z.accountType);
            this.Ob.onResult(bundle);
            this.Ob = null;
            this.Oa = false;
        }
        this.setResult(-1);
        this.proceed();
    }
    
    @Override
    public final void ht() {
        final DialogFragment dialogFragment = (DialogFragment)this.getFragmentManager().findFragmentByTag("CreateAccountDialogFragment");
        if (dialogFragment != null) {
            dialogFragment.dismiss();
        }
        final Fragment fragmentByTag = this.getFragmentManager().findFragmentByTag("AccountCreationFragment");
        if (fragmentByTag == null) {
            E.g(E.TAG, "Couldn't find AccountCreationFragment to destroy", new Object[0]);
        }
        this.getFragmentManager().beginTransaction().remove(fragmentByTag).commit();
    }
    
    @Override
    public final void hu() {
        new Y().show(this.getFragmentManager(), (String)null);
    }
    
    public final void hv() {
        if (!this.NY) {
            this.proceed();
        }
    }
    
    @Override
    public final void hw() {
        this.finish();
    }
    
    @Override
    public final void ia() {
        this.hW();
    }
    
    @Override
    public final void o(final String s) {
        this.hG();
        aX.v(s).show(this.getFragmentManager(), "SecurityRequiredDialog");
    }
    
    public void onBackPressed() {
        if (this.NY) {
            return;
        }
        if (this.ao == 13) {
            this.finish();
        }
        else {
            super.onBackPressed();
        }
        this.hW();
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        final String action = intent.getAction();
        if (AccountSetupFinal.NW == null) {
            AccountSetupFinal.NW = this.getString(2131296992);
        }
        this.setContentView(2130968612);
        final ActionBar actionBar = this.getActionBar();
        if (actionBar != null) {
            actionBar.setIcon(17170445);
            actionBar.setDisplayUseLogoEnabled(false);
        }
        if (bundle != null) {
            this.NY = bundle.getBoolean("AccountSetupFinal.is_processing", false);
            this.ao = bundle.getInt("AccountSetupFinal.state", 11);
            this.Of = (VendorPolicyLoader$Provider)bundle.getSerializable("AccountSetupFinal.provider");
            this.Ob = (AccountAuthenticatorResponse)bundle.getParcelable("AccountSetupFinal.authResp");
            this.Oa = bundle.getBoolean("AccountSetupFinal.authErr");
            this.Oc = bundle.getBoolean("AccountSetupFinal.preconfig");
            this.Od = bundle.getBoolean("AccountSetupFinal.noAuto");
            this.Og = bundle.getBoolean("AccountSetupFinal.passwordFailed");
        }
        else {
            this.Ob = (AccountAuthenticatorResponse)this.getIntent().getParcelableExtra("accountAuthenticatorResponse");
            if (this.Ob != null) {
                this.Oa = true;
            }
            if (AccountSetupFinal.NW.equals(action)) {
                this.Mk.aT(4);
            }
            else {
                final int intExtra = intent.getIntExtra("FLOW_MODE", -1);
                this.Mk.x(n.m((Context)this, intent.getStringExtra("FLOW_ACCOUNT_TYPE")));
                this.Mk.aT(intExtra);
            }
            this.ao = 0;
            if (TextUtils.equals((CharSequence)"jumpToIncoming", (CharSequence)action)) {
                this.ao = 7;
            }
            else if (TextUtils.equals((CharSequence)"jumpToOutgoing", (CharSequence)action)) {
                this.ao = 9;
            }
            else if (TextUtils.equals((CharSequence)"jumpToOptions", (CharSequence)action)) {
                this.ao = 11;
            }
            this.ab(false);
            this.Og = false;
        }
        if (!this.NY && this.Mk.iA() == 4) {
            final String stringExtra = intent.getStringExtra("EMAIL");
            final String stringExtra2 = intent.getStringExtra("USER");
            final String stringExtra3 = intent.getStringExtra("PASSWORD");
            final String stringExtra4 = intent.getStringExtra("INCOMING");
            final String stringExtra5 = intent.getStringExtra("OUTGOING");
            int xa;
            if (TextUtils.equals((CharSequence)intent.getStringExtra("SYNC_LOOKBACK"), (CharSequence)"ALL")) {
                xa = 6;
            }
            else {
                xa = -1;
            }
            boolean b;
            if (!TextUtils.isEmpty((CharSequence)stringExtra2) && !TextUtils.isEmpty((CharSequence)stringExtra4) && !TextUtils.isEmpty((CharSequence)stringExtra5)) {
                b = true;
            }
            else {
                b = false;
            }
            boolean b2;
            if (!TextUtils.isEmpty((CharSequence)stringExtra3) && !b) {
                b2 = true;
            }
            else {
                b2 = false;
            }
            if (TextUtils.isEmpty((CharSequence)stringExtra) || (!b && !b2)) {
                E.f(E.TAG, "Force account create requires extras EMAIL, USER, INCOMING, OUTGOING, or EMAIL and PASSWORD", new Object[0]);
                this.finish();
                return;
            }
            Label_0763: {
                Label_0631: {
                    if (!b2) {
                        final Account ib = this.Mk.iB();
                        try {
                            ib.Z((Context)this).az(stringExtra4);
                            ib.Y((Context)this).az(stringExtra5);
                            this.a(stringExtra2, stringExtra);
                            if (xa >= 0 && xa <= 6) {
                                ib.XA = xa;
                            }
                            break Label_0631;
                        }
                        catch (URISyntaxException ex) {
                            Toast.makeText((Context)this, 2131296807, 1).show();
                            this.finish();
                            return;
                        }
                        break Label_0763;
                    }
                    this.Of = N.e((Context)this, stringExtra.split("@")[1].trim());
                    if (this.Of == null) {
                        E.f(E.TAG, "findProviderForDomain couldn't find provider", new Object[0]);
                        this.finish();
                        return;
                    }
                    this.Oc = true;
                    this.Mk.w(stringExtra);
                    if (!this.ib()) {
                        E.f(E.TAG, "Force create account failed to create account", new Object[0]);
                        this.finish();
                        return;
                    }
                    final Account ib2 = this.Mk.iB();
                    ib2.Z((Context)this).Qd = stringExtra3;
                    ib2.Y((Context)this).Qd = stringExtra3;
                }
                this.ao = 11;
                this.ab(false);
                this.getFragmentManager().executePendingTransactions();
                if (!AccountSetupFinal.NX && !ActivityManager.isRunningInTestHarness()) {
                    E.f(E.TAG, "ERROR: Force account create only allowed while in test harness", new Object[0]);
                    this.finish();
                    return;
                }
            }
            this.NZ = true;
        }
        this.getLoaderManager().initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)new aa(this, (byte)0));
        this.getLoaderManager().initLoader(1, (Bundle)null, (LoaderManager$LoaderCallbacks)new Z(this, (byte)0));
    }
    
    protected void onResume() {
        super.onResume();
        if (this.NZ) {
            this.NZ = false;
            this.proceed();
        }
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("AccountSetupFinal.is_processing", this.NY);
        bundle.putInt("AccountSetupFinal.state", this.ao);
        bundle.putSerializable("AccountSetupFinal.provider", (Serializable)this.Of);
        bundle.putParcelable("AccountSetupFinal.authResp", (Parcelable)this.Ob);
        bundle.putBoolean("AccountSetupFinal.authErr", this.Oa);
        bundle.putBoolean("AccountSetupFinal.preconfig", this.Oc);
        bundle.putBoolean("AccountSetupFinal.passwordFailed", this.Og);
    }
    
    protected void onStart() {
        super.onStart();
        a.oq().e(this);
    }
    
    protected void onStop() {
        super.onStop();
        a.oq().f(this);
    }
    
    @Override
    public final void q(final String s) {
        if (!TextUtils.equals((CharSequence)this.Mk.A((Context)this), (CharSequence)s)) {
            this.Oc = false;
            this.Mk.f((Context)this, s);
            this.j(this.Mk.iB());
        }
        this.proceed();
    }
    
    @Override
    public final void s(final String s) {
        this.Mk.f((Context)this, s);
        this.j(this.Mk.iB());
        this.proceed();
    }
}
