package com.google.android.gms.d;

import com.google.android.gms.common.*;
import android.util.*;
import android.content.*;
import android.os.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.api.*;

final class b implements q
{
    @Override
    public final void a(final a a) {
        if (aF.DEBUG) {
            Log.d("Herrevad", "failed to connect to network quality service");
        }
        if (a.getErrorCode() != 7 && a.getErrorCode() != 8) {
            a.cgd = false;
        }
    }
}
