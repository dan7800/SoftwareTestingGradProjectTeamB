package com.android.mail.ui;

import java.util.*;
import com.android.mail.providers.*;

final class d implements Runnable
{
    final /* synthetic */ a aEa;
    final /* synthetic */ int aEb;
    final /* synthetic */ Collection aEc;
    final /* synthetic */ br aEd;
    final /* synthetic */ boolean aEe;
    
    d(final a aEa, final int aEb, final Collection aEc, final br aEd, final boolean aEe) {
        this.aEa = aEa;
        this.aEb = aEb;
        this.aEc = aEc;
        this.aEd = aEd;
        this.aEe = aEe;
    }
    
    @Override
    public final void run() {
        this.aEa.a(this.aEb, this.aEc, this.aEd, this.aEe);
    }
}
