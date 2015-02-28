package android.support.v4.view;

import android.content.*;
import android.util.*;
import android.view.*;

public abstract class n
{
    private o hu;
    private p hv;
    private final Context mContext;
    
    public n(final Context mContext) {
        this.mContext = mContext;
    }
    
    public final void a(final o hu) {
        this.hu = hu;
    }
    
    public void a(final p hv) {
        if (this.hv != null && hv != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + this.getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.hv = hv;
    }
    
    public boolean hasSubMenu() {
        return false;
    }
    
    public boolean isVisible() {
        return true;
    }
    
    public abstract View onCreateActionView();
    
    public View onCreateActionView(final MenuItem menuItem) {
        return this.onCreateActionView();
    }
    
    public boolean onPerformDefaultAction() {
        return false;
    }
    
    public void onPrepareSubMenu(final SubMenu subMenu) {
    }
    
    public boolean overridesItemVisibility() {
        return false;
    }
}
