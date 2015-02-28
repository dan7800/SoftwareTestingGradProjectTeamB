package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.reminders.model.*;
import android.os.*;

public class sn implements SafeParcelable, Task
{
    public static final Parcelable$Creator<sn> CREATOR;
    private final String bGC;
    private final sj bZA;
    private final sl bZB;
    private final Long bZC;
    private final sp bZq;
    private final sr bZr;
    private final Long bZs;
    private final Long bZt;
    private final Boolean bZu;
    private final Boolean bZv;
    private final Boolean bZw;
    private final Boolean bZx;
    private final Long bZy;
    private final sj bZz;
    public final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new df();
    }
    
    sn(final int btV, final sp bZq, final sr bZr, final String bgc, final Long bZs, final Long bZt, final Boolean bZu, final Boolean bZv, final Boolean bZw, final Boolean bZx, final Long bZy, final sj bZz, final sj bza, final sl bzb, final Long bzc) {
        this.bZq = bZq;
        this.bZr = bZr;
        this.bGC = bgc;
        this.bZs = bZs;
        this.bZt = bZt;
        this.bZu = bZu;
        this.bZv = bZv;
        this.bZw = bZw;
        this.bZx = bZx;
        this.bZy = bZy;
        this.bZz = bZz;
        this.bZA = bza;
        this.bZB = bzb;
        this.bZC = bzc;
        this.btV = btV;
    }
    
    public sn(final Task task) {
        this(task.Sg(), task.Sh(), task.getTitle(), task.Si(), task.Sj(), task.Sk(), task.Sl(), task.Sm(), task.Sn(), task.So(), task.Sp(), task.Sq(), task.Sr(), task.Ss());
    }
    
    private sn(final TaskId taskId, final TaskList list, final String bgc, final Long bZs, final Long bZt, final Boolean bZu, final Boolean bZv, final Boolean bZw, final Boolean bZx, final Long bZy, final DateTime dateTime, final DateTime dateTime2, final Location location, final Long bzc) {
        sp bZq;
        if (taskId == null) {
            bZq = null;
        }
        else {
            bZq = new sp(taskId);
        }
        this.bZq = bZq;
        sr bZr;
        if (list == null) {
            bZr = null;
        }
        else {
            bZr = new sr(list);
        }
        this.bZr = bZr;
        this.bGC = bgc;
        this.bZs = bZs;
        this.bZt = bZt;
        this.bZu = bZu;
        this.bZv = bZv;
        this.bZw = bZw;
        this.bZx = bZx;
        this.bZy = bZy;
        sj bZz;
        if (dateTime == null) {
            bZz = null;
        }
        else {
            bZz = new sj(dateTime);
        }
        this.bZz = bZz;
        sj bza;
        if (dateTime2 == null) {
            bza = null;
        }
        else {
            bza = new sj(dateTime2);
        }
        this.bZA = bza;
        sl bzb;
        if (location == null) {
            bzb = null;
        }
        else {
            bzb = new sl(location);
        }
        this.bZB = bzb;
        this.bZC = bzc;
        this.btV = 1;
    }
    
    @Override
    public final TaskId Sg() {
        return this.bZq;
    }
    
    @Override
    public final TaskList Sh() {
        return this.bZr;
    }
    
    @Override
    public final Long Si() {
        return this.bZs;
    }
    
    @Override
    public final Long Sj() {
        return this.bZt;
    }
    
    @Override
    public final Boolean Sk() {
        return this.bZu;
    }
    
    @Override
    public final Boolean Sl() {
        return this.bZv;
    }
    
    @Override
    public final Boolean Sm() {
        return this.bZw;
    }
    
    @Override
    public final Boolean Sn() {
        return this.bZx;
    }
    
    @Override
    public final Long So() {
        return this.bZy;
    }
    
    @Override
    public final DateTime Sp() {
        return this.bZz;
    }
    
    @Override
    public final DateTime Sq() {
        return this.bZA;
    }
    
    @Override
    public final Location Sr() {
        return this.bZB;
    }
    
    @Override
    public final Long Ss() {
        return this.bZC;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public final String getTitle() {
        return this.bGC;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        df.a(this, parcel, n);
    }
}
