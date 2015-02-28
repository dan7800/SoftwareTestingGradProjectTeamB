package com.google.android.gms.people;

import android.os.*;
import android.graphics.*;
import com.google.android.gms.common.a.*;
import java.io.*;

public final class z
{
    public static Bitmap c(final ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            return null;
        }
        final FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptor.getFileDescriptor());
        try {
            return BitmapFactory.decodeStream((InputStream)fileInputStream);
        }
        finally {
            a.b(fileInputStream);
        }
    }
}
