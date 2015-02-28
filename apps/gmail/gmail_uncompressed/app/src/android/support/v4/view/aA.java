package android.support.v4.view;

import android.view.*;

final class aa implements ac
{
    @Override
    public final float a(final VelocityTracker velocityTracker, final int n) {
        return velocityTracker.getXVelocity();
    }
    
    @Override
    public final float b(final VelocityTracker velocityTracker, final int n) {
        return velocityTracker.getYVelocity();
    }
}
