package com.android.email.mail.store;

final class d
{
    public boolean QL;
    final /* synthetic */ Pop3Store QM;
    
    d(final Pop3Store qm) {
        this.QM = qm;
    }
    
    @Override
    public final String toString() {
        return String.format("STLS %b", this.QL);
    }
}
