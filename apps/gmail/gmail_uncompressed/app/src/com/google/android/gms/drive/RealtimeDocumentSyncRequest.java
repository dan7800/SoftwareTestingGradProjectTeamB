package com.google.android.gms.drive;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class RealtimeDocumentSyncRequest implements SafeParcelable
{
    public static final Parcelable$Creator<RealtimeDocumentSyncRequest> CREATOR;
    final List<String> bGF;
    final List<String> bGG;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new r();
    }
    
    RealtimeDocumentSyncRequest(final int btV, final List<String> list, final List<String> list2) {
        this.btV = btV;
        this.bGF = G.ae(list);
        this.bGG = G.ae(list2);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        r.a(this, parcel);
    }
}
