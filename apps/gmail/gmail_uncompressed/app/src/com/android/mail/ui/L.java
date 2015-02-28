package com.android.mail.ui;

final class l implements Runnable
{
    final /* synthetic */ a aEa;
    final /* synthetic */ String aax;
    
    l(final a aEa, final String aax) {
        this.aEa = aEa;
        this.aax = aax;
    }
    
    @Override
    public final void run() {
        MailActivity.cp(this.aax);
    }
}
