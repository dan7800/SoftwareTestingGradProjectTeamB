package com.google.android.gm.browse;

import com.android.mail.ui.*;
import android.content.*;
import com.android.mail.a.*;
import java.util.*;
import com.google.android.gsf.*;
import com.google.android.gm.*;
import com.google.android.gm.provider.*;
import com.android.mail.providers.*;
import android.net.*;
import com.android.mail.utils.*;
import android.os.*;
import android.text.*;
import android.app.*;

final class l extends cp<Intent>
{
    private final String Tz;
    private final String bah;
    
    public l(final Context context, final String bah, final String tz) {
        super(context);
        this.bah = bah;
        this.Tz = tz;
    }
    
    private static Intent a(final Context context, final String s, final String s2, final Account account, final String s3) {
        a.oq().a("plid_intent", "fallback_ui", s3, 0L);
        final String format = String.format(Locale.US, c.a(context.getContentResolver(), "gmail_permalink_format", "https://mail.google.com/mail/?extsrc=sync&client=g&plid=%s"), s);
        final Intent intent = new Intent(context, (Class)FullMessageActivity.class);
        intent.putExtra("permalink", format);
        intent.putExtra("account-name", s2);
        if (account != null) {
            intent.putExtra("extra-account-uri", (Parcelable)account.uri);
        }
        return intent;
    }
}
