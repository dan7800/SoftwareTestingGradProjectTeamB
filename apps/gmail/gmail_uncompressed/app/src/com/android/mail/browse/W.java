package com.android.mail.browse;

import android.app.*;
import android.content.*;
import android.text.*;
import com.android.mail.providers.*;
import android.net.*;
import java.util.*;
import com.android.mail.utils.*;
import android.os.*;
import android.database.*;

final class w implements Runnable
{
    final /* synthetic */ u amq;
    
    w(final u amq) {
        this.amq = amq;
    }
    
    @Override
    public final void run() {
        final boolean b = !this.amq.ame.isEmpty();
        for (final Conversation conversation : this.amq.ame) {
            final A alT = u.alT;
            A.a(conversation.uri, this.amq);
        }
        this.amq.ame.clear();
        if (b) {
            this.amq.pd();
        }
    }
}
