package com.android.emailcommon.b;

import java.util.concurrent.*;
import android.os.*;
import java.util.*;

public abstract class g<Params, Progress, Result>
{
    private static final Executor SERIAL_EXECUTOR;
    private static final Executor abn;
    private final j abo;
    private final i<Params, Progress, Result> abp;
    private volatile boolean abq;
    
    static {
        SERIAL_EXECUTOR = AsyncTask.SERIAL_EXECUTOR;
        abn = AsyncTask.THREAD_POOL_EXECUTOR;
    }
    
    public g(final j j) {
        this.abo = null;
        if (this.abo != null) {
            j.a(this.abo, this);
        }
        this.abp = new i<Params, Progress, Result>(this);
    }
    
    public static g<Void, Void, Void> a(final Runnable runnable) {
        return a(g.abn, runnable);
    }
    
    private static g<Void, Void, Void> a(final Executor executor, final Runnable runnable) {
        return new h(runnable).a(executor, (Void[])null);
    }
    
    private g<Params, Progress, Result> a(final Executor executor, final Params... array) {
        this.abp.executeOnExecutor(executor, (Object[])null);
        return this;
    }
    
    public static g<Void, Void, Void> b(final Runnable runnable) {
        return a(g.SERIAL_EXECUTOR, runnable);
    }
    
    protected static void md() {
    }
    
    protected static void me() {
    }
    
    protected abstract Result au();
    
    final void mc() {
        if (this.abo != null) {
            j.b(this.abo, this);
        }
    }
    
    public final g<Params, Progress, Result> mf() {
        return this.a(g.SERIAL_EXECUTOR, (Params[])null);
    }
}
