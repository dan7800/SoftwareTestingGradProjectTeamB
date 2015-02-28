package com.google.android.gms.auth.firstparty.delegate;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class SetupAccountWorkflowRequest implements SafeParcelable
{
    public static final b CREATOR;
    public final AppDescription bxQ;
    Bundle byv;
    boolean bzs;
    boolean bzt;
    List<String> bzu;
    boolean bzv;
    final int version;
    
    static {
        CREATOR = new b();
    }
    
    SetupAccountWorkflowRequest(final int version, final boolean bzs, final boolean bzt, final List<String> bzu, final Bundle byv, final AppDescription appDescription, final boolean bzv) {
        this.version = version;
        this.bzs = bzs;
        this.bzt = bzt;
        this.bzu = bzu;
        this.byv = byv;
        this.bxQ = G.ae(appDescription);
        this.bzv = bzv;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
