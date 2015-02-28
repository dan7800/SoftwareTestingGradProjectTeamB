package com.android.mail.browse;

import android.text.*;
import android.view.*;
import android.net.*;
import android.content.*;

final class ak implements MenuItem$OnMenuItemClickListener
{
    final /* synthetic */ aj arA;
    private final CharSequence vi;
    
    public ak(final aj arA, final CharSequence vi) {
        this.arA = arA;
        this.vi = vi;
    }
    
    public final boolean onMenuItemClick(final MenuItem menuItem) {
        aj.a(this.arA, this.vi);
        return true;
    }
}
