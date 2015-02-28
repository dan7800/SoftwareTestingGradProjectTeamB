package com.google.android.gms.location;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<ActivityRecognitionResult>
{
    static void a(final ActivityRecognitionResult activityRecognitionResult, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.b(parcel, 1, activityRecognitionResult.cal, false);
        b.d(parcel, 1000, activityRecognitionResult.Jt());
        b.a(parcel, 2, activityRecognitionResult.cam);
        b.a(parcel, 3, activityRecognitionResult.can);
        b.D(parcel, ae);
    }
}
