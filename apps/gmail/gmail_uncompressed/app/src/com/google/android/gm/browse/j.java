package com.google.android.gm.browse;

import com.android.mail.providers.*;
import com.android.mail.browse.*;
import android.content.*;
import android.text.*;
import android.net.*;
import com.google.android.gsf.*;
import com.android.mail.utils.*;
import com.google.android.gm.provider.*;
import com.android.mail.g.*;

public final class j implements ar
{
    private static final String mW;
    private final Account Nc;
    private final long aPP;
    
    static {
        mW = D.AU();
    }
    
    public j(final Account nc, final long app) {
        this.Nc = nc;
        this.aPP = app;
    }
    
    @Override
    public final Intent a(final Context context, final String s, final ConversationMessage conversationMessage) {
        final String lw = this.Nc.lw();
        Uri uri;
        if (TextUtils.equals((CharSequence)this.Nc.uf().type, (CharSequence)"com.google")) {
            final Uri parse = Uri.parse(s);
            final long long1 = Long.parseLong(conversationMessage.aBd);
            final String queryParameter = parse.getQueryParameter(c.a(context.getContentResolver(), "gmail-part-id-key", "attid"));
            if (TextUtils.isEmpty((CharSequence)queryParameter)) {
                E.f(j.mW, "Empty partId in inlineUri: %s", parse);
                return null;
            }
            uri = GmailProvider.a(lw, this.aPP, long1, conversationMessage.id, queryParameter, null);
        }
        else {
            uri = Uri.EMPTY;
        }
        return b.a(context, lw, this.Nc.getType(), conversationMessage, uri.toString());
    }
}
