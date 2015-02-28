package com.google.android.gm.ads;

import android.widget.*;
import android.view.*;
import android.util.*;
import com.google.android.gm.provider.*;
import android.content.res.*;
import java.util.*;
import com.android.emailcommon.mail.*;
import com.android.mail.*;
import com.android.mail.browse.*;
import com.google.android.gm.*;
import android.os.*;
import com.android.mail.compose.*;
import android.net.*;
import com.android.mail.utils.*;
import android.content.*;

final class d extends e
{
    final /* synthetic */ AdSenderHeaderView aZw;
    
    d(final AdSenderHeaderView aZw) {
        this.aZw = aZw;
    }
    
    @Override
    public final void run() {
        MailEngine.W(this.aZw.getContext(), this.aZw.aZq.oN().lw()).a(this.aZp, this.aZp.azc);
    }
}
