package com.google.android.gm.provider;

import com.google.android.gm.provider.uiprovider.*;
import java.util.regex.*;
import com.android.mail.utils.*;
import com.google.android.gm.persistence.*;
import com.google.android.gm.*;
import com.google.android.gsf.*;
import java.util.zip.*;
import android.database.*;
import android.util.*;
import android.text.*;
import android.net.http.*;
import org.apache.http.util.*;
import android.os.*;
import org.apache.http.*;
import android.content.*;
import java.util.*;
import com.google.android.common.http.*;
import java.io.*;
import org.apache.http.entity.*;
import org.apache.http.client.methods.*;
import com.google.common.collect.*;

final class bh implements i
{
    InputStream aiF;
    final /* synthetic */ MailSync blx;
    private final GmailAttachment bly;
    long blz;
    private final long mMessageId;
    
    public bh(final MailSync blx, final long mMessageId, final GmailAttachment bly) {
        this.blx = blx;
        this.mMessageId = mMessageId;
        this.bly = bly;
        this.aiF = this.HC();
        this.blz = this.aiF.available();
    }
    
    private InputStream HC() {
        final ba a = this.blx.blr;
        final long mMessageId = this.mMessageId;
        return a.b(this.bly);
    }
    
    @Override
    public final InputStream fW() {
        if (this.aiF != null) {
            final InputStream aiF = this.aiF;
            this.aiF = null;
            return aiF;
        }
        return this.HC();
    }
    
    @Override
    public final String getFileName() {
        return this.bly.getName();
    }
    
    @Override
    public final long getLength() {
        return this.blz;
    }
}
