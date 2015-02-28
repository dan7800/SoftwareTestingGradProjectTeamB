package com.google.android.gm.provider;

import com.android.mail.a.*;
import java.util.regex.*;
import com.android.mail.utils.*;
import com.google.android.gm.persistence.*;
import com.google.android.gsf.*;
import java.util.zip.*;
import com.google.android.gm.provider.uiprovider.*;
import android.database.*;
import android.util.*;
import android.text.*;
import android.net.http.*;
import org.apache.http.util.*;
import android.os.*;
import org.apache.http.*;
import android.content.*;
import java.util.*;
import com.google.android.common.http.*;
import java.io.*;
import org.apache.http.entity.*;
import org.apache.http.client.methods.*;
import com.google.common.collect.*;

abstract class bg implements be
{
    final /* synthetic */ MailSync blx;
    
    private bg(final MailSync blx) {
        this.blx = blx;
    }
    
    public abstract int HB();
    
    protected final void a(final bm bm, final Exception ex, final boolean b) {
        String s;
        if (b) {
            s = "com.google.android.gm.intent.ACTION_POST_SAVE_ERROR";
        }
        else {
            s = "com.google.android.gm.intent.ACTION_POST_SEND_ERROR";
        }
        final Intent intent = new Intent(s);
        intent.putExtra("account", this.blx.blr.Dc());
        intent.putExtra("extraMessageSubject", bm.ayV);
        intent.putExtra("extraConversationId", bm.bku);
        this.blx.mContext.sendBroadcast(intent);
        a.oq().a("errors", "read_cached_attachment", ex.getMessage(), 0L);
    }
}
