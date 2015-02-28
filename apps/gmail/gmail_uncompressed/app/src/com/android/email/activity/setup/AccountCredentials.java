package com.android.email.activity.setup;

import android.content.*;
import android.os.*;
import android.app.*;

public class AccountCredentials extends Activity implements V
{
    public static Intent a(final Context context, final String s, final String s2) {
        final Intent intent = new Intent(context, (Class)AccountCredentials.class);
        intent.putExtra("email", s);
        intent.putExtra("protocol", s2);
        return intent;
    }
    
    public final void g(final Bundle bundle) {
        final Intent intent = new Intent();
        intent.putExtras(bundle);
        this.setResult(-1, intent);
        this.finish();
    }
    
    public final void hv() {
        this.g(((U)this.getFragmentManager().findFragmentByTag("credentials")).hT());
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968599);
        final String stringExtra = this.getIntent().getStringExtra("email");
        final String stringExtra2 = this.getIntent().getStringExtra("protocol");
        this.setFinishOnTouchOutside(false);
        if (bundle == null) {
            this.getFragmentManager().beginTransaction().add(2131558544, (Fragment)U.a(stringExtra, stringExtra2, null, false, true), "credentials").commit();
        }
        this.setResult(0);
    }
}
