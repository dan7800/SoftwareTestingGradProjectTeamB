package com.android.mail.ui;

import android.app.*;
import android.view.*;
import android.os.*;
import com.android.mail.utils.*;
import android.animation.*;
import android.content.res.*;

final class bg extends ca
{
    final /* synthetic */ be aIE;
    final /* synthetic */ Runnable aIF;
    
    bg(final be aie, final String s, final Fragment fragment, final Runnable aif) {
        this.aIE = aie;
        this.aIF = aif;
        super(s, fragment);
    }
    
    @Override
    public final void xe() {
        this.aIE.d(this.aIF);
    }
}
