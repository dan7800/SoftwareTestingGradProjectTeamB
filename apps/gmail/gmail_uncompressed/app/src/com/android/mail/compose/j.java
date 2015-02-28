package com.android.mail.compose;

import android.net.*;
import android.database.*;
import android.support.v7.app.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;
import android.graphics.*;
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

final class j extends AsyncTask<Void, Void, Message>
{
    private Intent awj;
    final /* synthetic */ g awk;
    final /* synthetic */ Uri awl;
    final /* synthetic */ String[] awm;
    final /* synthetic */ int awn;
    final /* synthetic */ String awo;
    
    j(final g awk, final Uri awl, final String[] awm, final int awn, final String awo) {
        this.awk = awk;
        this.awl = awl;
        this.awm = awm;
        this.awn = awn;
        this.awo = awo;
        this.awj = new Intent((Context)this.awk, (Class)EmptyService.class);
    }
    
    private Message sK() {
        final Cursor query = this.awk.getContentResolver().query(this.awl, this.awm, (String)null, (String[])null, (String)null, (CancellationSignal)null);
        Message message = null;
        if (query == null) {
            return message;
        }
        try {
            query.moveToFirst();
            message = new Message(query);
            return message;
        }
        finally {
            query.close();
        }
    }
    
    protected final void onPreExecute() {
        this.awk.startService(this.awj);
    }
}
