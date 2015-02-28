package com.google.android.gms.drive.events;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.drive.*;
import android.text.*;
import java.util.*;
import android.os.*;

public final class CompletionEvent implements SafeParcelable, ResourceEvent
{
    public static final Parcelable$Creator<CompletionEvent> CREATOR;
    final int bBx;
    final ParcelFileDescriptor bGR;
    final ParcelFileDescriptor bGS;
    final MetadataBundle bGT;
    final ArrayList<String> bGU;
    final IBinder bGV;
    private boolean bGW;
    private boolean bGX;
    private boolean bGY;
    final DriveId bGk;
    final int btV;
    final String bxh;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    CompletionEvent(final int btV, final DriveId bGk, final String bxh, final ParcelFileDescriptor bgr, final ParcelFileDescriptor bgs, final MetadataBundle bgt, final ArrayList<String> bgu, final int bBx, final IBinder bgv) {
        this.bGW = false;
        this.bGX = false;
        this.bGY = false;
        this.btV = btV;
        this.bGk = bGk;
        this.bxh = bxh;
        this.bGR = bgr;
        this.bGS = bgs;
        this.bGT = bgt;
        this.bGU = bgu;
        this.bBx = bBx;
        this.bGV = bgv;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final String toString() {
        String string;
        if (this.bGU == null) {
            string = "<null>";
        }
        else {
            string = "'" + TextUtils.join((CharSequence)"','", (Iterable)this.bGU) + "'";
        }
        return String.format(Locale.US, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", this.bGk, this.bBx, string);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
