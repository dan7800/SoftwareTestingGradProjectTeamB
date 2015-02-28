package android.support.v7.internal.widget;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.graphics.*;

public class FitWindowsFrameLayout extends FrameLayout implements x
{
    private y Ak;
    
    public FitWindowsFrameLayout(final Context context) {
        super(context);
    }
    
    public FitWindowsFrameLayout(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void a(final y ak) {
        this.Ak = ak;
    }
    
    protected boolean fitSystemWindows(final Rect rect) {
        if (this.Ak != null) {
            this.Ak.b(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
