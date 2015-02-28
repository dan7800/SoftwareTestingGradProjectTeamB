package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class FieldMappingDictionary$FieldMapPair implements SafeParcelable
{
    public static final c CREATOR;
    final FastJsonResponse$Field<?, ?> bGa;
    final String key;
    final int versionCode;
    
    static {
        CREATOR = new c();
    }
    
    FieldMappingDictionary$FieldMapPair(final int versionCode, final String key, final FastJsonResponse$Field<?, ?> bGa) {
        this.versionCode = versionCode;
        this.key = key;
        this.bGa = bGa;
    }
    
    FieldMappingDictionary$FieldMapPair(final String key, final FastJsonResponse$Field<?, ?> bGa) {
        this.versionCode = 1;
        this.key = key;
        this.bGa = bGa;
    }
    
    public int describeContents() {
        final c creator = FieldMappingDictionary$FieldMapPair.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final c creator = FieldMappingDictionary$FieldMapPair.CREATOR;
        c.a(this, parcel, n);
    }
}
