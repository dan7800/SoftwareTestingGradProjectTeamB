package android.support.v4.view;

import android.view.*;
import android.animation.*;

class bb extends aY
{
    @Override
    public final void a(final aV av, final View view, final bk bk) {
        if (bk != null) {
            view.animate().setListener((Animator$AnimatorListener)new bh(bk, view));
            return;
        }
        view.animate().setListener((Animator$AnimatorListener)null);
    }
}
