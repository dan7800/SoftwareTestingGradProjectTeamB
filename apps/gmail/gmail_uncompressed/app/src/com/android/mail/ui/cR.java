package com.android.mail.ui;

import android.database.*;
import android.support.v7.app.*;
import android.view.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.mail.providers.*;
import android.content.*;
import android.widget.*;
import java.util.*;
import com.android.mail.a.*;
import android.app.*;

final class cr implements Runnable
{
    final /* synthetic */ MailboxSelectionActivity aLp;
    final /* synthetic */ Cursor aLq;
    
    cr(final MailboxSelectionActivity aLp, final Cursor aLq) {
        this.aLp = aLp;
        this.aLq = aLq;
    }
    
    @Override
    public final void run() {
        this.aLp.l(this.aLq);
    }
}
