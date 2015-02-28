package com.android.mail.browse;

import android.database.*;
import android.content.*;
import android.util.*;
import android.support.v4.view.*;
import android.view.*;
import com.android.mail.utils.*;
import java.util.*;
import android.graphics.*;

final class t implements Runnable
{
    final /* synthetic */ ConversationContainer alQ;
    
    private t(final ConversationContainer alQ) {
        this.alQ = alQ;
    }
    
    @Override
    public final void run() {
        this.alQ.removeViewInLayout(this.alQ.alL);
    }
}
