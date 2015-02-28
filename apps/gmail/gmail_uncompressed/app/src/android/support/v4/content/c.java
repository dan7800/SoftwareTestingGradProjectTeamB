package android.support.v4.content;

import android.content.*;
import android.graphics.drawable.*;
import android.os.*;

public class c
{
    public static final Drawable a(final Context context, final int n) {
        if (Build$VERSION.SDK_INT >= 21) {
            return context.getDrawable(n);
        }
        return context.getResources().getDrawable(n);
    }
}
