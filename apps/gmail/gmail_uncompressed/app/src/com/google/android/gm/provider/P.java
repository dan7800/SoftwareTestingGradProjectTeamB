package com.google.android.gm.provider;

import java.util.*;
import com.google.android.gm.provider.uiprovider.*;
import android.database.*;
import com.android.mail.utils.*;
import com.google.common.collect.*;
import android.content.*;

final class p implements Runnable
{
    final /* synthetic */ o bdk;
    
    p(final o bdk) {
        this.bdk = bdk;
    }
    
    @Override
    public final void run() {
        k.e(this.bdk.bdd);
    }
}
