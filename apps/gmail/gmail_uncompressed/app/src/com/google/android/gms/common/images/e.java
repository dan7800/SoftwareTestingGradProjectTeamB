package com.google.android.gms.common.images;

import android.content.*;
import com.google.android.gms.common.internal.*;
import android.net.*;
import android.graphics.drawable.*;
import android.graphics.*;
import android.content.res.*;
import com.google.android.gms.internal.*;

public abstract class e
{
    final f bEF;
    protected int bEG;
    protected a bEH;
    protected int bEI;
    
    protected abstract void KS();
    
    final void a(final Context context, Bitmap i) {
        b.ab(i);
        if ((0x1 & this.bEI) != 0x0) {
            i = N.i(i);
        }
        new BitmapDrawable(context.getResources(), i);
        if (this.bEH != null) {
            final a beh = this.bEH;
            final Uri uri = this.bEF.uri;
        }
        this.KS();
    }
    
    final void a(final Context context, final O o) {
        if (this.bEG != 0) {
            final int beg = this.bEG;
            final Resources resources = context.getResources();
            if (this.bEI > 0) {
                final P p2 = new P(beg, this.bEI);
                if (((Q<P, Object>)o).get(p2) == null) {
                    Object drawable = resources.getDrawable(beg);
                    if ((0x1 & this.bEI) != 0x0) {
                        Bitmap bitmap;
                        if (drawable == null) {
                            bitmap = null;
                        }
                        else if (drawable instanceof BitmapDrawable) {
                            bitmap = ((BitmapDrawable)drawable).getBitmap();
                        }
                        else {
                            final Bitmap bitmap2 = Bitmap.createBitmap(((Drawable)drawable).getIntrinsicWidth(), ((Drawable)drawable).getIntrinsicHeight(), Bitmap$Config.ARGB_8888);
                            final Canvas canvas = new Canvas(bitmap2);
                            ((Drawable)drawable).setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                            ((Drawable)drawable).draw(canvas);
                            bitmap = bitmap2;
                        }
                        drawable = new BitmapDrawable(resources, N.i(bitmap));
                    }
                    o.put(p2, (Drawable)drawable);
                }
            }
            else {
                resources.getDrawable(beg);
            }
        }
        if (this.bEH != null) {
            final a beh = this.bEH;
            final Uri uri = this.bEF.uri;
        }
        this.KS();
    }
}
