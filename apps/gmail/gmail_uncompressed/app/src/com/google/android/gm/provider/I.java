package com.google.android.gm.provider;

import com.google.android.gm.provider.uiprovider.*;
import android.accounts.*;
import android.database.sqlite.*;
import com.google.common.collect.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import android.text.*;
import android.net.*;
import android.database.*;
import android.app.*;
import java.io.*;
import android.os.*;
import android.content.*;
import java.util.*;

final class i implements Runnable
{
    final /* synthetic */ long aav;
    final /* synthetic */ g bcP;
    final /* synthetic */ Long[] bcQ;
    final /* synthetic */ int bcR;
    final /* synthetic */ long bcS;
    final /* synthetic */ GmailAttachment bcT;
    final /* synthetic */ int bcU;
    final /* synthetic */ boolean bcV;
    final /* synthetic */ String[] bcW;
    
    i(final g bcP, final Long[] bcQ, final int bcR, final long bcS, final long aav, final GmailAttachment bcT, final int bcU, final boolean bcV, final String[] bcW) {
        this.bcP = bcP;
        this.bcQ = bcQ;
        this.bcR = bcR;
        this.bcS = bcS;
        this.aav = aav;
        this.bcT = bcT;
        this.bcU = bcU;
        this.bcV = bcV;
        this.bcW = bcW;
    }
    
    @Override
    public final void run() {
        g.a(this.bcP, this.bcQ[this.bcR], this.bcS, this.aav, this.bcT.partId, this.bcU, this.bcV, this.bcT.getName(), this.bcW[1 - this.bcR], this.bcT.getContentType(), this.bcT.size);
        this.bcP.ac(this.bcS);
    }
}
