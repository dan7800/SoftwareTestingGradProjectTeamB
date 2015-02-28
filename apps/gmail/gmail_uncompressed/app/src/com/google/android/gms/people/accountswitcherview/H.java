package com.google.android.gms.people.accountswitcherview;

import android.graphics.*;

final class h
{
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
