package com.android.mail.b;

import android.content.*;
import com.google.common.collect.*;
import com.android.ex.photo.util.*;
import com.android.a.*;
import com.android.mail.utils.*;
import java.util.concurrent.*;
import android.os.*;
import java.util.*;

public class l extends AsyncTask<Void, m, Void>
{
    private final a GD;
    private final ContentResolver Hb;
    private final Set<i> akP;
    private final j akQ;
    
    public l(final Set<i> akP, final ContentResolver hb, final a gd, final j akQ) {
        this.akP = akP;
        this.Hb = hb;
        this.GD = gd;
        this.akQ = akQ;
    }
    
    protected ImmutableMap<String, com.android.mail.a> d(final Set<String> set) {
        if (this.Hb == null) {
            return null;
        }
        return com.android.mail.j.a(this.Hb, set, false);
    }
}
