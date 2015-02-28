package android.support.v7.internal.widget;

import android.widget.*;
import android.content.*;
import android.util.*;

public final class W extends RadioButton
{
    private static final int[] wK;
    private final U AO;
    
    static {
        wK = new int[] { 16843015 };
    }
    
    public W(final Context context, final AttributeSet set) {
        this(context, set, (byte)0);
    }
    
    private W(final Context context, final AttributeSet set, final byte b) {
        super(context, set, 16842878);
        final Z a = Z.a(context, set, W.wK, 16842878);
        this.setButtonDrawable(a.getDrawable(0));
        a.recycle();
        this.AO = a.eU();
    }
    
    public final void setButtonDrawable(final int n) {
        this.setButtonDrawable(this.AO.getDrawable(n));
    }
}
