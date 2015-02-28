package com.google.android.gm;

import com.android.mail.utils.*;
import android.os.*;
import android.app.*;

public class ReauthenticateActivity extends y implements h
{
    private String Tz;
    
    @Override
    public final void bN(final boolean b) {
        E.d(ay.mW, "Credential prompt successful: %b", b);
        int result = 0;
        if (b) {
            result = -1;
        }
        this.setResult(result);
        this.finish();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.Tz = this.getIntent().getData().getQueryParameter("account");
    }
    
    public void onResume() {
        super.onResume();
        a.a(this, this.Tz, this);
    }
}
