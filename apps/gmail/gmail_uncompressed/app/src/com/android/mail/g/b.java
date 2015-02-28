package com.android.mail.g;

import com.android.mail.browse.*;
import android.content.*;
import com.android.mail.providers.*;
import android.os.*;
import com.android.ex.photo.*;

public class b extends g implements e
{
    static final String EXTRA_MESSAGE;
    static final String axm;
    static final String axn;
    static final String axo;
    
    static {
        axm = b.class.getName() + "-acct";
        axn = b.class.getName() + "-accttype";
        EXTRA_MESSAGE = b.class.getName() + "-msg";
        axo = b.class.getName() + "-hide-extra-option-one";
    }
    
    public static Intent a(final Context context, final String s, final String s2, final ConversationMessage conversationMessage, final String s3) {
        final f r = com.android.ex.photo.e.r(context, context.getString(2131296746));
        r.aR(conversationMessage.aBm.toString()).h(E.aCz).aQ(s3);
        return a(r.nE(), s, s2, conversationMessage);
    }
    
    private static Intent a(final Intent intent, final String s, final String s2, final ConversationMessage conversationMessage) {
        intent.putExtra(b.EXTRA_MESSAGE, (Parcelable)conversationMessage);
        intent.putExtra(b.axm, s);
        intent.putExtra(b.axn, s2);
        intent.putExtra(b.axo, conversationMessage.pg() == null);
        return intent;
    }
    
    public static void a(final Context context, final String s, final String s2, final ConversationMessage conversationMessage, final int n) {
        final f r = com.android.ex.photo.e.r(context, context.getString(2131296746));
        r.aR(conversationMessage.aBm.toString()).h(E.aCz).a(n);
        context.startActivity(a(r.nE(), s, s2, conversationMessage));
    }
    
    public com.android.ex.photo.k nF() {
        return new c(this);
    }
}
