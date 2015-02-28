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

final class m implements Runnable
{
    final /* synthetic */ g awi;
    final /* synthetic */ Spanned awp;
    final /* synthetic */ v awq;
    final /* synthetic */ boolean awr;
    final /* synthetic */ Bundle aws;
    
    m(final g awi, final Spanned awp, final v awq, final boolean awr, final Bundle aws) {
        this.awi = awi;
        this.awp = awp;
        this.awq = awq;
        this.awr = awr;
        this.aws = aws;
    }
    
    @Override
    public final void run() {
        g.a(this.awi, (Context)this.awi, this.awi.awc, this.awi.avx, this.awi.avS, this.awi.a(this.awi.avx, this.awi.avP, this.awi.getMode(), this.awp), this.awi.avP, this.awi.avE.sT(), this.awq, this.awr, this.awi.avC, this.awi.awb, this.aws);
    }
}
