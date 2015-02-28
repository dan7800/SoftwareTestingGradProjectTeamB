package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.server.response.*;
import android.os.*;

public class jp implements SafeParcelable
{
    public static final S CREATOR;
    private final jr bTq;
    private final int btV;
    
    static {
        CREATOR = new S();
    }
    
    jp(final int btV, final jr bTq) {
        this.btV = btV;
        this.bTq = bTq;
    }
    
    private jp(final jr bTq) {
        this.btV = 1;
        this.bTq = bTq;
    }
    
    public static jp a(final a<?, ?> a) {
        if (a instanceof jr) {
            return new jp((jr)a);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final jr Rb() {
        return this.bTq;
    }
    
    public final a<?, ?> Rc() {
        if (this.bTq != null) {
            return this.bTq;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
    
    public int describeContents() {
        final S creator = jp.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final S creator = jp.CREATOR;
        S.a(this, parcel, n);
    }
}
