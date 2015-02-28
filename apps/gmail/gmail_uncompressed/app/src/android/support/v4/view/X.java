package android.support.v4.view;

import android.graphics.*;
import android.view.*;

final class x implements w
{
    @Override
    public final void apply(final int n, final int n2, final int n3, final Rect rect, final int n4, final int n5, final Rect rect2, final int n6) {
        Gravity.apply(n, n2, n3, rect, n4, n5, rect2);
    }
    
    @Override
    public final void apply(final int n, final int n2, final int n3, final Rect rect, final Rect rect2, final int n4) {
        Gravity.apply(n, n2, n3, rect, rect2);
    }
    
    @Override
    public final int getAbsoluteGravity(final int n, final int n2) {
        return 0xFF7FFFFF & n;
    }
}
