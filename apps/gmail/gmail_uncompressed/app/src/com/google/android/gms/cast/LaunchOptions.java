package com.google.android.gms.cast;

import com.google.android.gms.common.internal.safeparcel.*;
import android.text.*;
import com.google.android.gms.internal.*;
import java.util.*;
import android.os.*;

public class LaunchOptions implements SafeParcelable
{
    public static final Parcelable$Creator<LaunchOptions> CREATOR;
    private boolean bBy;
    private String bBz;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    public LaunchOptions() {
        final Locale default1 = Locale.getDefault();
        final StringBuilder sb = new StringBuilder(20);
        sb.append(default1.getLanguage());
        final String country = default1.getCountry();
        if (!TextUtils.isEmpty((CharSequence)country)) {
            sb.append('-').append(country);
        }
        final String variant = default1.getVariant();
        if (!TextUtils.isEmpty((CharSequence)variant)) {
            sb.append('-').append(variant);
        }
        this(1, false, sb.toString());
    }
    
    LaunchOptions(final int btV, final boolean bBy, final String bBz) {
        this.btV = btV;
        this.bBy = bBy;
        this.bBz = bBz;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final boolean Kg() {
        return this.bBy;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof LaunchOptions)) {
                return false;
            }
            final LaunchOptions launchOptions = (LaunchOptions)o;
            if (this.bBy != launchOptions.bBy || !D.g(this.bBz, launchOptions.bBz)) {
                return false;
            }
        }
        return true;
    }
    
    public final String getLanguage() {
        return this.bBz;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bBy, this.bBz });
    }
    
    @Override
    public String toString() {
        return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s)", this.bBy, this.bBz);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
