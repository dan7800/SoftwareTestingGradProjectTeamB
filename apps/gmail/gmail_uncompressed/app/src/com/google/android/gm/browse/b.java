package com.google.android.gm.browse;

import android.net.*;
import com.google.android.gm.*;
import android.content.*;
import com.android.mail.ui.*;
import com.android.mail.utils.*;
import android.os.*;
import android.app.*;
import android.support.v7.app.*;
import android.webkit.*;
import android.view.*;

final class b extends WebViewClient
{
    final /* synthetic */ a baa;
    
    private b(final a baa) {
        this.baa = baa;
    }
    
    public final void onPageFinished(final WebView webView, final String s) {
        if (!this.baa.isAdded()) {
            E.c(a.mW, "ignoring FMF.onPageFinished, url=%s fragment=%s", s, this.baa);
            return;
        }
        this.baa.aHN.zb();
    }
    
    public final boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
        E.c(a.mW, "should override Url loading? %s", s);
        final FullMessageActivity fullMessageActivity = (FullMessageActivity)this.baa.getActivity();
        if (fullMessageActivity != null) {
            final Uri parse = Uri.parse(s);
            if (parse == null) {
                return true;
            }
            if (ag.b((Context)fullMessageActivity, parse, fullMessageActivity.oN())) {
                return true;
            }
            final String host = parse.getHost();
            if (!ViewProxyActivity.a(fullMessageActivity.getContentResolver(), host) || (!host.startsWith("accounts.google.") && !host.startsWith("mail.google."))) {
                Label_0158: {
                    if (this.baa.Tz == null) {
                        break Label_0158;
                    }
                    Intent a = L.a((Context)fullMessageActivity, Uri.parse("content://com.android.gmail.ui/proxy"), parse, this.baa.Tz);
                    try {
                        while (true) {
                            a.setFlags(589824);
                            fullMessageActivity.startActivity(a);
                            return true;
                            a = new Intent("android.intent.action.VIEW", parse);
                            a.putExtra("com.android.browser.application_id", fullMessageActivity.getPackageName());
                            a.putExtra("create_new_tab", true);
                            continue;
                        }
                    }
                    catch (ActivityNotFoundException ex) {
                        return false;
                    }
                }
            }
        }
        return false;
    }
}
