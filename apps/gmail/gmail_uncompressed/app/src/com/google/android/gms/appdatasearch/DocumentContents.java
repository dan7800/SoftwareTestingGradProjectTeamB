package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import android.os.*;

public class DocumentContents implements SafeParcelable
{
    public static final A CREATOR;
    public final Account account;
    final int btV;
    final DocumentSection[] bue;
    public final String buf;
    public final boolean bug;
    
    static {
        CREATOR = new A();
    }
    
    DocumentContents(final int btV, final DocumentSection[] bue, final String buf, final boolean bug, final Account account) {
        this.btV = btV;
        this.bue = bue;
        this.buf = buf;
        this.bug = bug;
        this.account = account;
    }
    
    public int describeContents() {
        final A creator = DocumentContents.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final A creator = DocumentContents.CREATOR;
        A.a(this, parcel, n);
    }
}
