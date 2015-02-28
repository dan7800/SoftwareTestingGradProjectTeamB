package com.android.datetimepicker.date;

final class r implements Runnable
{
    final /* synthetic */ int ID;
    final /* synthetic */ int JJ;
    final /* synthetic */ q JK;
    
    r(final q jk, final int id, final int jj) {
        this.JK = jk;
        this.ID = id;
        this.JJ = jj;
    }
    
    @Override
    public final void run() {
        this.JK.setSelectionFromTop(this.ID, this.JJ);
        this.JK.requestLayout();
    }
}
