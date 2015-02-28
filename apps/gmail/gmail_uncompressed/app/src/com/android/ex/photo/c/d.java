package com.android.ex.photo.c;

import android.support.v4.content.*;
import android.net.*;
import android.content.*;
import com.android.ex.photo.d.*;
import android.database.*;

public final class d extends android.support.v4.content.d
{
    private final Uri aix;
    private final String[] eN;
    
    public d(final Context context, final Uri aix, String[] lm) {
        super(context);
        this.aix = aix;
        if (lm == null) {
            lm = b.Lm;
        }
        this.eN = lm;
    }
    
    @Override
    public final Cursor loadInBackground() {
        this.setUri(this.aix.buildUpon().appendQueryParameter("contentType", "image/").build());
        this.setProjection(this.eN);
        return super.loadInBackground();
    }
}
