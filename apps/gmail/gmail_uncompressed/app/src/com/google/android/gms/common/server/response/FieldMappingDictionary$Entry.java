package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class FieldMappingDictionary$Entry implements SafeParcelable
{
    public static final e CREATOR;
    final ArrayList<FieldMappingDictionary$FieldMapPair> bFZ;
    final String className;
    final int versionCode;
    
    static {
        CREATOR = new e();
    }
    
    FieldMappingDictionary$Entry(final int versionCode, final String className, final ArrayList<FieldMappingDictionary$FieldMapPair> bfz) {
        this.versionCode = versionCode;
        this.className = className;
        this.bFZ = bfz;
    }
    
    FieldMappingDictionary$Entry(final String className, final HashMap<String, FastJsonResponse$Field<?, ?>> hashMap) {
        this.versionCode = 1;
        this.className = className;
        this.bFZ = c(hashMap);
    }
    
    private static ArrayList<FieldMappingDictionary$FieldMapPair> c(final HashMap<String, FastJsonResponse$Field<?, ?>> hashMap) {
        if (hashMap == null) {
            return null;
        }
        final ArrayList<FieldMappingDictionary$FieldMapPair> list = new ArrayList<FieldMappingDictionary$FieldMapPair>();
        for (final String s : hashMap.keySet()) {
            list.add(new FieldMappingDictionary$FieldMapPair(s, hashMap.get(s)));
        }
        return list;
    }
    
    final HashMap<String, FastJsonResponse$Field<?, ?>> LL() {
        final HashMap<String, FastJsonResponse$Field<?, ?>> hashMap = new HashMap<String, FastJsonResponse$Field<?, ?>>();
        for (int size = this.bFZ.size(), i = 0; i < size; ++i) {
            final FieldMappingDictionary$FieldMapPair fieldMappingDictionary$FieldMapPair = this.bFZ.get(i);
            hashMap.put(fieldMappingDictionary$FieldMapPair.key, fieldMappingDictionary$FieldMapPair.bGa);
        }
        return hashMap;
    }
    
    public int describeContents() {
        final e creator = FieldMappingDictionary$Entry.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final e creator = FieldMappingDictionary$Entry.CREATOR;
        e.a(this, parcel);
    }
}
