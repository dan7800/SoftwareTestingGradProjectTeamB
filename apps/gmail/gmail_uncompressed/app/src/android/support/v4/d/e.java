package android.support.v4.d;

import android.content.*;
import android.net.*;
import android.graphics.*;
import android.util.*;
import java.io.*;

final class e
{
    int fG;
    int fH;
    int fI;
    BitmapFactory$Options fJ;
    private final Object fK;
    final Context mContext;
    
    e(final Context mContext) {
        this.fJ = null;
        this.fK = new Object();
        this.fG = 2;
        this.fH = 2;
        this.fI = 1;
        this.mContext = mContext;
    }
    
    private Bitmap a(final Uri uri, final int n) {
        int n2 = 1;
        if (uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to getScaledBitmap");
        }
        final BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
        bitmapFactory$Options.inJustDecodeBounds = (n2 != 0);
        this.a(uri, bitmapFactory$Options);
        final int outWidth = bitmapFactory$Options.outWidth;
        final int outHeight = bitmapFactory$Options.outHeight;
        if (outWidth > 0 && outHeight > 0) {
            for (int i = Math.max(outWidth, outHeight); i > 3500; i >>>= 1, n2 <<= 1) {}
            if (n2 > 0 && Math.min(outWidth, outHeight) / n2 > 0) {
                final Object fk = this.fK;
                final BitmapFactory$Options fj;
                synchronized (fk) {
                    this.fJ = new BitmapFactory$Options();
                    this.fJ.inMutable = true;
                    this.fJ.inSampleSize = n2;
                    fj = this.fJ;
                    // monitorexit(fk)
                    final e e = this;
                    final Uri uri2 = uri;
                    final BitmapFactory$Options bitmapFactory$Options2 = fj;
                    final Bitmap bitmap = e.a(uri2, bitmapFactory$Options2);
                    final e e2 = this;
                    final Object o = e2.fK;
                    final Object o3;
                    final Object o2 = o3 = o;
                    synchronized (o3) {
                        final e e3 = this;
                        final BitmapFactory$Options bitmapFactory$Options3 = null;
                        e3.fJ = bitmapFactory$Options3;
                        return bitmap;
                    }
                }
                try {
                    final e e = this;
                    final Uri uri2 = uri;
                    final BitmapFactory$Options bitmapFactory$Options2 = fj;
                    final Bitmap bitmap = e.a(uri2, bitmapFactory$Options2);
                    final e e2 = this;
                    final Object o = e2.fK;
                    final Object o3;
                    final Object o2 = o3 = o;
                    // monitorenter(o3)
                    final e e3 = this;
                    final BitmapFactory$Options bitmapFactory$Options3 = null;
                    e3.fJ = bitmapFactory$Options3;
                    return bitmap;
                }
                finally {
                    synchronized (this.fK) {
                        this.fJ = null;
                    }
                    // monitorexit(this.fK)
                }
            }
        }
        return null;
    }
    
    private Bitmap a(final Uri uri, final BitmapFactory$Options bitmapFactory$Options) {
        InputStream openInputStream = null;
        if (uri == null || this.mContext == null) {
            throw new IllegalArgumentException("bad argument to loadBitmap");
        }
        try {
            openInputStream = this.mContext.getContentResolver().openInputStream(uri);
            final Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, (Rect)null, bitmapFactory$Options);
            if (openInputStream == null) {
                return decodeStream;
            }
            try {
                openInputStream.close();
                return decodeStream;
            }
            catch (IOException ex) {
                Log.w("PrintHelperKitkat", "close fail ", (Throwable)ex);
                return decodeStream;
            }
        }
        finally {
            Label_0079: {
                if (openInputStream == null) {
                    break Label_0079;
                }
                try {
                    openInputStream.close();
                }
                catch (IOException ex2) {
                    Log.w("PrintHelperKitkat", "close fail ", (Throwable)ex2);
                }
            }
        }
    }
}
