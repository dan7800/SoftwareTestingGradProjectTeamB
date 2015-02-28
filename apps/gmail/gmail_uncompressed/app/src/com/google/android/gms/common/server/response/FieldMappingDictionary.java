package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class FieldMappingDictionary implements SafeParcelable
{
    public static final d CREATOR;
    private final HashMap<String, HashMap<String, FastJsonResponse$Field<?, ?>>> bFW;
    private final ArrayList<FieldMappingDictionary$Entry> bFX;
    private final String bFY;
    private final int btV;
    
    static {
        CREATOR = new d();
    }
    
    FieldMappingDictionary(final int btV, final ArrayList<FieldMappingDictionary$Entry> list, final String s) {
        this.btV = btV;
        this.bFX = null;
        this.bFW = l(list);
        this.bFY = G.ae(s);
        this.LI();
    }
    
    private void LI() {
        final Iterator<String> iterator = this.bFW.keySet().iterator();
        while (iterator.hasNext()) {
            final HashMap<String, FastJsonResponse$Field<?, ?>> hashMap = this.bFW.get(iterator.next());
            final Iterator<String> iterator2 = hashMap.keySet().iterator();
            while (iterator2.hasNext()) {
                hashMap.get(iterator2.next()).a(this);
            }
        }
    }
    
    private static HashMap<String, HashMap<String, FastJsonResponse$Field<?, ?>>> l(final ArrayList<FieldMappingDictionary$Entry> list) {
        final HashMap<String, HashMap<String, FastJsonResponse$Field<?, ?>>> hashMap = new HashMap<String, HashMap<String, FastJsonResponse$Field<?, ?>>>();
        for (int size = list.size(), i = 0; i < size; ++i) {
            final FieldMappingDictionary$Entry fieldMappingDictionary$Entry = list.get(i);
            hashMap.put(fieldMappingDictionary$Entry.className, fieldMappingDictionary$Entry.LL());
        }
        return hashMap;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final ArrayList<FieldMappingDictionary$Entry> LJ() {
        final ArrayList<FieldMappingDictionary$Entry> list = new ArrayList<FieldMappingDictionary$Entry>();
        for (final String s : this.bFW.keySet()) {
            list.add(new FieldMappingDictionary$Entry(s, this.bFW.get(s)));
        }
        return list;
    }
    
    public final String LK() {
        return this.bFY;
    }
    
    public int describeContents() {
        final d creator = FieldMappingDictionary.CREATOR;
        return 0;
    }
    
    public final HashMap<String, FastJsonResponse$Field<?, ?>> ga(final String s) {
        return this.bFW.get(s);
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        for (final String s : this.bFW.keySet()) {
            sb.append(s).append(":\n");
            final HashMap<String, FastJsonResponse$Field<?, ?>> hashMap = this.bFW.get(s);
            for (final String s2 : hashMap.keySet()) {
                sb.append("  ").append(s2).append(": ");
                sb.append(hashMap.get(s2));
            }
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final d creator = FieldMappingDictionary.CREATOR;
        d.a(this, parcel);
    }
}
