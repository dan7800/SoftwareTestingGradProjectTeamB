package com.google.android.gm.ads;

import com.android.mail.providers.*;
import android.net.*;
import android.content.*;
import android.webkit.*;
import com.google.android.gm.provider.*;
import android.os.*;
import com.android.mail.utils.*;
import com.android.mail.browse.*;
import android.view.*;
import com.android.mail.ui.*;
import android.app.*;

final class w extends aX
{
    final /* synthetic */ s aZX;
    
    public w(final s azx, final Account account) {
        this.aZX = azx;
        super(azx, account);
    }
    
    private boolean dE(final String s) {
        final Activity activity = this.getActivity();
        boolean b = false;
        if (activity != null) {
            Uri uri = Uri.parse(s);
            while (true) {
                Label_0145: {
                    if (ag.b(this.aZX.aob.xg(), uri, this.aZX.Nc)) {
                        break Label_0145;
                    }
                    uri = this.aZX.aZl.E(uri);
                    final Intent intent = new Intent("android.intent.action.VIEW", uri);
                    intent.putExtra("com.android.browser.application_id", activity.getPackageName());
                    intent.putExtra("create_new_tab", true);
                    try {
                        intent.setFlags(524288);
                        activity.startActivity(intent);
                        b = true;
                        if (b) {
                            this.aZX.aZW.setUri(uri);
                            AsyncTask.execute((Runnable)this.aZX.aZW);
                            return b;
                        }
                        return b;
                    }
                    catch (ActivityNotFoundException ex) {
                        b = false;
                        continue;
                    }
                }
                b = true;
                continue;
            }
        }
        return b;
    }
    
    @Override
    public final boolean shouldOverrideUrlLoading(final WebView webView, final String s) {
        return this.aZX.aHS && this.dE(s);
    }
}
