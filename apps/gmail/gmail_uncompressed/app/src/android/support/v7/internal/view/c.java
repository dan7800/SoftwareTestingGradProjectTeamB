package android.support.v7.internal.view;

import android.annotation.*;
import android.content.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;

@TargetApi(11)
public final class c extends ActionMode
{
    final Context mContext;
    final a vp;
    
    public c(final Context mContext, final a vp) {
        this.mContext = mContext;
        this.vp = vp;
    }
    
    public final void finish() {
        this.vp.finish();
    }
    
    public final View getCustomView() {
        return this.vp.getCustomView();
    }
    
    public final Menu getMenu() {
        return B.a(this.mContext, (android.support.v4.b.a.a)this.vp.getMenu());
    }
    
    public final MenuInflater getMenuInflater() {
        return this.vp.getMenuInflater();
    }
    
    public final CharSequence getSubtitle() {
        return this.vp.getSubtitle();
    }
    
    public final Object getTag() {
        return this.vp.getTag();
    }
    
    public final CharSequence getTitle() {
        return this.vp.getTitle();
    }
    
    public final boolean getTitleOptionalHint() {
        return this.vp.getTitleOptionalHint();
    }
    
    public final void invalidate() {
        this.vp.invalidate();
    }
    
    public final boolean isTitleOptional() {
        return this.vp.isTitleOptional();
    }
    
    public final void setCustomView(final View customView) {
        this.vp.setCustomView(customView);
    }
    
    public final void setSubtitle(final int subtitle) {
        this.vp.setSubtitle(subtitle);
    }
    
    public final void setSubtitle(final CharSequence subtitle) {
        this.vp.setSubtitle(subtitle);
    }
    
    public final void setTag(final Object tag) {
        this.vp.setTag(tag);
    }
    
    public final void setTitle(final int title) {
        this.vp.setTitle(title);
    }
    
    public final void setTitle(final CharSequence title) {
        this.vp.setTitle(title);
    }
    
    public final void setTitleOptionalHint(final boolean titleOptionalHint) {
        this.vp.setTitleOptionalHint(titleOptionalHint);
    }
}
