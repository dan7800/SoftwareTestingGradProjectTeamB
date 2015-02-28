package com.android.mail.providers;

import android.net.*;
import com.android.mail.ui.*;
import com.android.mail.utils.*;
import com.google.common.collect.*;
import android.os.*;
import java.util.*;
import android.app.*;

public final class p
{
    private static final String mW;
    private final List<Uri> aAN;
    private final Map<Uri, Folder> aAO;
    private final cS aAP;
    private final r aAQ;
    private q aAR;
    
    static {
        mW = E.TAG;
    }
    
    public p(final cS aap, final q aar) {
        this.aAN = new ArrayList<Uri>();
        this.aAO = new HashMap<Uri, Folder>();
        this.aAQ = new r(this, (byte)0);
        this.aAP = aap;
        this.aAR = aar;
    }
    
    private int u(final Uri uri) {
        final int size = this.aAN.size();
        int i = 0;
        while (true) {
            while (i < size) {
                if (this.aAN.get(i) == null) {
                    final int n = i;
                    if (n < 0) {
                        final int size2 = this.aAN.size();
                        this.aAN.add(size2, uri);
                        return size2;
                    }
                    this.aAN.set(n, uri);
                    return n;
                }
                else {
                    ++i;
                }
            }
            final int n = -1;
            continue;
        }
    }
    
    public final void a(final Account[] array) {
        if (array != null) {
            final ArrayList<Uri> list = new ArrayList<Uri>(array.length);
            for (int length = array.length, i = 0; i < length; ++i) {
                list.add(array[i].ayw.aBX);
            }
            for (final Uri uri : Collections.unmodifiableList((List<? extends Uri>)Lists.f((Iterable<?>)this.aAN))) {
                if (!list.contains(uri) && uri != null) {
                    final int index = this.aAN.indexOf(uri);
                    if (index < 0) {
                        continue;
                    }
                    this.aAP.getLoaderManager().destroyLoader(index + 35);
                    this.aAO.remove(uri);
                    this.aAN.set(index, null);
                }
            }
            for (final Uri uri2 : list) {
                if (!this.aAN.contains(uri2)) {
                    final int u = this.u(uri2);
                    E.c(p.mW, "Watching %s, at position %d.", uri2, u);
                    this.aAO.put(uri2, null);
                    final LoaderManager loaderManager = this.aAP.getLoaderManager();
                    final Bundle bundle = new Bundle();
                    bundle.putString("FOLDER-URI", uri2.toString());
                    loaderManager.initLoader(u + 35, bundle, (LoaderManager$LoaderCallbacks)this.aAQ);
                }
            }
        }
    }
    
    public final int k(final Account account) {
        final Folder l = this.l(account);
        if (l != null) {
            return l.aAf;
        }
        return 0;
    }
    
    public final Folder l(final Account account) {
        final Uri abx = account.ayw.aBX;
        if (this.aAO.containsKey(abx)) {
            final Folder folder = this.aAO.get(abx);
            if (folder != null) {
                return folder;
            }
        }
        return null;
    }
}
