package com.google.android.gm.provider;

import android.database.*;
import android.os.*;
import com.google.common.a.a.*;

public class Advertisement$AdvertisementOptions implements Parcelable
{
    public static final Parcelable$ClassLoaderCreator<Advertisement$AdvertisementOptions> CREATOR;
    public final boolean bcA;
    public final boolean bcB;
    public final boolean bcC;
    
    static {
        CREATOR = (Parcelable$ClassLoaderCreator)new d();
    }
    
    public Advertisement$AdvertisementOptions() {
        this.bcA = true;
        this.bcB = false;
        this.bcC = false;
    }
    
    public Advertisement$AdvertisementOptions(final Cursor cursor) {
        boolean bcC = true;
        this.bcA = (cursor.getInt(cursor.getColumnIndex("report_ad_server")) == (bcC ? 1 : 0) && bcC);
        this.bcB = (cursor.getInt(cursor.getColumnIndex("report_bow")) == (bcC ? 1 : 0) && bcC);
        if (cursor.getInt(cursor.getColumnIndex("send_body")) != (bcC ? 1 : 0)) {
            bcC = false;
        }
        this.bcC = bcC;
    }
    
    public Advertisement$AdvertisementOptions(final Parcel parcel) {
        boolean bcC = true;
        this.bcA = (parcel.readInt() == (bcC ? 1 : 0) && bcC);
        this.bcB = (parcel.readInt() == (bcC ? 1 : 0) && bcC);
        if (parcel.readInt() != (bcC ? 1 : 0)) {
            bcC = false;
        }
        this.bcC = bcC;
    }
    
    public Advertisement$AdvertisementOptions(final a a) {
        int n = 1;
        if (a.bJ(19)) {
            final a fy = a.fy(19);
            boolean bcA;
            if (fy.bJ(n) && fy.fx(n)) {
                bcA = (n != 0);
            }
            else {
                bcA = false;
            }
            this.bcA = bcA;
            boolean bcB;
            if (fy.bJ(2) && fy.fx(2)) {
                bcB = (n != 0);
            }
            else {
                bcB = false;
            }
            this.bcB = bcB;
            if (!fy.bJ(3) || !fy.fx(3)) {
                n = 0;
            }
            this.bcC = (n != 0);
            return;
        }
        this.bcA = (n != 0);
        this.bcB = false;
        this.bcC = false;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(super.toString());
        sb.append(", reportToAdServer: ").append(this.bcA);
        sb.append(", reportToBow: ").append(this.bcB);
        sb.append(", sendAdBody: ").append(this.bcC);
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        int n3;
        if (this.bcA) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        int n4;
        if (this.bcB) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        parcel.writeInt(n4);
        if (!this.bcC) {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
}
