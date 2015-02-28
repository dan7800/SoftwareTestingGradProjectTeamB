package com.google.android.gm.persistence;

import android.content.*;
import java.util.*;

abstract class c<T>
{
    final /* synthetic */ b bbl;
    
    private c(final b bbl) {
        this.bbl = bbl;
    }
    
    abstract T N(final Context p0, final String p1);
    
    public final T bU(final Context context) {
        final List<String> b = this.bbl.b(context, false);
        if (b != null) {
            if (b.size() == 1) {
                return this.N(context, b.get(0));
            }
            if (b.size() > 1) {
                return this.c(context, b);
            }
        }
        final String bs = this.bbl.bs(context);
        if (bs != null) {
            return this.N(context, bs);
        }
        return null;
    }
    
    abstract T c(final Context p0, final List<String> p1);
}
