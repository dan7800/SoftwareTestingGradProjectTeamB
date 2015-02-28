package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.metadata.internal.*;
import android.os.*;

public class OnMetadataResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnMetadataResponse> CREATOR;
    final MetadataBundle bHk;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new v();
    }
    
    OnMetadataResponse(final int btV, final MetadataBundle bHk) {
        this.btV = btV;
        this.bHk = bHk;
    }
    
    public final MetadataBundle LZ() {
        return this.bHk;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        v.a(this, parcel, n);
    }
}
