package com.google.android.gm.ads;

import com.google.android.gm.provider.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import com.android.mail.browse.*;
import android.view.*;
import android.os.*;
import com.android.mail.ui.*;
import android.app.*;

final class t extends e
{
    final /* synthetic */ s aZX;
    
    t(final s azx) {
        this.aZX = azx;
    }
    
    @Override
    public final void run() {
        final MailEngine w = MailEngine.W(this.aZX.getContext(), this.aZX.Nc.lw());
        this.aZp.bcs = 1;
        w.g(this.aZp);
    }
}
