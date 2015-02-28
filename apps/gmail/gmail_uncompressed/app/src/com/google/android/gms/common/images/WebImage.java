package com.google.android.gms.common.images;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class WebImage implements SafeParcelable
{
    public static final Parcelable$Creator<WebImage> CREATOR;
    private final Uri bEC;
    private final int bED;
    private final int bEE;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    WebImage(final int btV, final Uri bec, final int bed, final int bee) {
        this.btV = btV;
        this.bEC = bec;
        this.bED = bed;
        this.bEE = bee;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (o == null || !(o instanceof WebImage)) {
                return false;
            }
            final WebImage webImage = (WebImage)o;
            if (!E.b(this.bEC, webImage.bEC) || this.bED != webImage.bED || this.bEE != webImage.bEE) {
                return false;
            }
        }
        return true;
    }
    
    public final int getHeight() {
        return this.bEE;
    }
    
    public final Uri getUrl() {
        return this.bEC;
    }
    
    public final int getWidth() {
        return this.bED;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bEC, this.bED, this.bEE });
    }
    
    @Override
    public final String toString() {
        return String.format("Image %dx%d %s", this.bED, this.bEE, this.bEC.toString());
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel, n);
    }
}
