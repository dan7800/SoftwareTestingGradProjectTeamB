package android.support.v7.app;

import android.support.v7.c.*;
import android.view.*;
import android.widget.*;
import android.content.*;
import android.content.res.*;
import android.graphics.drawable.*;

public abstract class a
{
    public android.support.v7.c.a a(final b b) {
        return null;
    }
    
    public abstract void a(final c p0);
    
    public abstract void a(final View p0, final android.support.v7.app.b p1);
    
    public abstract void a(final SpinnerAdapter p0, final d p1);
    
    public abstract void cA();
    
    public abstract void cB();
    
    public abstract void cC();
    
    public void cD() {
    }
    
    public boolean cE() {
        return false;
    }
    
    public boolean collapseActionView() {
        return false;
    }
    
    public abstract void cx();
    
    public abstract void cy();
    
    public abstract void cz();
    
    public abstract int getDisplayOptions();
    
    public abstract int getHeight();
    
    public abstract int getNavigationMode();
    
    public abstract int getSelectedNavigationIndex();
    
    public Context getThemedContext() {
        return null;
    }
    
    public abstract CharSequence getTitle();
    
    public abstract void hide();
    
    public void j(final CharSequence charSequence) {
    }
    
    public void j(final boolean b) {
    }
    
    public void k(final boolean b) {
    }
    
    public void l(final boolean b) {
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
    }
    
    public abstract void setDisplayHomeAsUpEnabled(final boolean p0);
    
    public abstract void setDisplayOptions(final int p0, final int p1);
    
    public void setHomeActionContentDescription(final int n) {
    }
    
    public void setHomeAsUpIndicator(final int n) {
    }
    
    public void setHomeAsUpIndicator(final Drawable drawable) {
    }
    
    public abstract void setLogo(final Drawable p0);
    
    public abstract void setNavigationMode(final int p0);
    
    public abstract void setSelectedNavigationItem(final int p0);
    
    public abstract void setSubtitle(final CharSequence p0);
    
    public abstract void setTitle(final int p0);
    
    public abstract void setTitle(final CharSequence p0);
    
    public abstract void show();
}
