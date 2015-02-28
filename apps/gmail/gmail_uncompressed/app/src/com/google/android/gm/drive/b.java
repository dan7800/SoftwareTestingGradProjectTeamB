package com.google.android.gm.drive;

import com.android.mail.ui.*;
import com.google.android.gm.*;
import java.util.*;
import android.os.*;
import android.app.*;
import android.content.*;

final class b extends ca
{
    final /* synthetic */ d bak;
    final /* synthetic */ a bal;
    
    b(final a bal, final String s, final Fragment fragment, final d bak) {
        this.bal = bal;
        this.bak = bak;
        super(s, fragment);
    }
    
    @Override
    public final void xe() {
        this.bal.dismiss();
        final ComposeActivityGmail composeActivityGmail = (ComposeActivityGmail)this.bal.getActivity();
        if (composeActivityGmail == null) {
            return;
        }
        if (this.bak == null) {
            composeActivityGmail.bP(this.bal.awy);
            return;
        }
        if ("NONE_FIXABLE".equals(this.bak.ban)) {
            composeActivityGmail.n(this.bal.baj, this.bal.awy);
            return;
        }
        composeActivityGmail.a(null, this.bak.bao, this.bal.baj, this.bal.awy);
    }
}
