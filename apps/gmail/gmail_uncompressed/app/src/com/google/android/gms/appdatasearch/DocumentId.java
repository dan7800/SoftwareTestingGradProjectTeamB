package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class DocumentId implements SafeParcelable
{
    public static final B CREATOR;
    final int btV;
    final String buh;
    final String bui;
    final String buj;
    
    static {
        CREATOR = new B();
    }
    
    DocumentId(final int btV, final String buh, final String bui, final String buj) {
        this.btV = btV;
        this.buh = buh;
        this.bui = bui;
        this.buj = buj;
    }
    
    public int describeContents() {
        final B creator = DocumentId.CREATOR;
        return 0;
    }
    
    @Override
    public String toString() {
        return String.format("DocumentId[packageName=%s, corpusName=%s, uri=%s]", this.buh, this.bui, this.buj);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final B creator = DocumentId.CREATOR;
        B.a(this, parcel);
    }
}
