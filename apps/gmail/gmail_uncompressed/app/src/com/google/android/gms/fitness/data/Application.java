package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class Application implements SafeParcelable
{
    public static final Parcelable$Creator<Application> CREATOR;
    public static final Application bKm;
    private final String bKn;
    private final int btV;
    private final String bud;
    private final String buh;
    
    static {
        bKm = new Application("com.google.android.gms", null);
        CREATOR = (Parcelable$Creator)new a();
    }
    
    Application(final int btV, final String s, final String bKn) {
        this.btV = btV;
        this.buh = G.ae(s);
        this.bud = "";
        this.bKn = bKn;
    }
    
    private Application(final String s, final String s2) {
        this(1, s, s2);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final String Mo() {
        return this.bKn;
    }
    
    final Application Mp() {
        final String gr = av.gr(this.buh);
        av.gr(this.bud);
        return new Application(gr, av.gr(this.bKn));
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof Application;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final Application application = (Application)o;
            int n;
            if (this.buh.equals(application.buh) && E.b(this.bud, application.bud) && E.b(this.bKn, application.bKn)) {
                n = 1;
            }
            else {
                n = 0;
            }
            b2 = false;
            if (n == 0) {
                return b2;
            }
        }
        return true;
    }
    
    public final String getPackageName() {
        return this.buh;
    }
    
    public final String getVersion() {
        return this.bud;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.buh, this.bud, this.bKn });
    }
    
    @Override
    public final String toString() {
        return String.format("Application{%s:%s:%s}", this.buh, this.bud, this.bKn);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
