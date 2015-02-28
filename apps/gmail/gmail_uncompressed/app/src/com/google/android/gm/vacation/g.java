package com.google.android.gm.vacation;

import com.google.android.gm.provider.*;
import android.text.format.*;
import android.content.*;
import android.text.*;
import android.widget.*;
import android.os.*;
import com.android.mail.utils.*;
import android.support.v7.app.*;
import android.content.res.*;
import android.view.*;
import android.app.*;

final class g implements Runnable
{
    final /* synthetic */ VacationResponderActivity brL;
    
    g(final VacationResponderActivity brL) {
        this.brL = brL;
    }
    
    @Override
    public final void run() {
        this.brL.biv.b(this.brL.brJ);
        MailEngine.eO(this.brL.mAccount).FR();
    }
}
