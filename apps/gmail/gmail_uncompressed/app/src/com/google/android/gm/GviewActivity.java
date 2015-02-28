package com.google.android.gm;

import android.os.*;
import java.util.*;
import com.google.android.gsf.*;
import android.webkit.*;
import android.net.*;
import android.app.*;
import android.content.*;
import com.google.android.gm.provider.*;

public class GviewActivity extends y implements LoaderManager$LoaderCallbacks<String>
{
    private String Tz;
    private WebView aKF;
    private String aXT;
    private DialogFragment aXU;
    private DialogFragment aXV;
    private final Handler mHandler;
    
    public GviewActivity() {
        this.mHandler = new Handler();
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968709);
        this.aKF = (WebView)this.findViewById(2131558845);
        final WebSettings settings = this.aKF.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBlockNetworkImage(false);
        this.aKF.setScrollBarStyle(0);
        this.aKF.setWebViewClient((WebViewClient)new D(this));
        final Uri data = this.getIntent().getData();
        this.Tz = data.getQueryParameter("account");
        this.aXT = String.format(Locale.US, c.a(this.getContentResolver(), "gmail_gview_url", "https://docs.google.com/viewer?embedded=true&a=v&pid=gmail&user=%s&thid=%s&attid=%s&mt=%s"), this.Tz, data.getQueryParameter("serverMessageId"), data.getQueryParameter("attId"), data.getQueryParameter("mimeType"));
        final FragmentManager fragmentManager = this.getFragmentManager();
        this.aXU = (DialogFragment)fragmentManager.findFragmentByTag("progress-dialog");
        if (this.aXU == null) {
            (this.aXU = J.CO()).show(fragmentManager, "progress-dialog");
        }
        this.getLoaderManager().initLoader(0, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this);
    }
    
    public Loader<String> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                return null;
            }
            case 0: {
                return (Loader<String>)new I((Context)this, this.Tz);
            }
        }
    }
    
    public void onLoaderReset(final Loader<String> loader) {
    }
}
