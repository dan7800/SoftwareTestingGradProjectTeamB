package com.android.mail.utils;

import com.android.mail.f.*;
import android.content.*;
import android.text.style.*;
import java.util.*;
import com.android.emailcommon.mail.*;
import android.text.*;
import android.os.*;
import android.database.*;
import android.webkit.*;
import android.annotation.*;
import android.content.pm.*;
import android.content.res.*;
import android.net.*;
import com.google.android.mail.common.html.parser.*;
import com.android.mail.ui.*;
import com.android.mail.compose.*;
import org.json.*;
import com.android.mail.providers.*;
import android.app.*;
import java.io.*;
import android.graphics.*;
import android.view.*;

final class ah implements ComponentCallbacks
{
    public final void onConfigurationChanged(final Configuration configuration) {
        synchronized (ag.aQM) {
            ag.aQO = -1;
            ag.aQP = null;
            ag.aQQ = null;
            ag.aQR = null;
            ag.aQS = -1;
        }
    }
    
    public final void onLowMemory() {
    }
}
