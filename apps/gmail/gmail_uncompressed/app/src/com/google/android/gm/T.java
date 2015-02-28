package com.google.android.gm;

import android.database.*;
import com.google.android.gm.provider.*;
import com.google.android.gms.f.*;
import com.google.android.gm.ui.*;
import com.google.android.gm.c.*;
import com.google.android.gms.b.*;
import com.android.mail.utils.*;
import android.widget.*;
import com.android.mail.providers.*;
import com.google.android.gm.drive.*;
import com.google.common.collect.*;
import com.google.android.gms.drive.*;
import android.os.*;
import android.app.*;
import com.google.android.gm.welcome.*;
import com.android.mail.compose.*;
import android.text.*;
import android.content.*;
import com.android.mail.a.*;
import com.google.android.gsf.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;
import java.util.*;
import com.android.ex.chips.*;
import android.view.*;

final class t implements LoaderManager$LoaderCallbacks<Cursor>
{
    final /* synthetic */ ComposeActivityGmail aXl;
    
    private t(final ComposeActivityGmail aXl) {
        this.aXl = aXl;
    }
    
    public final Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Cursor>)new CursorLoader((Context)this.aXl, GmailProvider.R(this.aXl.Nc.lw(), this.aXl.aXd), Gmail.bdU, (String)null, (String[])null, (String)null);
    }
    
    public final void onLoaderReset(final Loader<Cursor> loader) {
        this.aXl.aXd = null;
    }
}
