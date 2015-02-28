package com.android.ex.chips;

import android.os.*;
import android.accounts.*;
import android.content.*;
import android.database.*;
import android.net.*;
import android.util.*;
import android.content.pm.*;
import java.util.*;
import android.widget.*;
import android.view.*;
import android.graphics.drawable.*;

final class d extends Handler
{
    final /* synthetic */ a acm;
    
    private d(final a acm) {
        this.acm = acm;
    }
    
    public final void handleMessage(final Message message) {
        if (this.acm.ach > 0) {
            this.acm.h(this.acm.mo());
        }
    }
    
    public final void mv() {
        this.sendMessageDelayed(this.obtainMessage(1, 0, 0, (Object)null), 1000L);
    }
    
    public final void mw() {
        this.removeMessages(1);
    }
}
