package com.android.mail.ui;

import android.net.*;
import android.support.v4.widget.*;
import android.content.res.*;
import android.content.*;
import com.google.common.base.*;
import com.android.mail.*;
import android.database.*;
import java.util.*;
import android.app.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import java.io.*;
import android.os.*;
import android.widget.*;
import com.android.mail.browse.*;

final class p implements B
{
    final /* synthetic */ a aEa;
    final /* synthetic */ Conversation aEj;
    final /* synthetic */ Set aEk;
    final /* synthetic */ byte[] aEl;
    
    p(final a aEa, final Conversation aEj, final Set aEk, final byte[] aEl) {
        this.aEa = aEa;
        this.aEj = aEj;
        this.aEk = aEk;
        this.aEl = aEl;
    }
    
    @Override
    public final void wI() {
        this.aEa.b(this.aEj, this.aEk, this.aEl);
    }
}
