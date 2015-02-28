package com.google.android.gm.persistence;

import com.google.android.gm.provider.*;
import android.content.*;
import com.android.mail.utils.*;

final class g implements aU
{
    private final Context mContext;
    
    g(final Context mContext) {
        this.mContext = mContext;
    }
    
    @Override
    public final boolean dK(final String s) {
        return !ag.aF(this.mContext) && b.DD().H(this.mContext, s);
    }
}
