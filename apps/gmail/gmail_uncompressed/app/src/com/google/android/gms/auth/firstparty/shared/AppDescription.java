package com.google.android.gms.auth.firstparty.shared;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.util.*;
import android.os.*;

public class AppDescription implements SafeParcelable
{
    public static final b CREATOR;
    private static final String bye;
    boolean bym;
    private final String bzN;
    int bzO;
    String bzP;
    String bzQ;
    String bzR;
    final int version;
    
    static {
        bye = "[" + AppDescription.class.getSimpleName() + "]";
        CREATOR = new b();
    }
    
    AppDescription(final int version, final int bzO, final String bzP, final String bzQ, final String s, final boolean bym) {
        this.bzN = "[" + this.getClass().getSimpleName() + "] %s - %s: %s";
        this.version = version;
        this.bzP = bzP;
        this.bzQ = bzQ;
        this.bzR = G.f(s, (Object)(AppDescription.bye + " callingPkg cannot be null or empty!"));
        G.b(bzO != 0, "Invalid callingUid! Cannot be 0!");
        this.bzO = bzO;
        this.bym = bym;
    }
    
    public AppDescription(final String s, final int n, final String s2, final String s3) {
        this(1, n, s2, s3, s, false);
        if (Log.isLoggable("GLSSession", 2)) {
            Log.v("GLSSession", "New " + this.getClass().getSimpleName() + " (sessiondId: " + this.bzP + ", sessiondSig: " + this.bzQ + ", callingPkg: " + this.bzR + ", callingUid: " + this.bzO + ", ");
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return this.getClass().getSimpleName() + "<" + this.bzR + ", " + this.bzO + ">";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
