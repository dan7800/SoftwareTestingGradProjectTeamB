package com.google.android.gms.b;

import com.android.ex.chips.*;
import com.google.android.gms.people.model.*;
import android.net.*;

public final class g extends ae
{
    private final String bBG;
    private final AvatarReference bBH;
    
    public g(final b b) {
        super(b.RU(), b.RV(), -1, null, b.RS(), null, b.RT(), null, true, true, null);
        this.bBG = b.Ki();
        this.bBH = b.Kh();
    }
    
    public final AvatarReference Kh() {
        return this.bBH;
    }
    
    public final String Ki() {
        return this.bBG;
    }
}
