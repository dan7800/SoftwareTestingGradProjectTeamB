package com.android.email.activity.setup;

import com.android.email.provider.*;
import com.android.emailcommon.b.*;
import com.android.mail.utils.*;
import com.android.emailcommon.provider.*;
import android.os.*;
import android.app.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import android.text.*;
import android.text.method.*;

final class ar implements Runnable
{
    final /* synthetic */ aq OQ;
    
    ar(final aq oq) {
        this.OQ = oq;
    }
    
    @Override
    public final void run() {
        this.OQ.Os.setOnItemSelectedListener((AdapterView$OnItemSelectedListener)new as(this));
    }
}
