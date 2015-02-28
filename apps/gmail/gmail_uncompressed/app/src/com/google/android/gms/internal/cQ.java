package com.google.android.gms.internal;

import com.google.android.gms.people.model.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;

public final class cq implements j
{
    @Override
    public final r<m> a(final n n, final AvatarReference avatarReference, final k k) {
        return n.a((r<m>)new ct(this, avatarReference, k));
    }
    
    @Override
    public final r<m> a(final n n, final String s, final String s2, final int n2) {
        return n.a((r<m>)new cr(this, s, s2, n2, 1));
    }
    
    @Override
    public final r<m> b(final n n, final String s, final String s2, final int n2) {
        return n.a((r<m>)new cs(this, s, s2, n2));
    }
}
