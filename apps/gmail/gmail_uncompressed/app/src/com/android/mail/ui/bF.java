package com.android.mail.ui;

import android.app.*;
import android.view.*;
import android.os.*;
import com.android.mail.utils.*;
import android.animation.*;
import android.content.res.*;

final class bf extends ca
{
    final /* synthetic */ be aIE;
    
    bf(final be aie, final String s, final Fragment fragment) {
        this.aIE = aie;
        super(s, fragment);
    }
    
    @Override
    public final void xe() {
        this.aIE.aIA = System.currentTimeMillis();
        this.aIE.aIB.setVisibility(0);
    }
}
