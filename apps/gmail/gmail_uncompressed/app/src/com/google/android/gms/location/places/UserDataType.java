package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class UserDataType implements SafeParcelable
{
    public static final l CREATOR;
    public static final UserDataType cei;
    public static final UserDataType cej;
    public static final UserDataType cek;
    public static final Set<UserDataType> cel;
    final int btV;
    final String bzB;
    final int cem;
    
    static {
        cei = p("test_type", 1);
        cej = p("trellis_store", 2);
        cek = p("labeled_place", 6);
        cel = Collections.unmodifiableSet((Set<? extends UserDataType>)new HashSet<UserDataType>(Arrays.asList(UserDataType.cei, UserDataType.cej, UserDataType.cek)));
        CREATOR = new l();
    }
    
    UserDataType(final int btV, final String bzB, final int cem) {
        G.fX(bzB);
        this.btV = btV;
        this.bzB = bzB;
        this.cem = cem;
    }
    
    private static UserDataType p(final String s, final int n) {
        return new UserDataType(0, s, n);
    }
    
    public final int describeContents() {
        final l creator = UserDataType.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof UserDataType)) {
                return false;
            }
            final UserDataType userDataType = (UserDataType)o;
            if (!this.bzB.equals(userDataType.bzB) || this.cem != userDataType.cem) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return this.bzB.hashCode();
    }
    
    @Override
    public final String toString() {
        return this.bzB;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final l creator = UserDataType.CREATOR;
        l.a(this, parcel);
    }
}
