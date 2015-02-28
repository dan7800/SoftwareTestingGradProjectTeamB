package com.google.android.gms.common.internal;

import java.util.*;
import com.google.android.gms.common.internal.f$com.google.android.gms.common.internal.*;
import android.os.*;
import android.content.*;

final class r
{
    private int ao;
    private final String bFp;
    private final s bFq;
    private final HashSet<k> bFr;
    private boolean bFs;
    private IBinder bFt;
    private ComponentName bFu;
    final /* synthetic */ q bFv;
    
    public r(final q bFv, final String bFp) {
        this.bFv = bFv;
        this.bFp = bFp;
        this.bFq = new s(this);
        this.bFr = new HashSet<k>();
        this.ao = 0;
    }
    
    public final s Lj() {
        return this.bFq;
    }
    
    public final String Lk() {
        return this.bFp;
    }
    
    public final boolean Ll() {
        return this.bFr.isEmpty();
    }
    
    public final void a(final k k) {
        this.bFr.add(k);
    }
    
    public final void b(final k k) {
        this.bFr.remove(k);
    }
    
    public final boolean c(final k k) {
        return this.bFr.contains(k);
    }
    
    public final void cd(final boolean bFs) {
        this.bFs = bFs;
    }
    
    public final IBinder getBinder() {
        return this.bFt;
    }
    
    public final ComponentName getComponentName() {
        return this.bFu;
    }
    
    public final int getState() {
        return this.ao;
    }
    
    public final boolean isBound() {
        return this.bFs;
    }
}
