package com.google.android.gms.auth.firstparty.delegate;

import android.os.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class b implements Parcelable$Creator<SetupAccountWorkflowRequest>
{
    static void a(final SetupAccountWorkflowRequest setupAccountWorkflowRequest, final Parcel parcel, final int n) {
        final int ae = com.google.android.gms.common.internal.safeparcel.b.ae(parcel);
        com.google.android.gms.common.internal.safeparcel.b.d(parcel, 1, setupAccountWorkflowRequest.version);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, setupAccountWorkflowRequest.bzs);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, setupAccountWorkflowRequest.bzt);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, setupAccountWorkflowRequest.bzu, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, setupAccountWorkflowRequest.byv);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable)setupAccountWorkflowRequest.bxQ, n, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, setupAccountWorkflowRequest.bzv);
        com.google.android.gms.common.internal.safeparcel.b.D(parcel, ae);
    }
}
