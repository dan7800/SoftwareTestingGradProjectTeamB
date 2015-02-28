package com.google.android.gms.location.copresence;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class m implements Parcelable$Creator<People>
{
    static void a(final People people, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, people.Jt());
        b.a(parcel, 2, people.Ti(), false);
        b.d(parcel, 3, people.Tj());
        b.D(parcel, ae);
    }
}
