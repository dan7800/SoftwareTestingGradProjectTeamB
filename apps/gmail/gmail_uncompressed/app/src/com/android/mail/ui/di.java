package com.android.mail.ui;

import android.view.*;

public final class di
{
    private final View aU;
    
    private di(final View au) {
        this.aU = au;
    }
    
    public static di aE(final View view) {
        view.setClickable(true);
        return new di(view);
    }
    
    public final View getView() {
        return this.aU;
    }
}
