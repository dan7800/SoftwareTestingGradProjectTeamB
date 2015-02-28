package com.android.ex.photo.util;

import android.content.*;
import android.net.*;
import java.io.*;

class b implements d
{
    protected final ContentResolver Hb;
    protected final Uri eM;
    
    public b(final ContentResolver hb, final Uri em) {
        this.Hb = hb;
        this.eM = em;
    }
    
    @Override
    public InputStream fW() {
        return this.Hb.openInputStream(this.eM);
    }
}
