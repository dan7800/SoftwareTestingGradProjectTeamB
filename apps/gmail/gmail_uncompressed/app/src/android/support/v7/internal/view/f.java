package android.support.v7.internal.view;

import java.lang.reflect.*;
import android.view.*;

final class f implements MenuItem$OnMenuItemClickListener
{
    private static final Class<?>[] vy;
    private Object vx;
    private Method vz;
    
    static {
        vy = new Class[] { MenuItem.class };
    }
    
    public f(final Object vx, final String s) {
        this.vx = vx;
        final Class<?> class1 = vx.getClass();
        try {
            this.vz = class1.getMethod(s, f.vy);
        }
        catch (Exception ex2) {
            final InflateException ex = new InflateException("Couldn't resolve menu item onClick handler " + s + " in class " + class1.getName());
            ex.initCause((Throwable)ex2);
            throw ex;
        }
    }
    
    public final boolean onMenuItemClick(final MenuItem menuItem) {
        try {
            if (this.vz.getReturnType() == Boolean.TYPE) {
                return (boolean)this.vz.invoke(this.vx, menuItem);
            }
            this.vz.invoke(this.vx, menuItem);
            return true;
        }
        catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
}
