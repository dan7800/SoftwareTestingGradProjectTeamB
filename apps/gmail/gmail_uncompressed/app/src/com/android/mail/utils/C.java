package com.android.mail.utils;

import android.graphics.*;

public final class c
{
    private static final String TAG;
    
    static {
        TAG = D.AU();
    }
    
    public static Bitmap a(final Bitmap bitmap, final int n, final int n2) {
        final int width = bitmap.getWidth();
        final int height = bitmap.getHeight();
        if (n == width && n2 == height) {
            return bitmap;
        }
        final Matrix matrix = new Matrix();
        final float max = Math.max(n / width, n2 / height);
        matrix.setScale(max, max);
        final int round = Math.round(n / max);
        final int round2 = Math.round(n2 / max);
        return Bitmap.createBitmap(bitmap, Math.max(Math.min((int)(0.5f * width - round / 2), width - round), 0), Math.max(Math.min((int)(0.5f * height - round2 / 2), height - round2), 0), round, round2, matrix, true);
    }
    
    public static Bitmap f(final Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        final int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int n;
        int n2;
        if (width >= height) {
            n = width / 2 - height / 2;
            n2 = 0;
        }
        else {
            n2 = height / 2 - width / 2;
            height = width;
            n = 0;
        }
        final Bitmap bitmap2 = Bitmap.createBitmap(height, height, Bitmap$Config.ARGB_8888);
        final Canvas canvas = new Canvas(bitmap2);
        final Paint paint = new Paint(1);
        paint.setColor(-16777216);
        canvas.drawCircle((float)(height / 2), (float)(height / 2), (float)(height / 2), paint);
        paint.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff$Mode.SRC_IN));
        canvas.drawBitmap(bitmap, (float)n, (float)n2, paint);
        return bitmap2;
    }
}
