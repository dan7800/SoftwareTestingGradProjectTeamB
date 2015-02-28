package com.android.emailcommon.service;

import android.content.*;
import com.android.emailcommon.*;
import java.io.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.provider.*;

final class b implements L
{
    final /* synthetic */ long To;
    final /* synthetic */ u aan;
    final /* synthetic */ long aao;
    final /* synthetic */ boolean aap;
    final /* synthetic */ a aaq;
    
    b(final a aaq, final u aan, final long to, final long aao, final boolean aap) {
        this.aaq = aaq;
        this.aan = aan;
        this.To = to;
        this.aao = aao;
        this.aap = aap;
    }
    
    @Override
    public final void run() {
        try {
            this.aaq.aal.a(this.aan, this.To, this.aao, this.aap);
        }
        catch (RemoteException ex) {
            try {
                if (this.aan != null) {
                    this.aan.a(-1L, this.aao, 21, 0);
                }
            }
            catch (RemoteException ex2) {}
        }
    }
}
