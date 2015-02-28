package com.google.android.gms.internal;

import android.content.*;
import com.google.android.gms.common.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class y extends f<z>
{
    public y(final Context context, final d d, final e e) {
        super(context, d, e, new String[0]);
    }
    
    @Override
    protected final String La() {
        return "com.google.android.gms.icing.INDEX_SERVICE";
    }
    
    @Override
    protected final String Lb() {
        return "com.google.android.gms.appdatasearch.internal.IAppDataSearch";
    }
    
    public final z QM() {
        try {
            return this.Le();
        }
        catch (IllegalStateException ex2) {
            final RemoteException ex = new RemoteException();
            ex.initCause((Throwable)ex2);
            throw ex;
        }
    }
    
    @Override
    protected final void a(final B b, final j j) {
        b.a(j, 6174000, this.getContext().getPackageName());
    }
}
