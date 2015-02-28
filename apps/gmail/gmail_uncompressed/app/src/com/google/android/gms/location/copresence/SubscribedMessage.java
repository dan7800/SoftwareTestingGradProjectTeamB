package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class SubscribedMessage implements SafeParcelable
{
    public static final Parcelable$Creator<SubscribedMessage> CREATOR;
    private final Message bUE;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new n();
    }
    
    SubscribedMessage(final int btV, final Message bue) {
        this.btV = btV;
        this.bUE = bue;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final Message Rj() {
        return this.bUE;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        boolean b;
        if (this == o) {
            b = true;
        }
        else {
            b = false;
            if (o != null) {
                final Class<? extends SubscribedMessage> class1 = this.getClass();
                final Class<?> class2 = o.getClass();
                b = false;
                if (class1 == class2) {
                    return E.b(this.bUE, ((SubscribedMessage)o).bUE);
                }
            }
        }
        return b;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bUE });
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        n.a(this, parcel, n);
    }
}
