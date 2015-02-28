package com.google.android.gms.common.people.data;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public final class c implements Parcelable$Creator<AudienceMember>
{
    static void a(final AudienceMember audienceMember, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, audienceMember.getType());
        b.d(parcel, 1000, audienceMember.Jt());
        b.d(parcel, 2, audienceMember.Lr());
        b.a(parcel, 3, audienceMember.Ls(), false);
        b.a(parcel, 4, audienceMember.Lt(), false);
        b.a(parcel, 5, audienceMember.getDisplayName(), false);
        b.a(parcel, 6, audienceMember.Iw(), false);
        b.a(parcel, 7, audienceMember.KJ());
        b.D(parcel, ae);
    }
}
