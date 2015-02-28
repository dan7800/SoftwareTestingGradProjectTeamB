package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.fitness.data.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class DataTypeCreateRequest implements SafeParcelable
{
    public static final Parcelable$Creator<DataTypeCreateRequest> CREATOR;
    private final List<Field> bLu;
    private final int btV;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
    }
    
    DataTypeCreateRequest(final int btV, final String mName, final List<Field> list) {
        this.btV = btV;
        this.mName = mName;
        this.bLu = Collections.unmodifiableList((List<? extends Field>)list);
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<Field> MN() {
        return this.bLu;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            final boolean b = o instanceof DataTypeCreateRequest;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataTypeCreateRequest dataTypeCreateRequest = (DataTypeCreateRequest)o;
            int n;
            if (E.b(this.mName, dataTypeCreateRequest.mName) && E.b(this.bLu, dataTypeCreateRequest.bLu)) {
                n = 1;
            }
            else {
                n = 0;
            }
            b2 = false;
            if (n == 0) {
                return b2;
            }
        }
        return true;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.mName, this.bLu });
    }
    
    @Override
    public String toString() {
        return E.ad(this).e("name", this.mName).e("fields", this.bLu).toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        q.a(this, parcel);
    }
}
