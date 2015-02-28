package com.android.email.activity.setup;

import com.android.emailcommon.mail.*;
import android.content.*;
import com.android.emailcommon.provider.*;
import android.app.*;
import android.os.*;
import com.android.emailcommon.b.*;

public final class AccountCheckSettingsFragment extends Fragment
{
    private int Mf;
    private boolean Mg;
    private MessagingException Mh;
    a Mi;
    private int ao;
    private boolean g;
    
    public AccountCheckSettingsFragment() {
        this.ao = 0;
        this.Mg = false;
    }
    
    private void a(final int ao, final MessagingException mh) {
        this.ao = ao;
        this.Mh = mh;
        if (this.g && !this.Mg) {
            final FragmentManager fragmentManager = this.getFragmentManager();
            switch (ao) {
                default: {
                    final aE ae = (aE)fragmentManager.findFragmentByTag("CheckProgressDialog");
                    if (ae != null) {
                        ae.aS(this.ao);
                        break;
                    }
                    break;
                }
                case 4: {
                    this.hl().hn();
                }
                case 5: {
                    String s = mh.getMessage();
                    if (s != null) {
                        s = s.trim();
                    }
                    this.hl().o(s);
                }
                case 6:
                case 7: {
                    this.hl().a(az.a(mh), az.a((Context)this.getActivity(), mh));
                }
                case 8: {
                    final HostAuth mHostAuth = ((AccountCheckSettingsFragment$AutoDiscoverResults)mh).mHostAuth;
                    this.hl().ho();
                }
            }
        }
    }
    
    public static AccountCheckSettingsFragment aN(final int n) {
        final AccountCheckSettingsFragment accountCheckSettingsFragment = new AccountCheckSettingsFragment();
        final Bundle arguments = new Bundle(1);
        arguments.putInt("mode", n);
        accountCheckSettingsFragment.setArguments(arguments);
        return accountCheckSettingsFragment;
    }
    
    protected static String c(final Context context, final int n) {
        int n2 = 0;
        switch (n) {
            case 1: {
                n2 = 2131296810;
                break;
            }
            case 0:
            case 2: {
                n2 = 2131296811;
                break;
            }
            case 3: {
                n2 = 2131296812;
                break;
            }
        }
        if (n2 != 0) {
            return context.getString(n2);
        }
        return null;
    }
    
    private b hl() {
        final Fragment targetFragment = this.getTargetFragment();
        if (targetFragment instanceof b) {
            return (b)targetFragment;
        }
        final Activity activity = this.getActivity();
        if (activity instanceof b) {
            return (b)activity;
        }
        throw new IllegalStateException();
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        this.g = true;
        if (this.Mi == null) {
            this.Mi = (a)new a(this.getActivity().getApplicationContext(), this, this.Mf, ((bc)this.getActivity()).hN()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
        }
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setRetainInstance(true);
        this.Mf = this.getArguments().getInt("mode");
    }
    
    public final void onDestroy() {
        super.onDestroy();
        if (this.Mi != null) {
            s.a(this.Mi);
            this.Mi = null;
        }
    }
    
    public final void onDetach() {
        super.onDetach();
        this.g = false;
    }
    
    public final void onPause() {
        super.onPause();
        this.Mg = true;
    }
    
    public final void onResume() {
        super.onResume();
        this.Mg = false;
        if (this.ao != 0) {
            this.a(this.ao, this.Mh);
        }
    }
}
