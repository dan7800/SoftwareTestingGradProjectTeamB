package com.android.mail.browse;

import android.database.*;
import android.content.*;
import android.util.*;
import android.support.v4.view.*;
import android.view.*;
import com.android.mail.utils.*;
import java.util.*;
import android.graphics.*;

final class p implements Runnable
{
    private final View aU;
    final /* synthetic */ ConversationContainer alQ;
    
    public p(final ConversationContainer alQ, final View au) {
        this.alQ = alQ;
        this.aU = au;
    }
    
    @Override
    public final void run() {
        ConversationContainer.a(this.alQ, this.aU, ConversationContainer.alr.length, this.aU.getLayoutParams());
    }
}
