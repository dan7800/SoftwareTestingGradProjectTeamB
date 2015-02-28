package com.google.android.gms.people.accountswitcherview;

import android.content.*;
import com.google.android.gms.common.api.*;
import android.graphics.*;
import android.widget.*;

public final class l extends o
{
    private static Bitmap chp;
    
    public l(final Context context, final n n) {
        super(context, n, false);
    }
    
    protected static Bitmap cl(final Context context) {
        if (l.chp == null) {
            l.chp = BitmapFactory.decodeResource(context.getResources(), A.cid);
        }
        return l.chp;
    }
    
    public final void b(final ImageView imageView, final String s, final String s2, final int n) {
        final m m = new m(this, imageView, s, s2, n);
        cl(super.mContext);
        this.a(m);
    }
}
