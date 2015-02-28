package com.google.android.gm.welcome;

import android.os.*;
import com.google.android.gm.*;
import android.app.*;
import android.view.*;
import java.util.*;
import android.text.*;
import android.net.*;
import com.google.android.gsf.*;
import java.util.regex.*;
import com.android.mail.utils.*;
import com.android.mail.a.*;
import android.content.*;
import android.webkit.*;

final class e implements LoaderManager$LoaderCallbacks<String>
{
    final /* synthetic */ ChangeAddressActivity this$0;
    
    e(final ChangeAddressActivity this$0) {
        this.this$0 = this$0;
    }
    
    private String IQ() {
        final String string = Uri.parse(this.this$0.brV).buildUpon().appendQueryParameter("continue", this.this$0.brW).build().toString();
        E.c("WelcomeTour", "Loading Account Central / SFE from %s", string);
        return string;
    }
    
    public final Loader<String> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                return null;
            }
            case 1: {
                return (Loader<String>)new aC((Context)this.this$0, this.this$0.Tz, this.IQ());
            }
        }
    }
    
    public final void onLoaderReset(final Loader<String> loader) {
    }
}
