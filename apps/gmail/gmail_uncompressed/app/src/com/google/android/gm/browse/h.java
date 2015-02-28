package com.google.android.gm.browse;

import com.android.mail.ui.*;
import com.android.mail.providers.*;
import android.content.*;
import android.os.*;
import com.google.android.gsf.*;
import com.google.android.gms.g.*;
import com.google.android.apiary.*;
import com.google.api.a.a.*;
import com.google.api.client.http.*;
import com.google.android.gm.provider.uiprovider.*;
import com.android.mail.utils.*;
import android.app.*;

final class h extends cp<i>
{
    private final Message ald;
    private final Attachment ale;
    private final String mAccount;
    
    public h(final Context context, final Bundle bundle) {
        super(context);
        this.mAccount = bundle.getString("account");
        this.ald = (Message)bundle.getParcelable("message");
        this.ale = (Attachment)bundle.getParcelable("attachment");
    }
    
    private i Dk() {
        final i i = new i((byte)0);
        i.bae = SystemClock.uptimeMillis();
        try {
            if (c.a(this.getContext().getContentResolver(), "gmail_enable_conscrypt_provider", true)) {
                a.ai(this.getContext());
            }
            final GoogleRequestInitializer googleRequestInitializer = new GoogleRequestInitializer(this.getContext().getApplicationContext(), "oauth2:https://www.googleapis.com/auth/drive https://www.googleapis.com/auth/gmail.readonly", e.mW);
            googleRequestInitializer.w(this.mAccount);
            final com.google.api.a.a.a yd = new d(new com.google.api.client.http.a.c(), new com.google.api.client.extensions.android.json.a(), googleRequestInitializer).hF("Android Gmail").YD();
            final com.google.api.a.a.a.a a = new com.google.api.a.a.a.a();
            a.hG(Long.toHexString(Long.parseLong(this.ald.aBd)));
            final Attachment ale = this.ale;
            final GmailAttachment gmailAttachment = new GmailAttachment();
            gmailAttachment.ayS = ale.ayS;
            gmailAttachment.HZ();
            a.hH(gmailAttachment.partId);
            i.bad = yd.YB().a(a).Xe();
            return i;
        }
        catch (Exception ex) {
            E.e(e.mW, ex, "problem inserting attachment into Drive", new Object[0]);
            return i;
        }
    }
}
