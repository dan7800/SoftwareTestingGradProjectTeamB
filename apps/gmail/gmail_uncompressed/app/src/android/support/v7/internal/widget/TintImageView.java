package android.support.v7.internal.widget;

import android.widget.*;
import android.content.*;
import android.util.*;

public class TintImageView extends ImageView
{
    private static final int[] wK;
    private final U AO;
    
    static {
        wK = new int[] { 16842964, 16843033 };
    }
    
    public TintImageView(final Context context) {
        this(context, null);
    }
    
    public TintImageView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public TintImageView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        final Z a = Z.a(context, set, TintImageView.wK, n);
        if (a.length() > 0) {
            if (a.hasValue(0)) {
                this.setBackgroundDrawable(a.getDrawable(0));
            }
            if (a.hasValue(1)) {
                this.setImageDrawable(a.getDrawable(1));
            }
        }
        a.recycle();
        this.AO = a.eU();
    }
    
    public void setImageResource(final int n) {
        this.setImageDrawable(this.AO.getDrawable(n));
    }
}
