package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class WebSetupConfigRequest implements SafeParcelable
{
    public static final m CREATOR;
    public final AppDescription bxQ;
    final int version;
    
    static {
        CREATOR = new m();
    }
    
    WebSetupConfigRequest(final int version, final AppDescription appDescription) {
        this.version = version;
        this.bxQ = G.ae(appDescription);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.a(this, parcel, n);
    }
}
