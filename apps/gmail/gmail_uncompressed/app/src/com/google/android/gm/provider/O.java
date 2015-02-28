package com.google.android.gm.provider;

import android.database.*;
import android.os.*;
import com.google.android.gm.provider.uiprovider.*;
import java.util.*;
import com.google.common.collect.*;
import com.android.mail.utils.*;
import android.content.*;

final class o implements Loader$OnLoadCompleteListener<Cursor>
{
    final /* synthetic */ k bdd;
    private final Handler bdi;
    private final Runnable bdj;
    
    private o(final k bdd) {
        this.bdd = bdd;
        this.bdi = new Handler(Looper.getMainLooper());
        this.bdj = new p(this);
    }
}
