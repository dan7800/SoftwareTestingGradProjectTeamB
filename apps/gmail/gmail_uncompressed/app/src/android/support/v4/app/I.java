package android.support.v4.app;

import android.view.*;

final class i implements o
{
    final /* synthetic */ Fragment bl;
    
    i(final Fragment bl) {
        this.bl = bl;
    }
    
    @Override
    public final boolean B() {
        return this.bl.aU != null;
    }
    
    @Override
    public final View findViewById(final int n) {
        if (this.bl.aU == null) {
            throw new IllegalStateException("Fragment does not have a view");
        }
        return this.bl.aU.findViewById(n);
    }
}
