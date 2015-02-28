package android.support.v7.internal.widget;

import android.widget.*;
import android.content.*;
import android.util.*;

public final class T extends EditText
{
    private static final int[] wK;
    
    static {
        wK = new int[] { 16842964 };
    }
    
    public T(final Context context, final AttributeSet set) {
        this(context, set, (byte)0);
    }
    
    private T(final Context context, final AttributeSet set, final byte b) {
        super(context, set, 16842862);
        final Z a = Z.a(context, set, T.wK, 16842862);
        this.setBackgroundDrawable(a.getDrawable(0));
        a.recycle();
    }
}
