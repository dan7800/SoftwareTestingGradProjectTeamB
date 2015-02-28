package com.google.android.gms.drive.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.drive.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public class CreateFileRequest implements SafeParcelable
{
    public static final Parcelable$Creator<CreateFileRequest> CREATOR;
    final Contents bHf;
    final String bHh;
    final MetadataBundle bHk;
    final Integer bHl;
    final DriveId bHm;
    final boolean bHn;
    final int bHo;
    final int bHp;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new P();
    }
    
    CreateFileRequest(final int btV, final DriveId driveId, final MetadataBundle metadataBundle, final Contents bHf, final Integer bHl, final boolean bHn, final String bHh, final int bHo, final int bHp) {
        if (bHf != null && bHp != 0) {
            G.b(bHf.LS() == bHp, "inconsistent contents reference");
        }
        if ((bHl == null || bHl == 0) && bHf == null && bHp == 0) {
            throw new IllegalArgumentException("Need a valid contents");
        }
        this.btV = btV;
        this.bHm = G.ae(driveId);
        this.bHk = G.ae(metadataBundle);
        this.bHf = bHf;
        this.bHl = bHl;
        this.bHh = bHh;
        this.bHo = bHo;
        this.bHn = bHn;
        this.bHp = bHp;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        P.a(this, parcel, n);
    }
}
