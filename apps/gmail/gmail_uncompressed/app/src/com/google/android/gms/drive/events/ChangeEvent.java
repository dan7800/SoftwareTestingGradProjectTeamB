package com.google.android.gms.drive.events;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.*;
import java.util.*;
import android.os.*;

public final class ChangeEvent implements SafeParcelable, ResourceEvent
{
    public static final Parcelable$Creator<ChangeEvent> CREATOR;
    final int bGQ;
    final DriveId bGk;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    ChangeEvent(final int btV, final DriveId bGk, final int bgq) {
        this.btV = btV;
        this.bGk = bGk;
        this.bGQ = bgq;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final String toString() {
        return String.format(Locale.US, "ChangeEvent [id=%s,changeFlags=%x]", this.bGk, this.bGQ);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel, n);
    }
}
