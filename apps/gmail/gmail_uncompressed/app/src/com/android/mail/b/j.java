package com.android.mail.b;

import com.android.a.*;
import android.content.*;
import java.util.concurrent.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.ex.photo.util.*;
import java.util.*;

public class j implements Runnable
{
    private static final String TAG;
    private static final Executor akN;
    private static final Executor akO;
    private final a GD;
    protected final ContentResolver Hb;
    private final LinkedHashSet<i> akL;
    private l akM;
    private final Handler mHandler;
    
    static {
        TAG = D.AU();
        akO = (akN = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>()));
    }
    
    public j(final ContentResolver hb, final a gd) {
        this.mHandler = new Handler();
        this.Hb = hb;
        this.GD = gd;
        this.akL = new LinkedHashSet<i>();
    }
    
    private void oz() {
        E.c(j.TAG, "ContactResolver  > batch   %d", this.akL.size());
        this.mHandler.removeCallbacks((Runnable)this);
        this.mHandler.post((Runnable)this);
    }
    
    protected l a(final LinkedHashSet<i> set) {
        return new l(set, this.Hb, this.GD, this);
    }
    
    public final void a(final h h, final k k) {
        this.akL.add(new i(h, k));
        this.oz();
    }
    
    public final void b(final h h, final k k) {
        this.akL.remove(new i(h, k));
    }
    
    public final a oy() {
        return this.GD;
    }
    
    @Override
    public void run() {
        if (this.akL.isEmpty()) {
            return;
        }
        if (this.akM != null && this.akM.getStatus() == AsyncTask$Status.RUNNING) {
            E.c(j.TAG, "ContactResolver << batch skip", new Object[0]);
            return;
        }
        f.beginSection("ContactResolver run");
        E.c(j.TAG, "ContactResolver >> batch start", new Object[0]);
        final LinkedHashSet<i> set = new LinkedHashSet<i>(this.akL);
        if (this.akM != null) {
            this.akM.cancel(true);
        }
        (this.akM = this.a(set)).executeOnExecutor(j.akO, (Object[])new Void[0]);
        f.endSection();
    }
}
