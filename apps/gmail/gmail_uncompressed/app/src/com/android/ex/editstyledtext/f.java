package com.android.ex.editstyledtext;

import android.text.style.*;
import android.graphics.drawable.*;

public class f extends DynamicDrawableSpan
{
    e afT;
    
    public final void bC(final int n) {
        this.afT.bB(n);
    }
    
    public Drawable getDrawable() {
        return (Drawable)this.afT;
    }
}
