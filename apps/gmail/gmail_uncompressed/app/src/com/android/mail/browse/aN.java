package com.android.mail.browse;

import com.android.mail.providers.*;
import com.google.common.collect.*;
import com.android.emailcommon.mail.*;
import android.webkit.*;
import android.net.*;
import com.android.mail.ui.*;
import java.util.*;
import android.os.*;
import android.widget.*;
import android.content.*;
import com.android.mail.utils.*;
import android.view.*;
import android.app.*;
import com.android.mail.*;

final class an extends L
{
    final /* synthetic */ am arI;
    
    public an(final am arI) {
        this.arI = arI;
        super(null);
    }
    
    public final void onPageFinished(final WebView webView, final String s) {
        if (!this.arI.isAdded()) {
            E.c(am.mW, "ignoring EMLVF.onPageFinished, url=%s fragment=%s", s, this.arI);
            return;
        }
        this.arI.arD.zb();
        final HashSet<String> set = new HashSet<String>();
        synchronized (this.arI.aqQ) {
            final ImmutableList<Object> j = ImmutableList.J((Collection<?>)this.arI.aqQ.values());
            // monitorexit(this.arI.aqQ)
            final Iterator<Address> iterator = j.iterator();
            while (iterator.hasNext()) {
                set.add(iterator.next().getAddress());
            }
        }
        final ar rf = this.arI.rf();
        rf.i(set);
        this.arI.getLoaderManager().restartLoader(1, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)rf);
    }
    
    public final WebResourceResponse shouldInterceptRequest(final WebView webView, final String s) {
        final WebResourceResponse a = this.a(Uri.parse(s), this.arI.arD.qL());
        if (a != null) {
            return a;
        }
        return super.shouldInterceptRequest(webView, s);
    }
}
