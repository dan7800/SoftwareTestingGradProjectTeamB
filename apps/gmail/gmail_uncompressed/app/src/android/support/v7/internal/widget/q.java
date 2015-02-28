package android.support.v7.internal.widget;

import android.widget.*;
import android.content.*;
import android.util.*;

public final class Q extends CheckBox
{
    private static final int[] wK;
    private final U AO;
    
    static {
        wK = new int[] { 16843015 };
    }
    
    public Q(final Context context, final AttributeSet set) {
        this(context, set, (byte)0);
    }
    
    private Q(final Context context, final AttributeSet set, final byte b) {
        super(context, set, 16842860);
        final Z a = Z.a(context, set, Q.wK, 16842860);
        this.setButtonDrawable(a.getDrawable(0));
        a.recycle();
        this.AO = a.eU();
    }
    
    public final void setButtonDrawable(final int n) {
        this.setButtonDrawable(this.AO.getDrawable(n));
    }
}
