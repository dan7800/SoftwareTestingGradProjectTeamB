package com.android.mail.browse;

final class b implements Runnable
{
    final /* synthetic */ g alj;
    final /* synthetic */ a alk;
    
    b(final a alk, final g alj) {
        this.alk = alk;
        this.alj = alj;
    }
    
    @Override
    public final void run() {
        this.alj.dismiss();
    }
}
