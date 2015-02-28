package com.android.mail.browse;

import com.android.mail.c.*;
import android.content.*;
import com.android.emailcommon.a.*;
import android.net.*;
import android.database.*;
import com.android.mail.ui.*;
import com.android.mail.providers.*;
import java.util.*;

public final class ConversationMessage extends Message
{
    public static final a<ConversationMessage> aqh;
    private transient aD aqg;
    
    static {
        aqh = new U();
    }
    
    public ConversationMessage(final Context context, final f f, final Uri uri) {
        super(context, f, uri);
    }
    
    private ConversationMessage(final Cursor cursor) {
        super(cursor);
    }
    
    public final void a(final aD aqg) {
        this.aqg = aqg;
    }
    
    public final void ax(final boolean b) {
        this.azc = b;
        final aC rb = this.aqg.rB();
        if (rb != null) {
            rb.Q(this.id).azc = b;
        }
    }
    
    public final void ay(final boolean b) {
        final aP ra = this.aqg.rA();
        if (ra != null) {
            ra.a(this, b);
        }
    }
    
    public final Conversation pg() {
        if (this.aqg != null) {
            return this.aqg.pg();
        }
        return null;
    }
    
    public final int ql() {
        final Object[] array = { this.uri, null };
        final Iterator<Attachment> iterator = this.vC().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Uri ua = iterator.next().uA();
            int hashCode;
            if (ua != null) {
                hashCode = ua.hashCode();
            }
            else {
                hashCode = 0;
            }
            n += hashCode;
        }
        array[1] = n;
        return Arrays.hashCode(array);
    }
    
    public final boolean qm() {
        final aC rb = this.aqg.rB();
        return rb != null && rb.qm();
    }
}
