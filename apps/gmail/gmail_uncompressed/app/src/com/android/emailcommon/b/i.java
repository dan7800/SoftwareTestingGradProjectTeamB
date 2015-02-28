package com.android.emailcommon.b;

import android.os.*;
import java.util.concurrent.*;

final class i<Params2, Progress2, Result2> extends AsyncTask<Params2, Progress2, Result2>
{
    private final g<Params2, Progress2, Result2> abs;
    
    public i(final g<Params2, Progress2, Result2> abs) {
        this.abs = abs;
    }
    
    protected final Result2 doInBackground(final Params2... array) {
        return this.abs.au();
    }
    
    public final void onCancelled(final Result2 result2) {
        this.abs.mc();
        final g<Params2, Progress2, Result2> abs = this.abs;
        g.md();
    }
    
    public final void onPostExecute(final Result2 result2) {
        this.abs.mc();
        if (((g<Object, Object, Object>)this.abs).abq) {
            final g<Params2, Progress2, Result2> abs = this.abs;
            g.md();
            return;
        }
        final g<Params2, Progress2, Result2> abs2 = this.abs;
        g.me();
    }
}
