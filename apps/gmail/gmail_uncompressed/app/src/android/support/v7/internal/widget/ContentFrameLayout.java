package android.support.v7.internal.widget;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.graphics.*;

public class ContentFrameLayout extends FrameLayout
{
    public ContentFrameLayout(final Context context) {
        this(context, null);
    }
    
    public ContentFrameLayout(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ContentFrameLayout(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public final void c(final Rect rect) {
        this.fitSystemWindows(rect);
    }
}
