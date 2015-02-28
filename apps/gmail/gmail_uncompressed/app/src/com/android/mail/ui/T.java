package com.android.mail.ui;

import com.android.mail.c.*;
import com.google.common.base.*;
import android.net.*;
import android.support.v4.widget.*;
import android.content.res.*;
import com.android.mail.providers.*;
import android.content.*;
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

final class t implements LoaderManager$LoaderCallbacks<b<Account>>
{
    final /* synthetic */ a aEa;
    final com.android.mail.c.a<Account> awV;
    final String[] eN;
    
    private t(final a aEa) {
        this.aEa = aEa;
        this.eN = E.aCr;
        this.awV = Account.aqh;
    }
    
    public final Loader<b<Account>> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                com.android.mail.utils.E.g(a.mW, "Got an id  (%d) that I cannot create!", n);
                return null;
            }
            case 0: {
                com.android.mail.utils.E.c(a.mW, "LOADER_ACCOUNT_CURSOR created", new Object[0]);
                return (Loader<b<Account>>)new c(this.aEa.mContext, com.android.mail.providers.t.vh(), this.eN, (com.android.mail.c.a<Object>)this.awV);
            }
            case 1: {
                com.android.mail.utils.E.c(a.mW, "LOADER_ACCOUNT_UPDATE_CURSOR created", new Object[0]);
                return (Loader<b<Account>>)new c(this.aEa.mContext, this.aEa.Nc.uri, this.eN, (com.android.mail.c.a<Object>)this.awV);
            }
        }
    }
    
    public final void onLoaderReset(final Loader<b<Account>> loader) {
    }
}
