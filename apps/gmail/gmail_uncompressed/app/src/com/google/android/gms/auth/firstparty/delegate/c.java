package com.google.android.gms.auth.firstparty.delegate;

import android.os.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class c implements Parcelable$Creator<TokenWorkflowRequest>
{
    static void a(final TokenWorkflowRequest tokenWorkflowRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, tokenWorkflowRequest.version);
        b.a(parcel, 2, tokenWorkflowRequest.byV, false);
        b.a(parcel, 3, tokenWorkflowRequest.acw, false);
        b.a(parcel, 4, tokenWorkflowRequest.byv);
        b.a(parcel, 5, (Parcelable)tokenWorkflowRequest.byW, n, false);
        b.a(parcel, 6, (Parcelable)tokenWorkflowRequest.byX, n, false);
        b.a(parcel, 7, tokenWorkflowRequest.bzw);
        b.a(parcel, 8, (Parcelable)tokenWorkflowRequest.bxQ, n, false);
        b.D(parcel, ae);
    }
}
