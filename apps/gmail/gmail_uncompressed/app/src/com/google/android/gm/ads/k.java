package com.google.android.gm.ads;

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

final class k extends e
{
    final /* synthetic */ AdTeaserView aZO;
    
    k(final AdTeaserView azo) {
        this.aZO = azo;
    }
    
    @Override
    public final void run() {
        MailEngine.W(this.aZO.getContext(), this.aZO.Nc.lw()).f(this.aZp);
    }
}
