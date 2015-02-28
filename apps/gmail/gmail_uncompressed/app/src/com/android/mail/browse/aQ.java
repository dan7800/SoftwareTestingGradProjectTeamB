package com.android.mail.browse;

import com.android.mail.ui.*;
import android.os.*;
import com.android.mail.utils.*;
import com.android.mail.a.*;
import android.content.*;
import android.app.*;
import android.net.*;

public class aq extends P
{
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        final String action = intent.getAction();
        final String type = intent.getType();
        if (bundle == null) {
            if (!"android.intent.action.VIEW".equals(action) || !I.cA(type)) {
                E.g(aq.mW, "Entered EmlViewerActivity with wrong intent action or type: %s, %s", action, type);
                this.finish();
                return;
            }
            final FragmentTransaction beginTransaction = this.getFragmentManager().beginTransaction();
            final Uri data = intent.getData();
            final Uri azF = this.azF;
            beginTransaction.add(2131558549, (Fragment)am.n(data), "eml_message_fragment");
            beginTransaction.commit();
            a.oq().a("eml_viewer", null, null, 0L);
        }
    }
}
