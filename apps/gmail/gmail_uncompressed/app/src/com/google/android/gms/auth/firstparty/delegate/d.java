package com.google.android.gms.auth.firstparty.delegate;

import android.os.*;
import com.google.android.gms.auth.firstparty.shared.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<UpdateCredentialsWorkflowRequest>
{
    static void a(final UpdateCredentialsWorkflowRequest updateCredentialsWorkflowRequest, final Parcel parcel, final int n) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, updateCredentialsWorkflowRequest.version);
        b.a(parcel, 2, updateCredentialsWorkflowRequest.acw, false);
        b.a(parcel, 3, (Parcelable)updateCredentialsWorkflowRequest.bxQ, n, false);
        b.a(parcel, 4, updateCredentialsWorkflowRequest.byv);
        b.D(parcel, ae);
    }
}
