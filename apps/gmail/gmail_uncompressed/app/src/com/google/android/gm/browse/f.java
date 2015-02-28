package com.google.android.gm.browse;

import com.android.mail.providers.*;
import android.content.*;
import android.os.*;
import com.android.mail.utils.*;
import android.widget.*;
import com.android.mail.a.*;
import android.app.*;

public final class f extends DialogFragment implements LoaderManager$LoaderCallbacks<i>
{
    private static final long[] bab;
    private final Handler mHandler;
    
    static {
        bab = new long[] { 100L, 250L, 500L, 1000L, 2000L, 3000L, 5000L, 10000L, 20000L };
    }
    
    public f() {
        this.mHandler = new Handler();
    }
    
    public static f a(final String s, final Message message, final Attachment attachment) {
        final f f = new f();
        final Bundle arguments = new Bundle(3);
        arguments.putString("account", s);
        arguments.putParcelable("message", (Parcelable)message);
        arguments.putParcelable("attachment", (Parcelable)attachment);
        f.setArguments(arguments);
        f.setCancelable(false);
        return f;
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final ProgressDialog progressDialog = new ProgressDialog((Context)this.getActivity());
        progressDialog.setIndeterminate(true);
        progressDialog.setMessage((CharSequence)this.getString(2131296481));
        if (bundle != null) {
            this.getLoaderManager().initLoader(2, this.getArguments(), (LoaderManager$LoaderCallbacks)this);
            return (Dialog)progressDialog;
        }
        this.getLoaderManager().restartLoader(2, this.getArguments(), (LoaderManager$LoaderCallbacks)this);
        return (Dialog)progressDialog;
    }
    
    public final Loader<i> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<i>)new h((Context)this.getActivity(), bundle);
    }
    
    public final void onLoaderReset(final Loader<i> loader) {
    }
}
