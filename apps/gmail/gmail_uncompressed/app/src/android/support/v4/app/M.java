package android.support.v4.app;

import android.view.*;

final class m implements o
{
    final /* synthetic */ k bu;
    
    m(final k bu) {
        this.bu = bu;
    }
    
    @Override
    public final boolean B() {
        final Window window = this.bu.getWindow();
        return window != null && window.peekDecorView() != null;
    }
    
    @Override
    public final View findViewById(final int n) {
        return this.bu.findViewById(n);
    }
}
