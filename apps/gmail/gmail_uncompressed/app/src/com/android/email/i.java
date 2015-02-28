package com.android.email;

import android.support.v4.app.*;
import android.app.*;
import android.provider.*;
import com.android.email.provider.*;
import android.text.*;
import com.android.mail.providers.*;
import com.android.mail.i.*;
import android.net.*;
import android.database.*;
import android.content.*;
import java.util.*;
import android.os.*;
import com.android.mail.utils.*;
import com.android.mail.g.*;
import com.android.email.service.*;
import com.android.email.activity.setup.*;
import com.android.emailcommon.provider.*;

final class i extends ContentObserver
{
    private final long LN;
    private final Context mContext;
    
    public i(final Handler handler, final Context mContext, final long ln) {
        super(handler);
        this.mContext = mContext;
        this.LN = ln;
    }
    
    public final void onChange(final boolean b) {
        d.c(this.mContext, this.LN);
    }
}
