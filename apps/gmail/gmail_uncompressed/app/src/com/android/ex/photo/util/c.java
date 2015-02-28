package com.android.ex.photo.util;

import android.content.*;
import android.net.*;
import android.util.*;
import java.util.regex.*;
import android.os.*;
import com.android.ex.photo.*;
import com.android.ex.photo.c.*;
import android.graphics.*;
import java.io.*;

final class c extends b
{
    private byte[] Rb;
    
    public c(final ContentResolver contentResolver, final Uri uri) {
        super(contentResolver, uri);
    }
    
    private static byte[] i(final Uri uri) {
        final String schemeSpecificPart = uri.getSchemeSpecificPart();
        try {
            if (schemeSpecificPart.startsWith("base64,")) {
                return Base64.decode(schemeSpecificPart.substring(7), 8);
            }
            if (ImageUtils.aiz.matcher(schemeSpecificPart).matches()) {
                return Base64.decode(schemeSpecificPart.substring(7 + schemeSpecificPart.indexOf("base64,")), 0);
            }
        }
        catch (IllegalArgumentException ex) {
            Log.e("ImageUtils", "Mailformed data URI: " + ex);
        }
        return null;
    }
    
    @Override
    public final InputStream fW() {
        if (this.Rb == null) {
            this.Rb = i(this.eM);
            if (this.Rb == null) {
                return super.fW();
            }
        }
        return new ByteArrayInputStream(this.Rb);
    }
}
