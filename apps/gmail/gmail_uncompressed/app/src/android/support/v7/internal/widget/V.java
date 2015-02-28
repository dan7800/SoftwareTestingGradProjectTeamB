package android.support.v7.internal.widget;

import android.support.v7.internal.a.*;
import android.support.v7.internal.view.menu.*;
import android.widget.*;
import android.content.*;
import android.view.*;
import android.graphics.drawable.*;

public interface v
{
    void D(boolean p0);
    
    void a(i p0);
    
    void a(Menu p0, y p1);
    
    void a(SpinnerAdapter p0, q p1);
    
    void ag(int p0);
    
    void am(int p0);
    
    void b(D p0);
    
    void collapseActionView();
    
    void dismissPopupMenus();
    
    boolean eD();
    
    boolean eE();
    
    void eF();
    
    ViewGroup eL();
    
    void eM();
    
    void eN();
    
    int eO();
    
    Context getContext();
    
    int getDisplayOptions();
    
    int getNavigationMode();
    
    CharSequence getTitle();
    
    boolean hasExpandedActionView();
    
    boolean hideOverflowMenu();
    
    boolean isOverflowMenuShowing();
    
    void j(CharSequence p0);
    
    void setCustomView(View p0);
    
    void setDisplayOptions(int p0);
    
    void setIcon(int p0);
    
    void setIcon(Drawable p0);
    
    void setLogo(Drawable p0);
    
    void setNavigationContentDescription(int p0);
    
    void setNavigationIcon(int p0);
    
    void setNavigationIcon(Drawable p0);
    
    void setNavigationMode(int p0);
    
    void setSubtitle(CharSequence p0);
    
    void setTitle(CharSequence p0);
    
    boolean showOverflowMenu();
}
