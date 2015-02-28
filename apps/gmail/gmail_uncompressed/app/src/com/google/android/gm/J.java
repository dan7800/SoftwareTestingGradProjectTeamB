package com.google.android.gm;

import com.google.android.gm.persistence.*;
import android.content.*;
import com.google.common.collect.*;
import com.google.android.gms.auth.*;
import com.android.mail.utils.*;
import android.os.*;
import java.util.*;
import android.accounts.*;

final class j implements Runnable
{
    final /* synthetic */ i aWM;
    
    j(final i awm) {
        this.aWM = awm;
    }
    
    @Override
    public final void run() {
        this.aWM.onAccountsUpdated(AccountManager.get(this.aWM.mContext).getAccounts());
    }
}
