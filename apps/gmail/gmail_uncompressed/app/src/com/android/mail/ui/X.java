package com.android.mail.ui;

import com.google.common.collect.*;
import android.net.*;
import android.support.v4.widget.*;
import android.content.res.*;
import android.content.*;
import com.google.common.base.*;
import com.android.mail.*;
import android.database.*;
import java.util.*;
import android.app.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import java.io.*;
import android.os.*;
import android.widget.*;
import com.android.mail.browse.*;

final class x implements br
{
    final /* synthetic */ a aEa;
    private final int aEr;
    private final Collection<Conversation> aEs;
    private boolean aEt;
    private final boolean aEu;
    private final ArrayList<FolderOperation> aEx;
    private final boolean aEy;
    private final Folder aEz;
    private be amt;
    private final boolean mIsDestructive;
    
    private x(final a aEa, final Collection<Conversation> collection, final Collection<FolderOperation> collection2, final boolean mIsDestructive, final boolean aEu, final boolean aEy, final int aEr, final Folder aEz) {
        this.aEa = aEa;
        this.aEx = new ArrayList<FolderOperation>();
        this.aEs = (Collection<Conversation>)ImmutableList.J((Collection<?>)collection);
        this.aEx.addAll(collection2);
        this.mIsDestructive = mIsDestructive;
        this.aEu = aEu;
        this.aEy = aEy;
        this.aEr = aEr;
        this.aEz = aEz;
    }
    
    private boolean wK() {
        boolean b = true;
        synchronized (this) {
            if (!this.aEt) {
                this.aEt = true;
                b = false;
            }
            return b;
        }
    }
    
    @Override
    public final void a(final be amt) {
        this.amt = amt;
    }
    
    @Override
    public final void wJ() {
        if (!this.wK()) {
            if (this.mIsDestructive && this.aEy && this.aEs.size() > 0) {
                this.aEa.a(new ToastBarOperation(this.aEs.size(), this.aEr, 0, this.aEu, this.aEz));
            }
            final ArrayList<z> list = new ArrayList<z>();
            for (final Conversation conversation : this.aEs) {
                final HashMap<Uri, Folder> s = Folder.s(conversation.uD());
                final ArrayList<Uri> list2 = new ArrayList<Uri>();
                final ArrayList<Boolean> list3 = new ArrayList<Boolean>();
                if (this.mIsDestructive) {
                    conversation.azn = true;
                }
                for (final FolderOperation folderOperation : this.aEx) {
                    list2.add(folderOperation.aqp.azZ.aPj);
                    Boolean b;
                    if (folderOperation.aKh) {
                        b = Boolean.TRUE;
                    }
                    else {
                        b = Boolean.FALSE;
                    }
                    list3.add(b);
                    if (folderOperation.aKh) {
                        s.put(folderOperation.aqp.azZ.aPj, folderOperation.aqp);
                    }
                    else {
                        s.remove(folderOperation.aqp.azZ.aPj);
                    }
                }
                list.add(this.aEa.aDh.a(conversation, list2, list3, s.values(), this.amt));
            }
            if (this.aEa.aDh != null) {
                this.aEa.aDh.d(list);
            }
            this.aEa.ww();
            if (this.aEu) {
                this.aEa.atH.clear();
            }
        }
    }
}
