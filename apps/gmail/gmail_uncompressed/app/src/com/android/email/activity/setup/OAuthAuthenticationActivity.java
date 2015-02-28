package com.android.email.activity.setup;

import android.app.*;
import com.android.email.mail.a.*;
import android.os.*;
import android.webkit.*;
import android.view.*;
import android.net.*;
import android.content.*;
import android.widget.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;

public class OAuthAuthenticationActivity extends Activity implements LoaderManager$LoaderCallbacks<d>
{
    private WebView PK;
    private VendorPolicyLoader$OAuthProvider PL;
    private String PN;
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        CookieSyncManager.createInstance((Context)this);
        CookieManager.getInstance().removeAllCookie();
        (this.PK = new WebView((Context)this)).setWebViewClient((WebViewClient)new aV(this, (byte)0));
        this.PK.getSettings().setJavaScriptEnabled(true);
        this.setContentView((View)this.PK);
        final Intent intent = this.getIntent();
        final String stringExtra = intent.getStringExtra("email_address");
        this.PL = N.d((Context)this, intent.getStringExtra("provider"));
        final VendorPolicyLoader$OAuthProvider pl = this.PL;
        final Uri$Builder buildUpon = Uri.parse(pl.authEndpoint).buildUpon();
        buildUpon.appendQueryParameter("response_type", pl.responseType);
        buildUpon.appendQueryParameter("client_id", pl.clientId);
        buildUpon.appendQueryParameter("redirect_uri", pl.redirectUri);
        buildUpon.appendQueryParameter("scope", pl.scope);
        buildUpon.appendQueryParameter("state", pl.state);
        buildUpon.appendQueryParameter("login_hint", stringExtra);
        this.PK.loadUrl(buildUpon.build().toString());
        if (bundle != null) {
            this.PN = bundle.getString("authentication_code");
        }
        else {
            this.PN = null;
        }
        if (this.PN != null) {
            final Bundle bundle2 = new Bundle();
            bundle2.putString("provider_id", this.PL.id);
            bundle2.putString("authentication_code", this.PN);
            this.getLoaderManager().initLoader(1, bundle2, (LoaderManager$LoaderCallbacks)this);
        }
        this.setResult(2, (Intent)null);
    }
    
    public Loader<d> onCreateLoader(final int n, final Bundle bundle) {
        if (n == 1) {
            return (Loader<d>)new aW((Context)this, bundle.getString("provider_id"), bundle.getString("authentication_code"));
        }
        return null;
    }
    
    public void onLoaderReset(final Loader<d> loader) {
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("authentication_code", this.PN);
    }
}
