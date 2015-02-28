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

final class j implements DialogInterface$OnClickListener
{
    final /* synthetic */ a aEa;
    final /* synthetic */ Collection aEc;
    final /* synthetic */ boolean aEe;
    final /* synthetic */ br aEh;
    final /* synthetic */ int awn;
    
    j(final a aEa, final int awn, final Collection aEc, final br aEh, final boolean aEe) {
        this.aEa = aEa;
        this.awn = awn;
        this.aEc = aEc;
        this.aEh = aEh;
        this.aEe = aEe;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.aEa.a(this.awn, this.aEc, this.aEh, this.aEe);
        a.p(this.aEa);
    }
}
