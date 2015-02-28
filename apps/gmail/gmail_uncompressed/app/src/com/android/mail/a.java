package com.android.mail;

import android.net.*;
import android.graphics.*;

public final class a
{
    public final Uri ajO;
    public final byte[] ajP;
    public final Bitmap ajQ;
    
    public a(final Uri uri) {
        this(uri, null, null);
    }
    
    public a(final Uri uri, final Bitmap bitmap) {
        this(uri, null, bitmap);
    }
    
    public a(final Uri uri, final byte[] array) {
        this(uri, array, null);
    }
    
    private a(final Uri ajO, final byte[] ajP, final Bitmap ajQ) {
        this.ajO = ajO;
        this.ajP = ajP;
        this.ajQ = ajQ;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder("{photo=");
        Object o;
        if (this.ajQ != null) {
            o = this.ajQ;
        }
        else {
            o = this.ajP;
        }
        return sb.append(o).append("}").toString();
    }
}
