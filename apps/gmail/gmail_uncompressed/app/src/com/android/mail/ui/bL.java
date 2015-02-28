package com.android.mail.ui;

import com.android.mail.i.*;
import com.android.mail.providers.*;
import com.android.mail.c.*;
import android.app.*;
import android.content.*;
import android.text.*;
import android.text.style.*;
import android.content.res.*;
import android.os.*;
import com.android.mail.browse.*;
import android.view.*;

public final class bl extends ConversationTipView
{
    private Account Nc;
    private a aHs;
    private bV aIN;
    private Folder aIO;
    private int aIP;
    private final LoaderManager$LoaderCallbacks<b<Folder>> aIQ;
    private LoaderManager aqI;
    
    public bl(final Context context) {
        super(context);
        this.Nc = null;
        this.aIP = -1;
        this.aIQ = (LoaderManager$LoaderCallbacks<b<Folder>>)new bn(this);
    }
    
    @Override
    public final void a(final LoaderManager aqI, final Bundle bundle) {
        this.aqI = aqI;
    }
    
    public final void a(final Account nc, final bV ain) {
        this.Nc = nc;
        this.aHs = a.c(this.getContext(), nc);
        this.aIN = ain;
    }
    
    @Override
    public final void a(final Folder folder, final u u) {
        if (this.aqI != null && folder != null && (0x10 & folder.type) > 0) {
            this.aqI.initLoader(1100, (Bundle)null, (LoaderManager$LoaderCallbacks)this.aIQ);
        }
    }
    
    @Override
    public final void dismiss() {
        this.aHs.cr(this.aIP);
        super.dismiss();
    }
    
    public final boolean yE() {
        return this.aIP > 0 && this.aIP != this.aHs.ts();
    }
    
    @Override
    protected final View$OnClickListener yN() {
        return (View$OnClickListener)new bm(this);
    }
}
