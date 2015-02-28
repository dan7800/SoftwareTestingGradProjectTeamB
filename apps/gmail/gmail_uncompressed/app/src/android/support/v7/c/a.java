package android.support.v7.c;

import android.view.*;

public abstract class a
{
    private Object BG;
    private boolean BH;
    
    public abstract void finish();
    
    public abstract View getCustomView();
    
    public abstract Menu getMenu();
    
    public abstract MenuInflater getMenuInflater();
    
    public abstract CharSequence getSubtitle();
    
    public final Object getTag() {
        return this.BG;
    }
    
    public abstract CharSequence getTitle();
    
    public final boolean getTitleOptionalHint() {
        return this.BH;
    }
    
    public abstract void invalidate();
    
    public boolean isTitleOptional() {
        return false;
    }
    
    public abstract void setCustomView(final View p0);
    
    public abstract void setSubtitle(final int p0);
    
    public abstract void setSubtitle(final CharSequence p0);
    
    public final void setTag(final Object bg) {
        this.BG = bg;
    }
    
    public abstract void setTitle(final int p0);
    
    public abstract void setTitle(final CharSequence p0);
    
    public void setTitleOptionalHint(final boolean bh) {
        this.BH = bh;
    }
}
