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

final class f
{
    final /* synthetic */ ChangeAddressActivity this$0;
    
    private f(final ChangeAddressActivity this$0) {
        this.this$0 = this$0;
    }
    
    @JavascriptInterface
    public final void notifyAddressChangeCancelled() {
        this.this$0.IP();
        E.c("WelcomeTour", "Account Central reported address change cancelled", new Object[0]);
    }
    
    @JavascriptInterface
    public final void notifyAddressChangedSuccess(final String s) {
        this.this$0.brY = s;
        E.c("WelcomeTour", "Successful address change reported by Account Central: %s -> %s", E.cx(this.this$0.Tz), E.cx(this.this$0.brY));
        AsyncTask.execute((Runnable)new g(this.this$0.getApplicationContext(), this.this$0.Tz));
    }
}
