package com.android.email.provider;

import java.util.regex.*;
import android.appwidget.*;
import android.text.*;
import android.accounts.*;
import com.android.email.service.*;
import android.content.pm.*;
import com.android.emailcommon.service.*;
import com.android.emailcommon.mail.*;
import java.util.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import android.net.*;
import android.database.*;
import com.google.common.collect.*;
import com.android.email.activity.setup.*;
import com.android.email.*;
import com.android.emailcommon.b.*;
import java.io.*;
import com.android.emailcommon.provider.*;
import android.util.*;
import android.database.sqlite.*;
import android.content.res.*;
import android.content.*;
import android.os.*;

final class n implements Handler$Callback
{
    final /* synthetic */ EmailProvider Tm;
    
    n(final EmailProvider tm) {
        this.Tm = tm;
    }
    
    public final boolean handleMessage(final Message message) {
        final String s = (String)message.obj;
        E.c(EmailProvider.TAG, "Notifying conversation Uri %s twice", s);
        this.Tm.b(EmailProvider.Sz, s);
        return true;
    }
}
