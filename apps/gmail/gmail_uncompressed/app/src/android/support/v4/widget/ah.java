package android.support.v4.widget;

import android.view.animation.*;

final class ah implements Interpolator
{
    public final float getInterpolation(final float n) {
        final float n2 = n - 1.0f;
        return 1.0f + n2 * (n2 * (n2 * (n2 * n2)));
    }
}
