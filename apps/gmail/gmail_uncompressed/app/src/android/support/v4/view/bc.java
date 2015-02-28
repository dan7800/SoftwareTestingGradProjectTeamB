package android.support.v4.view;

import android.view.*;
import android.animation.*;

final class bc extends ba
{
    @Override
    public final void a(final View view, final bm bm) {
        view.animate().setUpdateListener((ValueAnimator$AnimatorUpdateListener)new bj(bm, view));
    }
}
