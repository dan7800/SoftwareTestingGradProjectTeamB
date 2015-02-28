package com.google.android.gms.reminders;

import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;

public final class a implements Parcelable$Creator<LoadRemindersOptions>
{
    static void a(final LoadRemindersOptions loadRemindersOptions, final Parcel parcel) {
        final int ae = b.ae(parcel);
        b.d(parcel, 1, loadRemindersOptions.btV);
        b.a(parcel, loadRemindersOptions.Vo());
        b.a(parcel, 3, loadRemindersOptions.Vp(), false);
        b.a(parcel, 4, loadRemindersOptions.Vq());
        b.D(parcel, ae);
    }
}
