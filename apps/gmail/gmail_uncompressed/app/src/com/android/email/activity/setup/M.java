package com.android.email.activity.setup;

import android.content.*;
import com.android.emailcommon.provider.*;
import android.os.*;
import android.app.*;

public final class m extends Fragment
{
    private Context Mq;
    private final Handler mHandler;
    
    public m() {
        this.mHandler = new Handler();
    }
    
    public static m f(final Account account) {
        final m m = new m();
        final Bundle arguments = new Bundle(1);
        arguments.putParcelable("account", (Parcelable)account);
        m.setArguments(arguments);
        return m;
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.Mq = this.getActivity().getApplicationContext();
        this.setRetainInstance(true);
    }
    
    public final void onResume() {
        super.onResume();
        this.getLoaderManager().initLoader(0, this.getArguments(), (LoaderManager$LoaderCallbacks)new n(this));
    }
}
