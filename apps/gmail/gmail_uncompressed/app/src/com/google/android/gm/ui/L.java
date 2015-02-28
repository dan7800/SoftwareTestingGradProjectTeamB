package com.google.android.gm.ui;

import com.google.android.gms.common.api.*;
import com.android.a.*;
import android.content.*;
import java.util.*;
import com.android.mail.b.*;

public final class l extends j
{
    private final String Tz;
    private final n bbm;
    
    public l(final n bbm, final String tz, final a a) {
        super(null, a);
        this.bbm = bbm;
        this.Tz = tz;
    }
    
    @Override
    protected final com.android.mail.b.l a(final LinkedHashSet<i> set) {
        return new m(this.bbm, this.Tz, set, this.oy(), this);
    }
}
