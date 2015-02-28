package com.google.android.gms.auth.firstparty.delegate;

import android.os.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a implements Parcelable$Creator<ConfirmCredentialsWorkflowRequest>
{
    static void a(final ConfirmCredentialsWorkflowRequest confirmCredentialsWorkflowRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, confirmCredentialsWorkflowRequest.version);
        b.a(parcel, 2, confirmCredentialsWorkflowRequest.acw, false);
        b.a(parcel, 3, (Parcelable)confirmCredentialsWorkflowRequest.bxQ, n, false);
        b.a(parcel, 4, confirmCredentialsWorkflowRequest.byv);
        b.D(parcel, ae);
    }
}
