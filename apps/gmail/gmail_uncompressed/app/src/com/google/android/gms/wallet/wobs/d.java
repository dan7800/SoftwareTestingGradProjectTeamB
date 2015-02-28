package com.google.android.gms.wallet.wobs;

import android.os.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class d implements Parcelable$Creator<LabelValueRow>
{
    static void a(final LabelValueRow labelValueRow, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, labelValueRow.Jt());
        b.a(parcel, 2, labelValueRow.cmv, false);
        b.a(parcel, 3, labelValueRow.cmw, false);
        b.b(parcel, 4, labelValueRow.cmx, false);
        b.D(parcel, ae);
    }
}
