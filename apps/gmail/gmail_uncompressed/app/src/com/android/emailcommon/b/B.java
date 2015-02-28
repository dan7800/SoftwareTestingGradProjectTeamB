package com.android.emailcommon.b;

import android.app.*;
import android.net.*;
import android.content.*;
import android.os.*;
import android.security.*;
import java.security.*;

public final class b extends Activity implements KeyChainAliasCallback
{
    public static final Uri abe;
    
    static {
        abe = Uri.parse("eas://com.android.emailcommon/certrequest");
    }
    
    public final void alias(final String s) {
        if (s == null) {
            this.setResult(0);
        }
        else {
            final Intent intent = new Intent();
            intent.putExtra("CertificateRequestor.alias", s);
            this.setResult(-1, intent);
        }
        this.finish();
    }
    
    protected final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        final String stringExtra = intent.getStringExtra("CertificateRequestor.host");
        final int intExtra = intent.getIntExtra("CertificateRequestor.port", -1);
        if (bundle == null) {
            KeyChain.choosePrivateKeyAlias((Activity)this, (KeyChainAliasCallback)this, (String[])null, (Principal[])null, stringExtra, intExtra, (String)null);
        }
    }
}
