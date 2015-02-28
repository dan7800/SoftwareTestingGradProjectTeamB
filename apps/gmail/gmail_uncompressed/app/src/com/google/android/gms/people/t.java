package com.google.android.gms.people;

import com.google.android.gms.common.internal.*;

public final class t
{
    int cgR;
    
    public final t US() {
        this.cgR = 135;
        return this;
    }
    
    public final s UT() {
        G.b(this.cgR > 0, "Must provide valid client application ID!");
        return new s(this, (byte)0);
    }
}
