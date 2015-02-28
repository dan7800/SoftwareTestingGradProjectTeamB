package com.android.email.activity.setup;

import com.android.emailcommon.provider.*;
import android.content.*;
import android.app.*;
import com.android.mail.utils.*;
import android.os.*;

public class AccountServerSettingsActivity extends Q implements A, aD, aG, b, ba
{
    private x MZ;
    
    public static Intent c(final Context context, final Account account) {
        final Intent intent = new Intent(context, (Class)AccountServerSettingsActivity.class);
        intent.putExtra("account", (Parcelable)account);
        intent.putExtra("whichSettings", "incoming");
        return intent;
    }
    
    public static Intent d(final Context context, final Account account) {
        final Intent intent = new Intent(context, (Class)AccountServerSettingsActivity.class);
        intent.putExtra("account", (Parcelable)account);
        intent.putExtra("whichSettings", "outgoing");
        return intent;
    }
    
    private void hG() {
        this.getFragmentManager().beginTransaction().remove(this.getFragmentManager().findFragmentByTag("AccountCheckStgFrag")).remove(this.getFragmentManager().findFragmentByTag("CheckProgressDialog")).commit();
    }
    
    @Override
    public final void Y(final boolean b) {
        if (b) {
            final x mz = this.MZ;
            if (mz != null) {
                mz.hA();
            }
        }
    }
    
    @Override
    public final void a(final int n, final String s) {
        this.hG();
        az.b(n, s).show(this.getFragmentManager(), "CheckSettingsErrorDialog");
    }
    
    @Override
    public final void aO(final int n) {
        this.getFragmentManager().beginTransaction().add((Fragment)aE.aR(n), "CheckProgressDialog").add((Fragment)AccountCheckSettingsFragment.aN(n), "AccountCheckStgFrag").commit();
    }
    
    @Override
    public final void hE() {
        super.onBackPressed();
    }
    
    @Override
    public final void hF() {
        this.hG();
    }
    
    @Override
    public final void hH() {
    }
    
    @Override
    public final void hI() {
        final x mz = this.MZ;
        if (mz instanceof ad) {
            ((ad)mz).hU();
            return;
        }
        E.g(E.TAG, "Tried to change cert on non-incoming screen?", new Object[0]);
    }
    
    @Override
    public final void hn() {
        this.hG();
        final x mz = this.MZ;
        if (mz != null) {
            mz.hA();
        }
    }
    
    @Override
    public final void ho() {
        throw new IllegalStateException();
    }
    
    public final void hv() {
    }
    
    @Override
    public final void o(final String s) {
        this.hG();
        aX.v(s).show(this.getFragmentManager(), "SecurityRequiredDialog");
    }
    
    public void onAttachFragment(final Fragment fragment) {
        super.onAttachFragment(fragment);
        if (fragment instanceof x) {
            this.MZ = (x)fragment;
        }
    }
    
    public void onBackPressed() {
        final x mz = this.MZ;
        if (mz != null && mz.hz()) {
            B.hJ().show(this.getFragmentManager(), "UnsavedChangesDialogFragment");
            return;
        }
        super.onBackPressed();
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.Mk.aT(3);
        this.setContentView(2130968606);
        this.setFinishOnTouchOutside(false);
        if (bundle == null) {
            final Account account = (Account)this.getIntent().getParcelableExtra("account");
            if (account == null) {
                throw new IllegalArgumentException("No account present in intent");
            }
            this.Mk.e(account);
            ax ax;
            if ("outgoing".equals(this.getIntent().getStringExtra("whichSettings"))) {
                ax = aq.ae(true);
            }
            else {
                ax = ad.ac(true);
            }
            this.getFragmentManager().beginTransaction().add(2131558553, (Fragment)ax).commit();
        }
    }
}
