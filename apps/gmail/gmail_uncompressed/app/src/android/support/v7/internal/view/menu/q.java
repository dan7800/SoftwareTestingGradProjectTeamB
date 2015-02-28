package android.support.v7.internal.view.menu;

import android.widget.*;
import android.support.v7.c.*;
import android.view.*;

final class q extends FrameLayout implements c
{
    final CollapsibleActionView xQ;
    
    q(final View view) {
        super(view.getContext());
        this.xQ = (CollapsibleActionView)view;
        this.addView(view);
    }
    
    final View ep() {
        return (View)this.xQ;
    }
    
    public final void onActionViewCollapsed() {
        this.xQ.onActionViewCollapsed();
    }
    
    public final void onActionViewExpanded() {
        this.xQ.onActionViewExpanded();
    }
}
