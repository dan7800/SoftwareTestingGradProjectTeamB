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

final class aB implements Runnable
{
    final /* synthetic */ aw aHn;
    
    aB(final aw aHn) {
        this.aHn = aHn;
    }
    
    @Override
    public final void run() {
        this.aHn.aFU.invalidateViews();
        this.aHn.mHandler.postDelayed(this.aHn.aGO, (long)aw.aGK);
    }
}
