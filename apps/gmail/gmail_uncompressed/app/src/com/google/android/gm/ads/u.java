package com.google.android.gm.ads;

import android.net.*;
import com.google.android.gm.*;
import com.google.android.gm.provider.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import com.android.mail.browse.*;
import android.view.*;
import android.os.*;
import com.android.mail.ui.*;
import android.app.*;

final class u implements Runnable
{
    final /* synthetic */ s aZX;
    private Uri eM;
    
    private u(final s azx) {
        this.aZX = azx;
    }
    
    @Override
    public final void run() {
        final MailEngine w = MailEngine.W(this.aZX.getContext(), this.aZX.Nc.lw());
        if (this.eM != null && ay.g(this.aZX.getContext(), this.eM)) {
            w.b(this.aZX.aZl, this.eM.toString());
            return;
        }
        w.a(this.aZX.aZl, this.eM.toString());
    }
    
    public final void setUri(final Uri em) {
        this.eM = em;
    }
}
