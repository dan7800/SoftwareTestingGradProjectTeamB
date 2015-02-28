package com.google.android.gm.welcome;

import android.view.*;
import android.app.*;
import java.util.*;
import android.text.*;
import android.net.*;
import android.os.*;
import com.google.android.gsf.*;
import java.util.regex.*;
import com.android.mail.utils.*;
import com.android.mail.a.*;
import android.content.*;
import android.webkit.*;

final class d extends WebViewClient
{
    final /* synthetic */ ChangeAddressActivity this$0;
    
    d(final ChangeAddressActivity this$0) {
        this.this$0 = this$0;
    }
    
    public final void onPageFinished(final WebView webView, final String s) {
        super.onPageFinished(webView, s);
        this.this$0.bsa.setVisibility(8);
    }
    
    public final void onReceivedError(final WebView webView, final int n, final String s, final String s2) {
        this.this$0.bsa.setVisibility(8);
        E.f("WelcomeTour", "Error #%1$d for %3$s: %2$s", n, s, this.this$0.Tz);
        final Intent intent = new Intent();
        intent.putExtra("error", n);
        this.this$0.setResult(2, intent);
        this.this$0.finish();
    }
    
    public final boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
        E.c("WelcomeTour", "Loading URL %s", s);
        final Uri parse = Uri.parse(s);
        final ChangeAddressActivity this$0 = this.this$0;
        final String k = J(parse);
        if (k.equals(this.this$0.brW)) {
            this.this$0.IP();
        }
        else {
            if (this.this$0.brX.contains(k) || ChangeAddressActivity.a(this.this$0, k)) {
                return false;
            }
            if (!k.startsWith("mailto")) {
                this.this$0.startActivity(new Intent("android.intent.action.VIEW", parse));
                return true;
            }
        }
        return true;
    }
}
