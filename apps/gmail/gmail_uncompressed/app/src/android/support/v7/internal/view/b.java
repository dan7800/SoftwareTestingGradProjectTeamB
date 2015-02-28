package android.support.v7.internal.view;

import android.content.*;
import android.support.v7.internal.widget.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.menu.*;
import java.lang.ref.*;
import android.view.*;

public final class b extends a implements j
{
    private Context mContext;
    private ActionBarContextView uD;
    private android.support.v7.c.b vd;
    private i ve;
    private WeakReference<View> vf;
    private boolean vn;
    private boolean vo;
    
    public b(final Context mContext, final ActionBarContextView ud, final android.support.v7.c.b vd, final boolean vo) {
        this.mContext = mContext;
        this.uD = ud;
        this.vd = vd;
        (this.ve = new i(mContext).dJ()).a(this);
        this.vo = vo;
    }
    
    @Override
    public final void a(final i i) {
        this.invalidate();
        this.uD.showOverflowMenu();
    }
    
    @Override
    public final boolean a(final i i, final MenuItem menuItem) {
        return this.vd.a(this, menuItem);
    }
    
    @Override
    public final void finish() {
        if (this.vn) {
            return;
        }
        this.vn = true;
        this.uD.sendAccessibilityEvent(32);
        this.vd.c(this);
    }
    
    @Override
    public final View getCustomView() {
        if (this.vf != null) {
            return this.vf.get();
        }
        return null;
    }
    
    @Override
    public final Menu getMenu() {
        return (Menu)this.ve;
    }
    
    @Override
    public final MenuInflater getMenuInflater() {
        return new MenuInflater(this.mContext);
    }
    
    @Override
    public final CharSequence getSubtitle() {
        return this.uD.getSubtitle();
    }
    
    @Override
    public final CharSequence getTitle() {
        return this.uD.getTitle();
    }
    
    @Override
    public final void invalidate() {
        this.vd.b(this, (Menu)this.ve);
    }
    
    @Override
    public final boolean isTitleOptional() {
        return this.uD.isTitleOptional();
    }
    
    @Override
    public final void setCustomView(final View customView) {
        this.uD.setCustomView(customView);
        WeakReference<View> vf;
        if (customView != null) {
            vf = new WeakReference<View>(customView);
        }
        else {
            vf = null;
        }
        this.vf = vf;
    }
    
    @Override
    public final void setSubtitle(final int n) {
        this.setSubtitle(this.mContext.getString(n));
    }
    
    @Override
    public final void setSubtitle(final CharSequence subtitle) {
        this.uD.setSubtitle(subtitle);
    }
    
    @Override
    public final void setTitle(final int n) {
        this.setTitle(this.mContext.getString(n));
    }
    
    @Override
    public final void setTitle(final CharSequence title) {
        this.uD.setTitle(title);
    }
    
    @Override
    public final void setTitleOptionalHint(final boolean titleOptionalHint) {
        super.setTitleOptionalHint(titleOptionalHint);
        this.uD.B(titleOptionalHint);
    }
}
