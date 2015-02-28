package com.android.ex.photo.c;

import android.graphics.*;
import android.content.res.*;
import android.graphics.drawable.*;

public final class c
{
    public Bitmap afe;
    public Drawable aiw;
    public int status;
    
    public final Drawable a(final Resources resources) {
        if (resources == null) {
            throw new IllegalArgumentException("resources can not be null!");
        }
        if (this.aiw != null) {
            return this.aiw;
        }
        if (this.afe == null) {
            return null;
        }
        return (Drawable)new BitmapDrawable(resources, this.afe);
    }
}
