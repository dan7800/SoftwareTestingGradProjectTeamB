package com.google.android.gm.welcome;

import com.android.mail.c.*;
import android.app.*;
import com.android.mail.providers.*;
import com.android.mail.ui.*;
import android.os.*;
import android.content.*;
import com.android.mail.utils.*;

public final class v implements LoaderManager$LoaderCallbacks<WelcomeTourState>
{
    private final x bsI;
    private final b<Account> bsJ;
    private final Activity pe;
    
    public v(final Activity pe, final x bsI, final b<Account> bsJ) {
        this.pe = pe;
        this.bsI = bsI;
        this.bsJ = bsJ;
    }
    
    public static Q a(final Activity activity, final LoaderManager loaderManager, final x x) {
        return new Q((Context)activity, t.vh(), new w(activity, x, loaderManager));
    }
    
    public final Loader<WelcomeTourState> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                E.g("WelcomeTour", "Got an id  (%d) that I cannot create", n);
                return null;
            }
            case 20: {
                return (Loader<WelcomeTourState>)new u((Context)this.pe, this.bsJ);
            }
        }
    }
    
    public final void onLoaderReset(final Loader<WelcomeTourState> loader) {
    }
}
