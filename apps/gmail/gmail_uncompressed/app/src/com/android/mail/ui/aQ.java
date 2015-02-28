package com.android.mail.ui;

import android.view.animation.*;

final class aq implements Interpolator
{
    public final float getInterpolation(final float n) {
        return (float)Math.pow(2.0, n) - 1.0f;
    }
}
