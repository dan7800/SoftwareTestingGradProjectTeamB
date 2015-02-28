package com.google.android.gm.welcome;

import android.widget.*;
import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;
import android.provider.*;
import com.google.common.collect.*;
import android.database.*;
import com.google.android.gm.c.*;
import java.util.*;
import com.google.android.gm.*;
import android.content.*;
import com.android.mail.utils.*;
import android.app.*;
import android.view.*;

final class m extends BroadcastReceiver
{
    final /* synthetic */ SetupAddressesFragment bsi;
    private final IntentFilter bsj;
    
    private m(final SetupAddressesFragment bsi) {
        this.bsi = bsi;
        (this.bsj = new IntentFilter()).addAction("android.accounts.LOGIN_ACCOUNTS_CHANGED");
    }
    
    public final void onReceive(final Context context, final Intent intent) {
        if ("android.accounts.LOGIN_ACCOUNTS_CHANGED".equals(intent.getAction())) {
            this.bsi.IR();
        }
    }
}
