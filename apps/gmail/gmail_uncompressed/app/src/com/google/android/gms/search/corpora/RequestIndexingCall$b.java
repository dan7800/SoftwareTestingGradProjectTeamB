package com.google.android.gms.search.corpora;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class RequestIndexingCall$b implements SafeParcelable
{
    public static final g CREATOR;
    final int btV;
    public String btW;
    public long ckj;
    public String packageName;
    
    static {
        CREATOR = new g();
    }
    
    public RequestIndexingCall$b() {
        this.btV = 1;
    }
    
    RequestIndexingCall$b(final int btV, final String packageName, final String btW, final long ckj) {
        this.btV = btV;
        this.packageName = packageName;
        this.btW = btW;
        this.ckj = ckj;
    }
    
    public int describeContents() {
        final g creator = RequestIndexingCall$b.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final g creator = RequestIndexingCall$b.CREATOR;
        g.a(this, parcel);
    }
}
