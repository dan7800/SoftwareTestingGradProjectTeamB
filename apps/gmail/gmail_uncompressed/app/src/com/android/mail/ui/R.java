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

final class r implements B
{
    final /* synthetic */ a aEa;
    final /* synthetic */ Collection aEm;
    final /* synthetic */ boolean aEn;
    final /* synthetic */ boolean aEo;
    
    r(final a aEa, final Collection aEm, final boolean aEn, final boolean aEo) {
        this.aEa = aEa;
        this.aEm = aEm;
        this.aEn = aEn;
        this.aEo = aEo;
    }
    
    @Override
    public final void wI() {
        this.aEa.a(this.aEm, this.aEn, this.aEo, true);
    }
}
