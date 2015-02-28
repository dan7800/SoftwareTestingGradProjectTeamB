package com.google.android.gm.photo;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.graphics.*;
import android.view.*;

public class PhotoSphereButton extends ImageButton
{
    public PhotoSphereButton(final Context context) {
        super(context);
    }
    
    public PhotoSphereButton(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public PhotoSphereButton(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    protected boolean fitSystemWindows(final Rect rect) {
        final ViewGroup$MarginLayoutParams layoutParams = (ViewGroup$MarginLayoutParams)this.getLayoutParams();
        layoutParams.bottomMargin = rect.bottom;
        this.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        return true;
    }
}
