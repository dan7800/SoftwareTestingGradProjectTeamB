package com.google.android.gm.ui;

import com.google.android.gms.common.api.*;
import com.android.a.*;
import com.android.mail.b.*;
import java.util.*;
import android.content.*;
import com.google.common.collect.*;

public final class m extends l
{
    private final String Tz;
    private final n bbm;
    
    public m(final n bbm, final String tz, final LinkedHashSet<i> set, final a a, final j j) {
        super(set, null, a, j);
        this.bbm = bbm;
        this.Tz = tz;
    }
    
    @Override
    protected final ImmutableMap<String, com.android.mail.a> d(final Set<String> set) {
        return F.a(this.bbm, this.Tz, set, false);
    }
}
