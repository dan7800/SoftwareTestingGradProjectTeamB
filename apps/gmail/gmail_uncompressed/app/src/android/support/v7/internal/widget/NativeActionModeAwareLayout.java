package android.support.v7.internal.widget;

import android.annotation.*;
import android.content.*;
import android.util.*;
import android.view.*;

@TargetApi(11)
public class NativeActionModeAwareLayout extends ContentFrameLayout
{
    private B Ap;
    
    public NativeActionModeAwareLayout(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void a(final B ap) {
        this.Ap = ap;
    }
    
    public ActionMode startActionModeForChild(final View view, final ActionMode$Callback actionMode$Callback) {
        if (this.Ap != null) {
            return this.Ap.startActionModeForChild(view, actionMode$Callback);
        }
        return super.startActionModeForChild(view, actionMode$Callback);
    }
}
