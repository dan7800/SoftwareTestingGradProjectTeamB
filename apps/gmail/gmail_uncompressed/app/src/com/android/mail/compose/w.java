package com.android.mail.compose;

import android.database.*;
import android.support.v7.app.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;
import android.graphics.*;
import android.net.*;
import com.android.b.*;
import android.text.util.*;
import android.content.res.*;
import com.android.emailcommon.mail.*;
import android.view.inputmethod.*;
import java.net.*;
import android.annotation.*;
import java.util.*;
import com.google.common.collect.*;
import java.io.*;
import android.os.*;
import android.support.v4.app.*;
import com.android.ex.chips.*;
import android.widget.*;
import android.text.*;
import com.android.mail.ui.*;
import android.app.*;
import android.content.*;
import android.view.*;
import com.android.mail.providers.*;
import com.google.android.mail.common.html.parser.*;
import com.android.mail.utils.*;

public final class w
{
    final ContentValues ams;
    final String awA;
    public final boolean awB;
    private final Bundle awC;
    final int awc;
    
    public w(final Context context, final int awc, final ContentValues ams, final String awA, final List<Attachment> list, final Bundle awC, final boolean awB) {
        this.awc = awc;
        this.ams = ams;
        this.awA = awA;
        this.awB = awB;
        if (awC != null) {
            this.awC = awC;
            return;
        }
        this.awC = a(context, list);
    }
    
    final Bundle sN() {
        return this.awC;
    }
}
