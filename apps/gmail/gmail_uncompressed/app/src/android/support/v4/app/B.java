package android.support.v4.app;

import android.view.*;

final class b implements G
{
    final /* synthetic */ Fragment F;
    final /* synthetic */ a G;
    
    b(final a g, final Fragment f) {
        this.G = g;
        this.F = f;
    }
    
    @Override
    public final View getView() {
        return this.F.getView();
    }
}
