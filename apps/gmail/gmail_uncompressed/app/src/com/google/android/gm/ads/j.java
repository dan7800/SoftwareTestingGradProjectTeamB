package com.google.android.gm.ads;

import android.database.*;
import com.android.mail.c.*;
import android.net.*;
import com.android.mail.providers.*;
import android.content.*;
import android.util.*;
import android.graphics.*;
import android.content.res.*;
import android.view.animation.*;
import android.animation.*;
import android.os.*;
import com.android.mail.browse.*;
import com.google.android.gm.provider.*;
import com.android.mail.a.*;
import com.android.mail.utils.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.android.mail.ui.*;

final class j implements Runnable
{
    final /* synthetic */ AdTeaserView aZO;
    
    j(final AdTeaserView azo) {
        this.aZO = azo;
    }
    
    @Override
    public final void run() {
        final MailEngine w = MailEngine.W(this.aZO.getContext(), this.aZO.Nc.lw());
        final Cursor d = w.d(Gmail.bdS, this.aZO.aZp.bcd);
        if (d == null) {
            return;
        }
        try {
            if (d.moveToFirst()) {
                final Advertisement advertisement = new Advertisement(d);
                w.a(advertisement, !advertisement.azc);
            }
        }
        finally {
            if (d != null) {
                d.close();
            }
        }
    }
}
