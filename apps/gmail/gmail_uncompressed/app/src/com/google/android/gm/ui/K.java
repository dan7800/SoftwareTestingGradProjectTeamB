package com.google.android.gm.ui;

import com.android.mail.ui.*;
import com.google.android.gms.common.api.*;
import android.os.*;
import android.content.*;
import com.google.common.collect.*;
import com.android.mail.*;

public final class k extends ar
{
    private final String Tz;
    private final n bbm;
    
    public k(final Context context, final n bbm, final String tz) {
        super(context);
        this.bbm = bbm;
        this.Tz = tz;
    }
    
    @Override
    public final Loader<ImmutableMap<String, a>> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<ImmutableMap<String, a>>)new F(this.getContext(), this.bbm, this.Tz, this.xW());
    }
}
