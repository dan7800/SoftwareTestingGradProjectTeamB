package com.android.mail.ui;

import android.support.v4.widget.*;
import com.android.mail.*;
import android.os.*;
import com.android.mail.providers.*;
import com.android.mail.a.*;
import com.google.common.collect.*;
import java.util.*;
import android.app.*;
import android.net.*;
import android.content.*;
import android.content.res.*;
import android.animation.*;
import com.android.mail.browse.*;
import android.view.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.database.*;

final class ay extends ca
{
    final /* synthetic */ aw aHn;
    
    ay(final aw aHn, final String s, final Fragment fragment) {
        this.aHn = aHn;
        super(s, fragment);
    }
    
    @Override
    public final void xe() {
        if (!aw.b(this.aHn)) {
            this.aHn.aHj = false;
            aw.c(this.aHn);
            this.aHn.mHandler.removeCallbacks(this.aHn.aHh);
            this.aHn.mHandler.postDelayed(this.aHn.aHh, (long)aw.aGJ);
        }
        this.aHn.aHi = false;
    }
}
