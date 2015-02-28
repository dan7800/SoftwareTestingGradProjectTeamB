package com.google.android.gm.ui;

import android.support.v4.widget.*;
import com.google.android.gms.people.model.*;
import com.android.mail.a.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.view.*;
import android.graphics.drawable.*;
import android.annotation.*;
import android.content.*;
import android.os.*;
import com.android.mail.i.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;
import com.android.mail.ui.*;
import java.util.*;
import com.google.android.gms.people.accountswitcherview.*;
import com.android.mail.providers.*;

final class s implements k
{
    final /* synthetic */ GmailDrawerFragment bql;
    
    private s(final GmailDrawerFragment bql) {
        this.bql = bql;
    }
    
    @Override
    public final void P(final int n) {
    }
    
    @Override
    public final void Q(final View view) {
    }
    
    @Override
    public final void R(final View view) {
        if (this.bql.bqf != null && this.bql.bqf.getNavigationMode() != 0) {
            this.bql.bqf.setNavigationMode(0);
            GmailDrawerFragment.a(this.bql, this.bql.bqf);
        }
    }
    
    @Override
    public final void i(final View view, final float n) {
    }
}
