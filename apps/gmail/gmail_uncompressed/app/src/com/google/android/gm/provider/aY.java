package com.google.android.gm.provider;

final class ay implements aL
{
    final /* synthetic */ MailEngine aXM;
    final /* synthetic */ ax bjN;
    
    ay(final ax bjN, final MailEngine axm) {
        this.bjN = bjN;
        this.aXM = axm;
    }
    
    @Override
    public final void GF() {
        this.bjN.bjL.post((Runnable)new az(this));
    }
}
