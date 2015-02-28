package com.android.mail.ui;

import android.net.*;
import android.support.v4.widget.*;
import android.content.res.*;
import android.content.*;
import android.app.*;
import com.google.common.base.*;
import com.android.mail.*;
import android.database.*;
import java.util.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import java.io.*;
import android.os.*;
import android.widget.*;
import com.android.mail.browse.*;

final class w implements LoaderManager$LoaderCallbacks<u>
{
    final /* synthetic */ a aEa;
    
    private w(final a aEa) {
        this.aEa = aEa;
    }
    
    public final Loader<u> onCreateLoader(final int n, final Bundle bundle) {
        final Account account = (Account)bundle.getParcelable("account");
        final Folder folder = (Folder)bundle.getParcelable("folder");
        final boolean boolean1 = bundle.getBoolean("ignore-initial-conversation-limit", false);
        if (account == null || folder == null) {
            return null;
        }
        return (Loader<u>)new au(this.aEa.aCT, account, folder.aAc, folder.va(), boolean1);
    }
    
    public final void onLoaderReset(final Loader<u> loader) {
        E.c(a.mW, "IN AAC.ConversationCursor.onLoaderReset, data=%s loader=%s this=%s", this.aEa.aDh, loader, this);
        if (this.aEa.aDh != null) {
            this.aEa.aDh.b(this.aEa);
            this.aEa.aDX.a((m)null);
            this.aEa.aDh = null;
            this.aEa.aDv.yI();
            this.aEa.aDi.notifyChanged();
        }
    }
}
