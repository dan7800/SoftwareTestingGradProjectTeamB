package com.google.android.gm.browse;

import com.android.mail.ui.*;
import android.app.*;

final class g extends ca
{
    final /* synthetic */ f bac;
    
    g(final f bac, final String s, final Fragment fragment) {
        this.bac = bac;
        super(s, fragment);
    }
    
    @Override
    public final void xe() {
        this.bac.dismiss();
    }
}
