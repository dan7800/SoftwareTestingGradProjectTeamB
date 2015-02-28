package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class OnDownloadProgressResponse implements SafeParcelable
{
    public static final Parcelable$Creator<OnDownloadProgressResponse> CREATOR;
    final long bHw;
    final long bHx;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new p();
    }
    
    OnDownloadProgressResponse(final int btV, final long bHw, final long bHx) {
        this.btV = btV;
        this.bHw = bHw;
        this.bHx = bHx;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        p.a(this, parcel);
    }
}
