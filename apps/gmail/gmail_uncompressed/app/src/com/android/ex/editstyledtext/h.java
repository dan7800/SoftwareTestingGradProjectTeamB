package com.android.ex.editstyledtext;

import android.text.style.*;
import android.net.*;
import android.content.*;
import android.graphics.drawable.*;
import android.util.*;
import java.io.*;
import android.graphics.*;

public final class h extends ImageSpan
{
    private Drawable Aj;
    Uri adl;
    public int afV;
    public int afW;
    private final int afX;
    private Context mContext;
    
    public final Drawable getDrawable() {
        if (this.Aj != null) {
            return this.Aj;
        }
        while (true) {
            Label_0263: {
                if (this.adl == null) {
                    break Label_0263;
                }
                System.gc();
                try {
                    final InputStream openInputStream = this.mContext.getContentResolver().openInputStream(this.adl);
                    final BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
                    bitmapFactory$Options.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(openInputStream, (Rect)null, bitmapFactory$Options);
                    openInputStream.close();
                    final InputStream openInputStream2 = this.mContext.getContentResolver().openInputStream(this.adl);
                    int afV = bitmapFactory$Options.outWidth;
                    int outHeight = bitmapFactory$Options.outHeight;
                    this.afV = afV;
                    this.afW = outHeight;
                    Bitmap bitmap;
                    if (bitmapFactory$Options.outWidth > this.afX) {
                        afV = this.afX;
                        outHeight = outHeight * this.afX / bitmapFactory$Options.outWidth;
                        bitmap = BitmapFactory.decodeStream(openInputStream2, new Rect(0, 0, afV, outHeight), (BitmapFactory$Options)null);
                    }
                    else {
                        bitmap = BitmapFactory.decodeStream(openInputStream2);
                    }
                    (this.Aj = (Drawable)new BitmapDrawable(this.mContext.getResources(), bitmap)).setBounds(0, 0, afV, outHeight);
                    openInputStream2.close();
                    return this.Aj;
                }
                catch (Exception ex) {
                    Log.e("EditStyledTextSpan", "Failed to loaded content " + this.adl, (Throwable)ex);
                    return null;
                }
                catch (OutOfMemoryError outOfMemoryError) {
                    Log.e("EditStyledTextSpan", "OutOfMemoryError");
                    return null;
                }
            }
            this.Aj = super.getDrawable();
            final Drawable aj = this.Aj;
            Log.d("EditStyledTextSpan", "--- rescaleBigImage:");
            if (this.afX >= 0) {
                int n = aj.getIntrinsicWidth();
                int intrinsicHeight = aj.getIntrinsicHeight();
                Log.d("EditStyledTextSpan", "--- rescaleBigImage:" + n + "," + intrinsicHeight + "," + this.afX);
                if (n > this.afX) {
                    n = this.afX;
                    intrinsicHeight = intrinsicHeight * this.afX / n;
                }
                aj.setBounds(0, 0, n, intrinsicHeight);
            }
            this.afV = this.Aj.getIntrinsicWidth();
            this.afW = this.Aj.getIntrinsicHeight();
            continue;
        }
    }
}
