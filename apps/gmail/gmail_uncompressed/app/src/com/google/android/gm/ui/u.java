package com.google.android.gm.ui;

import com.android.mail.a.*;
import com.google.android.gms.people.model.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.view.*;
import android.graphics.drawable.*;
import android.annotation.*;
import android.content.*;
import android.os.*;
import android.support.v4.widget.*;
import com.android.mail.i.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;
import com.android.mail.ui.*;
import java.util.*;
import com.google.android.gms.people.accountswitcherview.*;
import com.android.mail.providers.*;

final class u implements View$OnClickListener
{
    final d bqq;
    final /* synthetic */ t bqr;
    
    u(final t bqr, final d bqq) {
        this.bqr = bqr;
        this.bqq = bqq;
    }
    
    public final void onClick(final View view) {
        this.bqr.bql.b(this.bqq);
        a.oq().a("account_switcher", "recents", "mini_drawer_click", 0L);
    }
}
