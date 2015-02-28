package android.support.v7.internal.widget;

import android.content.*;
import android.util.*;
import android.os.*;
import android.widget.*;
import android.graphics.drawable.*;
import java.lang.reflect.*;

public final class Y extends Spinner
{
    private static final int[] wK;
    
    static {
        wK = new int[] { 16842964, 16843126 };
    }
    
    public Y(final Context context, final AttributeSet set) {
        this(context, set, (byte)0);
    }
    
    private Y(final Context context, final AttributeSet set, final byte b) {
        super(context, set, 16842881);
        final Z a = Z.a(context, set, Y.wK, 16842881);
        this.setBackgroundDrawable(a.getDrawable(0));
        if (a.hasValue(1)) {
            final Drawable drawable = a.getDrawable(1);
            if (Build$VERSION.SDK_INT >= 16) {
                this.setPopupBackgroundDrawable(drawable);
            }
            else if (Build$VERSION.SDK_INT >= 11) {
                try {
                    final Field declaredField = Spinner.class.getDeclaredField("mPopup");
                    declaredField.setAccessible(true);
                    final Object value = declaredField.get(this);
                    if (value instanceof ListPopupWindow) {
                        ((ListPopupWindow)value).setBackgroundDrawable(drawable);
                    }
                }
                catch (NoSuchFieldException ex) {
                    ex.printStackTrace();
                }
                catch (IllegalAccessException ex2) {
                    ex2.printStackTrace();
                }
            }
        }
        a.recycle();
    }
}
