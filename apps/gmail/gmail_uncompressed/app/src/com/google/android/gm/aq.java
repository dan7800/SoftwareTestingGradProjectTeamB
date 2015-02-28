package com.google.android.gm;

import android.database.*;
import android.app.*;
import com.google.android.gm.provider.*;
import android.content.*;
import android.os.*;

final class aq extends DataSetObserver
{
    final /* synthetic */ ap aYT;
    
    aq(final ap ayt) {
        this.aYT = ayt;
    }
    
    public final void onChanged() {
        if (ay.bi((Context)this.aYT.aYS)) {
            ao.c(this.aYT.aYS);
        }
        else if (this.aYT.aYS.aYR.eB("^i") != null) {
            ao.d(this.aYT.aYS);
        }
    }
}
