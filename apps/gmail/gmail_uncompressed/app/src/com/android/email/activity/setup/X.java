package com.android.email.activity.setup;

import android.view.*;
import com.android.email.activity.*;
import android.content.*;
import com.android.emailcommon.provider.*;
import android.app.*;
import android.view.inputmethod.*;
import android.os.*;

public abstract class x extends ab implements View$OnClickListener
{
    protected boolean MR;
    protected HostAuth MS;
    protected HostAuth MT;
    private View MU;
    protected String MV;
    private boolean MW;
    protected SetupDataFragment Mk;
    protected Context Mq;
    private Handler mHandler;
    
    public x() {
        this.MV = "protocol";
        this.mHandler = new Handler();
    }
    
    public static Bundle W(final boolean b) {
        final Bundle bundle = new Bundle(1);
        bundle.putBoolean("AccountServerBaseFragment.settings", b);
        return bundle;
    }
    
    public final void X(final boolean enabled) {
        if (this.MU != null) {
            this.MU.setEnabled(enabled);
            return;
        }
        this.Z(enabled);
    }
    
    protected final void an(final View view) {
        if (this.MR) {
            a.m(view, 2131558554).setOnClickListener((View$OnClickListener)this);
            (this.MU = a.m(view, 2131558555)).setOnClickListener((View$OnClickListener)this);
            this.MU.setEnabled(false);
        }
    }
    
    public void hA() {
        this.getLoaderManager().initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)new y(this));
    }
    
    public abstract Loader<Boolean> hB();
    
    public abstract int hC();
    
    public final void hD() {
        ((A)this.getActivity()).aO(this.hC());
    }
    
    public boolean hz() {
        this.hC();
        final Account ib = this.Mk.iB();
        final HostAuth y = ib.Y(this.Mq);
        int n;
        if (this.MS != null && !this.MS.equals(y)) {
            n = 1;
        }
        else {
            n = 0;
        }
        final HostAuth z = ib.Z(this.Mq);
        int n2;
        if (this.MT != null && !this.MT.equals(z)) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        if (n == 0) {
            final boolean b = false;
            if (n2 == 0) {
                return b;
            }
        }
        return true;
    }
    
    public void onActivityCreated(final Bundle bundle) {
        final Activity activity = this.getActivity();
        this.Mq = activity.getApplicationContext();
        if (this.MR && bundle != null) {
            activity.setTitle((CharSequence)bundle.getString("AccountServerBaseFragment.title"));
        }
        this.Mk = ((bc)activity).hN();
        super.onActivityCreated(bundle);
    }
    
    @Override
    public void onClick(final View view) {
        final int id = view.getId();
        if (id == 2131558554) {
            this.hC();
            this.getActivity().onBackPressed();
            return;
        }
        if (id == 2131558555) {
            this.hD();
            return;
        }
        super.onClick(view);
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.MR = false;
        if (bundle != null) {
            this.MR = bundle.getBoolean("AccountServerBaseFragment.settings");
            this.MW = bundle.getBoolean("AccountServerBaseFragment.saving");
            this.MS = (HostAuth)bundle.getParcelable("AccountServerBaseFragment.sendAuth");
            this.MT = (HostAuth)bundle.getParcelable("AccountServerBaseFragment.recvAuth");
        }
        else if (this.getArguments() != null) {
            this.MR = this.getArguments().getBoolean("AccountServerBaseFragment.settings");
        }
        this.setHasOptionsMenu(true);
    }
    
    public void onPause() {
        ((InputMethodManager)this.Mq.getSystemService("input_method")).hideSoftInputFromWindow(this.getView().getWindowToken(), 0);
        super.onPause();
    }
    
    public void onResume() {
        super.onResume();
        if (this.MW) {
            this.hA();
        }
    }
    
    @Override
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("AccountServerBaseFragment.title", (String)this.getActivity().getTitle());
        bundle.putBoolean("AccountServerBaseFragment.settings", this.MR);
        bundle.putParcelable("AccountServerBaseFragment.sendAuth", (Parcelable)this.MS);
        bundle.putParcelable("AccountServerBaseFragment.recvAuth", (Parcelable)this.MT);
    }
}
