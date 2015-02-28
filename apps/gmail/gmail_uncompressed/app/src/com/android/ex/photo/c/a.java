package com.android.ex.photo.c;

import android.support.v4.content.*;
import android.graphics.*;
import android.net.*;
import com.android.ex.photo.*;
import com.android.ex.photo.util.*;
import android.content.*;

public final class a extends android.support.v4.content.a<c> implements b
{
    private String aiv;
    private Bitmap fN;
    
    public a(final Context context, final String aiv) {
        super(context);
        this.aiv = aiv;
    }
    
    private void a(final c c) {
        Bitmap afe;
        if (c != null) {
            afe = c.afe;
        }
        else {
            afe = null;
        }
        if (this.isReset()) {
            if (afe != null) {
                d(afe);
            }
        }
        else {
            final Bitmap fn = this.fN;
            this.fN = afe;
            if (this.isStarted()) {
                super.deliverResult(c);
            }
            if (fn != null && fn != afe && !fn.isRecycled()) {
                d(fn);
            }
        }
    }
    
    private static void d(final Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
    }
    
    private c og() {
        c a = new c();
        final Context context = this.getContext();
        if (context == null || this.aiv == null) {
            return a;
        }
        final ContentResolver contentResolver = context.getContentResolver();
        try {
            a = ImageUtils.a(contentResolver, Uri.parse(this.aiv), k.agJ);
            if (a.afe != null) {
                a.afe.setDensity(160);
            }
            return a;
        }
        catch (UnsupportedOperationException ex) {
            a.status = 1;
            return a;
        }
    }
    
    @Override
    public final void aV(final String aiv) {
        this.aiv = aiv;
    }
    
    @Override
    protected final void onReset() {
        super.onReset();
        this.cancelLoad();
        if (this.fN != null) {
            d(this.fN);
            this.fN = null;
        }
    }
    
    @Override
    protected final void onStartLoading() {
        if (this.fN != null) {
            final c c = new c();
            c.status = 0;
            c.afe = this.fN;
            this.a(c);
        }
        if (this.takeContentChanged() || this.fN == null) {
            this.forceLoad();
        }
    }
    
    @Override
    protected final void onStopLoading() {
        this.cancelLoad();
    }
}
