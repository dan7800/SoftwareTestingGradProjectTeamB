package com.android.mail.ui;

import android.os.*;
import com.android.mail.c.*;
import com.android.mail.providers.*;
import android.net.*;
import android.support.v4.f.*;
import android.widget.*;
import android.app.*;
import android.view.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import com.android.mail.utils.*;
import android.text.*;
import com.android.emailcommon.mail.*;
import com.android.mail.browse.*;
import java.util.*;
import com.google.common.collect.*;

final class cH implements LoaderManager$LoaderCallbacks<b<Conversation>>
{
    final /* synthetic */ NestedFolderTeaserView aMy;
    
    cH(final NestedFolderTeaserView aMy) {
        this.aMy = aMy;
    }
    
    public final Loader<b<Conversation>> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<b<Conversation>>)new c(this.aMy.getContext(), this.aMy.aMl.get(NestedFolderTeaserView.dh(n)).aqp.aAc.buildUpon().appendQueryParameter("use_network", Boolean.FALSE.toString()).appendQueryParameter("limit", "20").build(), E.aCx, (a<Object>)Conversation.aqh);
    }
    
    public final void onLoaderReset(final Loader<b<Conversation>> loader) {
    }
}
