package android.support.v7.internal.b;

import android.text.method.*;
import java.util.*;
import android.content.*;
import android.view.*;
import android.graphics.*;

public final class a implements TransformationMethod
{
    private Locale vm;
    
    public a(final Context context) {
        this.vm = context.getResources().getConfiguration().locale;
    }
    
    public final CharSequence getTransformation(final CharSequence charSequence, final View view) {
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.vm);
        }
        return null;
    }
    
    public final void onFocusChanged(final View view, final CharSequence charSequence, final boolean b, final int n, final Rect rect) {
    }
}
