package android.support.v4.c;

import android.os.*;

public final class a
{
    public static <T> Parcelable$Creator<T> a(final c<T> c) {
        if (Build$VERSION.SDK_INT >= 13) {
            new d(c);
        }
        return (Parcelable$Creator<T>)new b((c<Object>)c);
    }
}
