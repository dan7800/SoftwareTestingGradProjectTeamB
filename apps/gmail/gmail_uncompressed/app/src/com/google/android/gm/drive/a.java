package com.google.android.gm.drive;

import java.util.*;
import android.os.*;
import android.content.*;
import android.app.*;

public final class a extends DialogFragment implements LoaderManager$LoaderCallbacks<d>
{
    private boolean awy;
    private int baj;
    private final Handler mHandler;
    
    public a() {
        this.mHandler = new Handler();
    }
    
    public static a a(final String s, final ArrayList<String> list, final ArrayList<String> list2, final boolean b) {
        final a a = new a();
        final Bundle arguments = new Bundle(4);
        arguments.putString("account", s);
        arguments.putStringArrayList("recipients", (ArrayList)list);
        arguments.putStringArrayList("fileIds", (ArrayList)list2);
        arguments.putBoolean("showToast", b);
        a.setArguments(arguments);
        return a;
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final ProgressDialog progressDialog = new ProgressDialog((Context)this.getActivity());
        progressDialog.setIndeterminate(true);
        progressDialog.setMessage((CharSequence)this.getString(2131296501));
        final Bundle arguments = this.getArguments();
        this.baj = arguments.getStringArrayList("fileIds").size();
        this.awy = arguments.getBoolean("showToast");
        if (bundle != null) {
            this.getLoaderManager().initLoader(0, this.getArguments(), (LoaderManager$LoaderCallbacks)this);
            return (Dialog)progressDialog;
        }
        this.getLoaderManager().restartLoader(0, this.getArguments(), (LoaderManager$LoaderCallbacks)this);
        return (Dialog)progressDialog;
    }
    
    public final Loader<d> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<d>)new c((Context)this.getActivity(), bundle);
    }
    
    public final void onLoaderReset(final Loader<d> loader) {
    }
}
