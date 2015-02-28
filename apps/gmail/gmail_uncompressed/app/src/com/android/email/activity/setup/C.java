package com.android.email.activity.setup;

import com.android.emailcommon.provider.*;
import android.os.*;
import android.app.*;
import android.content.*;

public final class c extends Fragment
{
    private int Mp;
    private Context Mq;
    private final Handler mHandler;
    
    public c() {
        this.Mp = 0;
        this.mHandler = new Handler();
    }
    
    public static c a(final Account account, final boolean b, final boolean b2, final boolean b3, final boolean b4) {
        final Bundle arguments = new Bundle(5);
        arguments.putParcelable("account", (Parcelable)account);
        arguments.putBoolean("email", b);
        arguments.putBoolean("calendar", b2);
        arguments.putBoolean("contacts", b3);
        arguments.putBoolean("notifications", b4);
        final c c = new c();
        c.setArguments(arguments);
        return c;
    }
    
    private void hp() {
        final LoaderManager loaderManager = this.getLoaderManager();
        loaderManager.destroyLoader(0);
        loaderManager.destroyLoader(3);
        loaderManager.initLoader(1, this.getArguments(), (LoaderManager$LoaderCallbacks)new k(this, (byte)0));
    }
    
    private void hq() {
        final LoaderManager loaderManager = this.getLoaderManager();
        loaderManager.destroyLoader(0);
        loaderManager.destroyLoader(1);
        loaderManager.initLoader(3, this.getArguments(), (LoaderManager$LoaderCallbacks)new d(this, (byte)0));
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        this.Mq = this.getActivity().getApplicationContext();
    }
    
    public final void onActivityResult(final int n, final int n2, final Intent intent) {
        this.Mp = 3;
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setRetainInstance(true);
        if (bundle != null) {
            this.Mp = bundle.getInt("AccountCreationFragment.stage");
        }
    }
    
    public final void onResume() {
        super.onResume();
        switch (this.Mp) {
            default: {}
            case 0: {
                final LoaderManager loaderManager = this.getLoaderManager();
                loaderManager.destroyLoader(1);
                loaderManager.destroyLoader(3);
                loaderManager.initLoader(0, this.getArguments(), (LoaderManager$LoaderCallbacks)new g(this));
            }
            case 1: {
                this.hp();
            }
            case 3: {
                this.hq();
            }
        }
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("AccountCreationFragment.stage", this.Mp);
    }
}
