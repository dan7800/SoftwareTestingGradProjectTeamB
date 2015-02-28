package android.support.v4.view;

import android.view.*;

final class ab implements ac
{
    @Override
    public final float a(final VelocityTracker velocityTracker, final int n) {
        return velocityTracker.getXVelocity(n);
    }
    
    @Override
    public final float b(final VelocityTracker velocityTracker, final int n) {
        return velocityTracker.getYVelocity(n);
    }
}
