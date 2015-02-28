package com.android.datetimepicker.date;

final class g implements Runnable
{
    final /* synthetic */ int ID;
    final /* synthetic */ f IE;
    
    g(final f ie, final int id) {
        this.IE = ie;
        this.ID = id;
    }
    
    @Override
    public final void run() {
        this.IE.setSelection(this.ID);
    }
}
