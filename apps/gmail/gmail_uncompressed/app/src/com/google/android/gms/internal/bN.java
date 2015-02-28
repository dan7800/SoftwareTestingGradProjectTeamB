package com.google.android.gms.internal;

import android.net.*;
import android.content.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.e.*;
import android.os.*;

final class bn extends bq
{
    final /* synthetic */ Uri bVL;
    final /* synthetic */ bm bVM;
    
    bn(final bm bvm, final Uri bvl) {
        this.bVM = bvm;
        this.bVL = bvl;
        super((byte)0);
    }
    
    @Override
    protected final void a(final Context context, final bj bj) {
        final br br = new br((m<d>)this);
        final Uri bvl = this.bVL;
        context.grantUriPermission("com.google.android.gms", bvl, 1);
        final bp bp = new bp(context, bvl, br);
        try {
            bj.a(bp, bvl, null, true);
        }
        catch (RemoteException ex) {
            context.revokeUriPermission(bvl, 1);
            throw ex;
        }
        catch (RuntimeException ex2) {
            context.revokeUriPermission(bvl, 1);
            throw ex2;
        }
    }
}
