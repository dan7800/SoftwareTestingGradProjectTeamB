package android.support.v7.app;

import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.content.res.*;
import android.view.*;

public class b extends ViewGroup$MarginLayoutParams
{
    public int gravity;
    
    public b(final int n, final int n2) {
        super(n, n2);
        this.gravity = 0;
        this.gravity = 8388627;
    }
    
    public b(final Context context, final AttributeSet set) {
        super(context, set);
        this.gravity = 0;
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, l.ri);
        this.gravity = obtainStyledAttributes.getInt(l.rj, 0);
        obtainStyledAttributes.recycle();
    }
    
    public b(final b b) {
        super((ViewGroup$MarginLayoutParams)b);
        this.gravity = 0;
        this.gravity = b.gravity;
    }
    
    public b(final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        super(viewGroup$LayoutParams);
        this.gravity = 0;
    }
}
