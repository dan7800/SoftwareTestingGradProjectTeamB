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

final class s implements Runnable
{
    final /* synthetic */ a aEa;
    final /* synthetic */ Collection aEm;
    final /* synthetic */ boolean aEn;
    final /* synthetic */ boolean aEp;
    final /* synthetic */ boolean aEq;
    
    s(final a aEa, final Collection aEm, final boolean aEn, final boolean aEp, final boolean aEq) {
        this.aEa = aEa;
        this.aEm = aEm;
        this.aEn = aEn;
        this.aEp = aEp;
        this.aEq = aEq;
    }
    
    @Override
    public final void run() {
        this.aEa.a(this.aEm, this.aEn, this.aEp, this.aEq);
    }
}
