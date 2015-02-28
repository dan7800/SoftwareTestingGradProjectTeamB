package com.android.mail.browse;

import android.content.*;
import android.util.*;
import java.util.concurrent.*;
import android.content.res.*;
import android.graphics.*;
import java.util.*;
import android.view.*;
import com.android.mail.utils.*;

final class ai implements Runnable
{
    final /* synthetic */ ConversationWebView arx;
    
    ai(final ConversationWebView arx) {
        this.arx = arx;
    }
    
    @Override
    public final void run() {
        this.arx.arp = false;
        this.arx.qV();
        this.arx.invalidate();
    }
}
