package com.android.email.service;

import com.android.emailcommon.service.*;
import android.app.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.a.*;
import com.android.email.provider.*;
import com.android.emailcommon.mail.*;
import android.text.*;
import com.android.emailcommon.b.*;
import android.database.*;
import android.net.*;
import com.android.emailcommon.provider.*;
import java.util.*;
import android.content.*;
import android.os.*;

final class q extends l
{
    final /* synthetic */ ImapService Vn;
    
    q(final ImapService vn) {
        this.Vn = vn;
    }
    
    @Override
    public final int a(final long n, final SearchParams searchParams, final long n2) {
        try {
            return a(this.Vn.getApplicationContext(), n, searchParams, n2);
        }
        catch (MessagingException ex) {
            return 0;
        }
    }
}
