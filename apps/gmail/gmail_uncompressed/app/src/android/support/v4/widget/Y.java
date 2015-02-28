package android.support.v4.widget;

import android.widget.*;
import android.view.*;

public final class y extends a
{
    private final ListView lI;
    
    public y(final ListView li) {
        super((View)li);
        this.lI = li;
    }
    
    @Override
    public final void H(final int n) {
        final ListView li = this.lI;
        final int firstVisiblePosition = li.getFirstVisiblePosition();
        if (firstVisiblePosition != -1) {
            final View child = li.getChildAt(0);
            if (child != null) {
                li.setSelectionFromTop(firstVisiblePosition, child.getTop() - n);
            }
        }
    }
    
    @Override
    public final boolean I(final int n) {
        final ListView li = this.lI;
        final int count = li.getCount();
        if (count != 0) {
            final int childCount = li.getChildCount();
            final int firstVisiblePosition = li.getFirstVisiblePosition();
            final int n2 = firstVisiblePosition + childCount;
            if (n > 0) {
                if (n2 >= count && li.getChildAt(childCount - 1).getBottom() <= li.getHeight()) {
                    return false;
                }
            }
            else {
                if (n >= 0) {
                    return false;
                }
                if (firstVisiblePosition <= 0 && li.getChildAt(0).getTop() >= 0) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
