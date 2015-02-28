package com.google.android.gm.browse;

import com.android.mail.ui.*;
import android.os.*;
import com.android.mail.utils.*;
import android.content.*;
import android.app.*;
import android.support.v7.app.*;
import android.webkit.*;
import android.view.*;

public final class a extends Fragment
{
    private static final String mW;
    private String Tz;
    private String YQ;
    private be aHN;
    private WebView aKF;
    private boolean aZY;
    private final c aZZ;
    private String azJ;
    private final Handler mHandler;
    
    static {
        mW = D.AU();
    }
    
    public a() {
        this.aZZ = new c(this, (byte)0);
        this.mHandler = new Handler();
    }
    
    public static a d(final String s, final String s2, final String s3) {
        final a a = new a();
        final Bundle arguments = new Bundle(3);
        arguments.putString("permalink", s);
        arguments.putString("account-name", s2);
        arguments.putString("server-message-id", s3);
        a.setArguments(arguments);
        return a;
    }
    
    public final WebView getWebView() {
        if (this.aZY) {
            return this.aKF;
        }
        return null;
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        final Bundle arguments = this.getArguments();
        this.azJ = arguments.getString("permalink");
        this.Tz = arguments.getString("account-name");
        this.YQ = arguments.getString("server-message-id");
        final WebView webView = this.getWebView();
        final WebSettings settings = webView.getSettings();
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(false);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setLoadWithOverviewMode(true);
        settings.setLayoutAlgorithm(WebSettings$LayoutAlgorithm.NORMAL);
        ag.a(webView, (Context)this.getActivity());
        webView.setWebViewClient((WebViewClient)new b(this, (byte)0));
        if (this.azJ != null) {
            this.aHN.bu(true);
            this.getLoaderManager().initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)this.aZZ);
        }
        ((g)this.getActivity()).cF().cB();
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        if (this.aKF != null) {
            this.aKF.destroy();
        }
        final View inflate = layoutInflater.inflate(2130968706, viewGroup, false);
        this.aKF = (WebView)inflate.findViewById(2131558665);
        this.aZY = true;
        (this.aHN = new be(this, this.mHandler)).az(inflate);
        return inflate;
    }
    
    public final void onDestroy() {
        if (this.aKF != null) {
            this.aKF.destroy();
            this.aKF = null;
        }
        super.onDestroy();
    }
    
    public final void onDestroyView() {
        this.aZY = false;
        super.onDestroyView();
    }
    
    public final void onPause() {
        super.onPause();
        this.aKF.onPause();
    }
    
    public final void onResume() {
        this.aKF.onResume();
        super.onResume();
    }
}
