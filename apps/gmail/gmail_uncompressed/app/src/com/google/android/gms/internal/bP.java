package com.google.android.gms.internal;

import android.net.*;
import android.os.*;
import android.content.*;

final class bp extends bh
{
    final /* synthetic */ Uri bVL;
    final /* synthetic */ Context bVN;
    final /* synthetic */ bg bVO;
    
    bp(final Context bvn, final Uri bvl, final bg bvo) {
        this.bVN = bvn;
        this.bVL = bvl;
        this.bVO = bvo;
    }
    
    public final void a(final int n, final Bundle bundle, final int n2, final Intent intent) {
        this.bVN.revokeUriPermission(this.bVL, 1);
        this.bVO.a(n, bundle, n2, intent);
    }
}
