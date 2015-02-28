package com.android.datetimepicker;

import android.database.*;
import android.content.*;
import android.provider.*;
import android.os.*;

final class b extends ContentObserver
{
    final /* synthetic */ a Hg;
    
    b(final a hg) {
        this.Hg = hg;
        super((Handler)null);
    }
    
    public final void onChange(final boolean b) {
        this.Hg.He = i(this.Hg.mContext);
    }
}
