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

public class ChangeAddressActivity extends Activity
{
    private String Tz;
    private WebView aKF;
    private String brV;
    private String brW;
    private Set<String> brX;
    private String brY;
    private Matcher brZ;
    private View bsa;
    private WebViewClient bsb;
    private LoaderManager$LoaderCallbacks<String> bsc;
    
    public ChangeAddressActivity() {
        this.brX = new HashSet<String>();
        this.bsb = new d(this);
        this.bsc = (LoaderManager$LoaderCallbacks<String>)new e(this);
    }
    
    private void IP() {
        int n;
        if (TextUtils.isEmpty((CharSequence)this.brY)) {
            n = 0;
        }
        else {
            n = -1;
        }
        final Intent intent = new Intent();
        intent.putExtra("account-address", this.Tz);
        intent.putExtra("changed-address", this.brY);
        this.setResult(n, intent);
        super.finish();
    }
    
    private static String J(final Uri uri) {
        return new Uri$Builder().scheme(uri.getScheme()).authority(uri.getHost()).path(uri.getPath()).toString();
    }
    
    public void onBackPressed() {
        this.IP();
        super.onBackPressed();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.requestWindowFeature(1);
        this.setContentView(2130968639);
        this.bsa = this.findViewById(2131558666);
        this.Tz = this.getIntent().getStringExtra("account-address");
        this.aKF = (WebView)this.findViewById(2131558665);
        final ContentResolver contentResolver = this.getContentResolver();
        this.brV = c.a(contentResolver, "gmail_account_change_email", "https://security.google.com/settings/security/username");
        this.brW = c.a(contentResolver, "gmail_account_change_email_finished", "https://www.google.com/settings/personalinfo");
        this.brZ = Pattern.compile(c.a(contentResolver, "gmail_account_central_setcookie_regexp", "https://(accounts|security)\\.google\\.[a-zA-Z0-9 -\ud7ff\uf900-\ufdcf\ufdf0-\uffef]{2,63}/.*")).matcher("");
        this.brX.add(c.a(contentResolver, "gmail_account_central_login", "https://accounts.google.com/ServiceLogin"));
        this.brX.add(c.a(contentResolver, "gmail_account_central_checkcookie", "https://accounts.google.com/CheckCookie"));
        this.brX.add(J(Uri.parse(this.brV)));
        final WebSettings settings = this.aKF.getSettings();
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBlockNetworkImage(false);
        ag.a(this.aKF, (Context)this);
        this.aKF.setScrollBarStyle(0);
        this.aKF.setWebViewClient(this.bsb);
        this.aKF.addJavascriptInterface((Object)new f(this, null), "AndroidGmail");
        this.getLoaderManager().initLoader(1, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this.bsc);
        a.oq().e(this);
    }
    
    protected void onStop() {
        a.oq().f(this);
        super.onStop();
    }
}
