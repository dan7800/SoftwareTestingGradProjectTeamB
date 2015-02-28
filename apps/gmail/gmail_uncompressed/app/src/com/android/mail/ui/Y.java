package com.android.mail.ui;

import com.android.mail.c.*;
import android.net.*;
import android.support.v4.widget.*;
import android.content.res.*;
import com.android.mail.providers.*;
import android.content.*;
import com.google.common.base.*;
import com.android.mail.*;
import android.database.*;
import java.util.*;
import android.app.*;
import com.android.mail.utils.*;
import android.view.*;
import java.io.*;
import android.os.*;
import android.widget.*;
import com.android.mail.browse.*;

final class y implements LoaderManager$LoaderCallbacks<b<Folder>>
{
    final /* synthetic */ a aEa;
    
    private y(final a aEa) {
        this.aEa = aEa;
    }
    
    public final Loader<b<Folder>> onCreateLoader(final int n, final Bundle bundle) {
        final String[] aCv = E.aCv;
        switch (n) {
            default: {
                com.android.mail.utils.E.g(a.mW, "FolderLoads.onCreateLoader(%d) for invalid id", n);
                return null;
            }
            case 30: {
                com.android.mail.utils.E.c(a.mW, "LOADER_FOLDER_CURSOR created", new Object[0]);
                final c c = new c(this.aEa.mContext, this.aEa.aqp.azZ.aPj, aCv, Folder.aqh);
                c.setUpdateThrottle((long)this.aEa.aDu);
                return (Loader<b<Folder>>)c;
            }
            case 31: {
                com.android.mail.utils.E.c(a.mW, "LOADER_RECENT_FOLDERS created", new Object[0]);
                if (this.aEa.Nc != null && this.aEa.Nc.ayu != null && !this.aEa.Nc.ayu.equals((Object)Uri.EMPTY)) {
                    return (Loader<b<Folder>>)new c(this.aEa.mContext, this.aEa.Nc.ayu, aCv, (com.android.mail.c.a<Object>)Folder.aqh);
                }
                break;
            }
            case 32: {
                com.android.mail.utils.E.c(a.mW, "LOADER_ACCOUNT_INBOX created", new Object[0]);
                Uri uri = Settings.a(this.aEa.Nc.ayw);
                if (uri.equals((Object)Uri.EMPTY)) {
                    uri = this.aEa.Nc.ayh;
                }
                com.android.mail.utils.E.c(a.mW, "Loading the default inbox: %s", uri);
                if (uri != null) {
                    return (Loader<b<Folder>>)new c(this.aEa.mContext, uri, aCv, (com.android.mail.c.a<Object>)Folder.aqh);
                }
                break;
            }
            case 33: {
                com.android.mail.utils.E.c(a.mW, "LOADER_SEARCH created", new Object[0]);
                return (Loader<b<Folder>>)Folder.a(this.aEa.Nc, bundle.getString("query"), Long.toString(SystemClock.uptimeMillis()), this.aEa.aCT.xg());
            }
            case 34: {
                com.android.mail.utils.E.c(a.mW, "LOADER_FIRST_FOLDER created", new Object[0]);
                final Uri uri2 = (Uri)bundle.getParcelable("folderUri");
                this.aEa.aDN = (Conversation)bundle.getParcelable("conversationUri");
                if (this.aEa.aDN != null && this.aEa.aDN.position < 0) {
                    this.aEa.aDN.position = 0;
                }
                return (Loader<b<Folder>>)new c(this.aEa.mContext, uri2, aCv, (com.android.mail.c.a<Object>)Folder.aqh);
            }
        }
        return null;
    }
    
    public final void onLoaderReset(final Loader<b<Folder>> loader) {
    }
}
