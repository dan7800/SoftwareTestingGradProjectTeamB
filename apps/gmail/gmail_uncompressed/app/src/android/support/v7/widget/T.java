package android.support.v7.widget;

import android.view.*;

final class t extends w
{
    public final int d(final View view, final int n, final int n2) {
        int baseline;
        if (view.getVisibility() == 8) {
            baseline = 0;
        }
        else {
            baseline = view.getBaseline();
            if (baseline == -1) {
                return Integer.MIN_VALUE;
            }
        }
        return baseline;
    }
    
    public final A fp() {
        return new u(this);
    }
    
    @Override
    final int k(final View view, final int n) {
        return 0;
    }
}
