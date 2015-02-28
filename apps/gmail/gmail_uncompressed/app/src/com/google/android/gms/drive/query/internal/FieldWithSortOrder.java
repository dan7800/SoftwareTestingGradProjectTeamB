package com.google.android.gms.drive.query.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class FieldWithSortOrder implements SafeParcelable
{
    public static final c CREATOR;
    final String bIb;
    final boolean bIu;
    final int btV;
    
    static {
        CREATOR = new c();
    }
    
    FieldWithSortOrder(final int btV, final String bIb, final boolean bIu) {
        this.btV = btV;
        this.bIb = bIb;
        this.bIu = bIu;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        final Locale us = Locale.US;
        final Object[] array = { this.bIb, null };
        String s;
        if (this.bIu) {
            s = "ASC";
        }
        else {
            s = "DESC";
        }
        array[1] = s;
        return String.format(us, "FieldWithSortOrder[%s %s]", array);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
