package android.support.v4.widget;

import android.content.*;
import android.util.*;
import android.content.res.*;
import android.graphics.drawable.*;
import android.support.v4.content.*;
import android.graphics.*;
import android.support.v4.view.*;
import android.view.*;
import android.os.*;

public final class l extends ViewGroup$MarginLayoutParams
{
    public int gravity;
    float lm;
    boolean ln;
    boolean lo;
    
    public l() {
        super(-1, -1);
        this.gravity = 0;
    }
    
    public l(final Context context, final AttributeSet set) {
        super(context, set);
        this.gravity = 0;
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, DrawerLayout.im);
        this.gravity = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }
    
    public l(final l l) {
        super((ViewGroup$MarginLayoutParams)l);
        this.gravity = 0;
        this.gravity = l.gravity;
    }
    
    public l(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.gravity = 0;
    }
    
    public l(final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams) {
        super(viewGroup$MarginLayoutParams);
        this.gravity = 0;
    }
}
