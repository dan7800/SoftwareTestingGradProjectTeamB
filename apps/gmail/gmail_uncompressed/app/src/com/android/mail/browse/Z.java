package com.android.mail.browse;

import android.app.*;
import android.content.*;
import android.text.*;
import com.android.mail.providers.*;
import android.net.*;
import java.util.*;
import com.android.mail.utils.*;
import android.os.*;
import android.database.*;

public final class z
{
    private final int Zr;
    final /* synthetic */ u amq;
    private final Conversation amr;
    private final ContentValues ams;
    private final be amt;
    private final boolean amu;
    private boolean amv;
    private final boolean amw;
    private final Uri eM;
    
    public z(final u amq, final int zr, final Conversation amr, final ContentValues ams, final be amt) {
        this.amq = amq;
        this.amv = true;
        this.Zr = zr;
        this.eM = amr.uri;
        this.amr = amr;
        this.ams = ams;
        this.amt = amt;
        this.amu = amr.azn;
        this.amw = amr.uF();
    }
    
    public z(final u u, final int n, final Conversation conversation, final be be) {
        this(u, n, conversation, null, be);
    }
}
