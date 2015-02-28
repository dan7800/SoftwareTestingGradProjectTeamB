package android.support.v4.view;

import android.view.*;

final class bo extends bn
{
    private final WindowInsets jO;
    
    bo(final WindowInsets jo) {
        this.jO = jo;
    }
    
    @Override
    public final bn b(final int n, final int n2, final int n3, final int n4) {
        return new bo(this.jO.replaceSystemWindowInsets(n, n2, n3, n4));
    }
    
    final WindowInsets bq() {
        return this.jO;
    }
    
    @Override
    public final int getSystemWindowInsetBottom() {
        return this.jO.getSystemWindowInsetBottom();
    }
    
    @Override
    public final int getSystemWindowInsetLeft() {
        return this.jO.getSystemWindowInsetLeft();
    }
    
    @Override
    public final int getSystemWindowInsetRight() {
        return this.jO.getSystemWindowInsetRight();
    }
    
    @Override
    public final int getSystemWindowInsetTop() {
        return this.jO.getSystemWindowInsetTop();
    }
}
