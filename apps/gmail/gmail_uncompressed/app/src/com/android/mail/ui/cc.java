package com.android.mail.ui;

import java.util.*;
import android.net.*;
import com.android.mail.providers.*;
import android.content.*;
import com.android.mail.utils.*;
import android.os.*;
import android.app.*;

public final class cC extends bT
{
    private boolean aMg;
    private final HashMap<Uri, FolderOperation> aMh;
    
    public cC() {
        this.aMh = new HashMap<Uri, FolderOperation>();
    }
    
    @Override
    protected final void db(final int n) {
        final Object item = this.TE.getItem(n);
        if (item instanceof bX) {
            final bX bx = (bX)item;
            final boolean b = !bx.isSelected();
            if (this.aMg) {
                if (!b) {
                    return;
                }
                for (int count = this.TE.getCount(), i = 0; i < count; ++i) {
                    final Object item2 = this.TE.getItem(i);
                    if (item2 instanceof bX) {
                        ((bX)item2).bx(false);
                        final Folder vt = ((bX)item2).vT();
                        this.aMh.put(vt.azZ.aPj, new FolderOperation(vt, false));
                    }
                }
            }
            bx.bx(b);
            this.TE.notifyDataSetChanged();
            final Folder vt2 = bx.vT();
            this.aMh.put(vt2.azZ.aPj, new FolderOperation(vt2, b));
        }
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        switch (n) {
            default: {}
            case -1: {
                this.ya().a(this.aMh.values(), this.aEs, this.aKo, false);
            }
        }
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.aMg = !this.Nc.cy(8192);
        this.aKq = 2131296571;
        if (bundle != null) {
            for (final FolderOperation folderOperation : (FolderOperation[])bundle.getParcelableArray("operations")) {
                this.aMh.put(folderOperation.aqp.azZ.aPj, folderOperation);
            }
        }
        final Bundle bundle2 = new Bundle(1);
        Uri uri;
        if (!ag.D(this.Nc.ayi)) {
            uri = this.Nc.ayi;
        }
        else {
            uri = this.Nc.ayh;
        }
        bundle2.putParcelable("folderQueryUri", (Parcelable)uri);
        this.getLoaderManager().initLoader(0, bundle2, (LoaderManager$LoaderCallbacks)new cD(this, this.getActivity().getApplicationContext()));
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArray("operations", (Parcelable[])this.aMh.values().toArray((Parcelable[])new FolderOperation[this.aMh.size()]));
    }
}
