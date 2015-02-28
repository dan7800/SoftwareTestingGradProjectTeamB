package com.android.ex.photo;

import android.support.v7.app.*;
import android.graphics.drawable.*;

public final class c implements a
{
    private final android.support.v7.app.a nY;
    
    public c(final android.support.v7.app.a ny) {
        this.nY = ny;
    }
    
    @Override
    public final void a(final b b) {
        this.nY.a(new d(this, b));
    }
    
    @Override
    public final void hide() {
        this.nY.hide();
    }
    
    @Override
    public final void nB() {
        this.nY.setDisplayHomeAsUpEnabled(true);
    }
    
    @Override
    public final void nC() {
        this.nY.setDisplayOptions(8, 8);
    }
    
    @Override
    public final void setLogo(final Drawable logo) {
        this.nY.setLogo(logo);
    }
    
    @Override
    public final void setSubtitle(final CharSequence subtitle) {
        this.nY.setSubtitle(subtitle);
    }
    
    @Override
    public final void setTitle(final CharSequence title) {
        this.nY.setTitle(title);
    }
    
    @Override
    public final void show() {
        this.nY.show();
    }
}
