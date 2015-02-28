package com.android.email.provider;

import android.content.res.*;
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
import android.content.*;
import android.os.*;

final class l implements ComponentCallbacks
{
    final /* synthetic */ Configuration Tl;
    final /* synthetic */ EmailProvider Tm;
    
    l(final EmailProvider tm, final Configuration tl) {
        this.Tm = tm;
        this.Tl = tl;
    }
    
    public final void onConfigurationChanged(final Configuration configuration) {
        if (Configuration.needNewResources(this.Tl.updateFrom(configuration), 4)) {
            EmailProvider.a(this.Tm);
        }
    }
    
    public final void onLowMemory() {
    }
}
