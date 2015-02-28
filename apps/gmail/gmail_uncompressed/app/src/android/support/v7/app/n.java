package android.support.v7.app;

import android.view.*;

final class n implements Runnable
{
    final /* synthetic */ ActionBarActivityDelegateBase oG;
    
    n(final ActionBarActivityDelegateBase og) {
        this.oG = og;
    }
    
    @Override
    public final void run() {
        this.oG.on.showAtLocation((View)this.oG.om, 55, 0, 0);
    }
}
