package android.support.v7.widget;

import android.view.*;

final class I implements Runnable
{
    final /* synthetic */ H ES;
    
    I(final H es) {
        this.ES = es;
    }
    
    @Override
    public final void run() {
        final View anchorView = this.ES.getAnchorView();
        if (anchorView != null && anchorView.getWindowToken() != null) {
            this.ES.show();
        }
    }
}
