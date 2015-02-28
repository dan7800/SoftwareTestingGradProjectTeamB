package com.google.android.gm.provider.uiprovider;

import android.database.*;
import android.content.*;
import com.android.mail.utils.*;
import com.google.common.collect.*;
import android.os.*;
import com.google.android.gm.provider.*;
import java.util.*;

final class c implements Runnable
{
    final /* synthetic */ b bok;
    
    c(final b bok) {
        this.bok = bok;
    }
    
    @Override
    public final void run() {
        synchronized (this.bok.boi) {
            if (this.bok.boh == null) {
                this.bok.boh = new k(this.bok.mContext, this.bok.mAccount, this.bok.aPP, this.bok.bdz);
            }
            E.c(b.mW, "starting attachment loader for conversation %d", this.bok.aPP);
            this.bok.boh.a(this.bok);
        }
    }
}
