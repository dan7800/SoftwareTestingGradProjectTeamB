package com.google.android.gms.identity.accounts.api;

import android.content.*;
import com.google.android.gms.common.internal.*;
import android.os.*;
import com.google.android.gms.common.internal.safeparcel.*;

public final class a
{
    static final e bQW;
    private static final d bQX;
    
    static {
        bQW = new b();
        bQX = new d(a.bQW);
    }
    
    public static boolean e(final Context context, final Intent intent) {
        final d bqx = a.bQX;
        return d.e(context, intent);
    }
    
    public static AccountData f(final Context context, final Intent intent) {
        final d bqx = a.bQX;
        G.f(context, "Context must not be null.");
        G.f(intent, "Intent must not be null.");
        if (!d.e(context, intent)) {
            return null;
        }
        final Parcelable$Creator<AccountData> creator = AccountData.CREATOR;
        final byte[] byteArrayExtra = intent.getByteArrayExtra("com.google.android.gms.accounts.ACCOUNT_DATA");
        SafeParcelable safeParcelable = null;
        if (byteArrayExtra != null) {
            G.ae((Parcelable$Creator)creator);
            final Parcel obtain = Parcel.obtain();
            obtain.unmarshall(byteArrayExtra, 0, byteArrayExtra.length);
            obtain.setDataPosition(0);
            safeParcelable = (SafeParcelable)creator.createFromParcel(obtain);
            obtain.recycle();
        }
        return (AccountData)safeParcelable;
    }
}
