package com.google.android.gm.ads;

import com.android.mail.utils.*;
import com.android.mail.c.*;
import android.text.*;
import java.util.*;
import android.content.res.*;
import com.android.mail.providers.*;
import com.google.android.gm.provider.*;
import android.net.*;
import android.os.*;
import android.content.*;
import android.util.*;
import android.graphics.*;
import android.view.animation.*;
import android.animation.*;
import com.android.mail.browse.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.android.mail.ui.*;

final class g implements LoaderManager$LoaderCallbacks<b<Advertisement>>
{
    final /* synthetic */ AdTeaserView aZO;
    private boolean aZP;
    
    g(final AdTeaserView azo) {
        this.aZO = azo;
        this.aZP = true;
    }
    
    public final Loader<b<Advertisement>> onCreateLoader(final int n, final Bundle bundle) {
        E.c("AdTeaserView", "Creating ads loader", new Object[0]);
        return (Loader<b<Advertisement>>)new c(this.aZO.getContext(), this.aZO.aZx, Gmail.bdT, (a<Object>)Advertisement.aqh);
    }
    
    public final void onLoaderReset(final Loader<b<Advertisement>> loader) {
    }
}
