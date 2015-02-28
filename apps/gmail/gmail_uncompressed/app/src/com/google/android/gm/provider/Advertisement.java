package com.google.android.gm.provider;

import com.android.mail.ui.*;
import com.android.mail.c.*;
import android.database.*;
import android.os.*;
import com.android.mail.utils.*;
import android.graphics.*;
import java.io.*;
import android.net.*;
import android.text.*;

public class Advertisement implements Parcelable, ch
{
    public static final Parcelable$ClassLoaderCreator<Advertisement> CREATOR;
    public static final a<Advertisement> aqh;
    private static final String mW;
    public boolean azc;
    public final String bcd;
    public final String bce;
    public final String bcf;
    public final String bcg;
    public final String bch;
    public final String bci;
    public final Bitmap bcj;
    public final String bck;
    public final long bcl;
    public final int bcm;
    public final String bcn;
    public int bco;
    public final String bcp;
    public final String bcq;
    public final String bcr;
    public int bcs;
    public final String bct;
    public final String bcu;
    public final String bcv;
    public final String bcw;
    public final String bcx;
    public final Advertisement$AdvertisementOptions bcy;
    public final String bcz;
    public final int id;
    
    static {
        mW = D.AU();
        aqh = new b();
        CREATOR = (Parcelable$ClassLoaderCreator)new c();
    }
    
    public Advertisement(final Cursor cursor) {
        boolean azc = true;
        this.id = cursor.getInt(cursor.getColumnIndex("_id"));
        this.bcd = cursor.getString(cursor.getColumnIndex("event_id"));
        this.bce = cursor.getString(cursor.getColumnIndex("advertiser_name"));
        this.bcf = cursor.getString(cursor.getColumnIndex("title"));
        this.bcg = cursor.getString(cursor.getColumnIndex("line1"));
        this.bch = cursor.getString(cursor.getColumnIndex("visible_url"));
        this.bci = cursor.getString(cursor.getColumnIndex("redirect_url"));
        this.bcj = f(cursor.getBlob(cursor.getColumnIndex("advertiser_image_data")));
        final int columnIndex = cursor.getColumnIndex("body");
        if (columnIndex == -1) {
            this.bck = null;
        }
        else {
            this.bck = cursor.getString(columnIndex);
        }
        this.bcl = cursor.getLong(cursor.getColumnIndex("expiration"));
        this.bcm = cursor.getInt(cursor.getColumnIndex("reason"));
        this.bcn = cursor.getString(cursor.getColumnIndex("apm_extra_targeting_data"));
        if (cursor.getInt(cursor.getColumnIndex("starred")) != (azc ? 1 : 0)) {
            azc = false;
        }
        this.azc = azc;
        this.bco = cursor.getInt(cursor.getColumnIndex("view_status"));
        this.bcp = cursor.getString(cursor.getColumnIndex("view"));
        this.bcq = cursor.getString(cursor.getColumnIndex("slot"));
        this.bcr = cursor.getString(cursor.getColumnIndex("apm_xsrf_token"));
        this.bcs = cursor.getInt(cursor.getColumnIndex("delete_status"));
        this.bct = cursor.getString(cursor.getColumnIndex("wta_data"));
        this.bcu = cursor.getString(cursor.getColumnIndex("view_url"));
        this.bcv = cursor.getString(cursor.getColumnIndex("click_url"));
        this.bcw = cursor.getString(cursor.getColumnIndex("interaction_url"));
        this.bcx = cursor.getString(cursor.getColumnIndex("obfuscated_data"));
        this.bcy = new Advertisement$AdvertisementOptions(cursor);
        this.bcz = cursor.getString(cursor.getColumnIndex("click_id"));
    }
    
    public Advertisement(final Parcel parcel, final ClassLoader classLoader) {
        this.id = parcel.readInt();
        this.bcd = parcel.readString();
        this.bce = parcel.readString();
        this.bcf = parcel.readString();
        this.bcg = parcel.readString();
        this.bch = parcel.readString();
        this.bci = parcel.readString();
        this.bcj = (Bitmap)parcel.readParcelable((ClassLoader)null);
        this.bck = parcel.readString();
        this.bcl = parcel.readLong();
        this.bcm = parcel.readInt();
        this.bcn = parcel.readString();
        this.azc = (parcel.readInt() == 1);
        this.bco = parcel.readInt();
        this.bcp = parcel.readString();
        this.bcq = parcel.readString();
        this.bcr = parcel.readString();
        this.bcs = parcel.readInt();
        this.bct = parcel.readString();
        this.bcu = parcel.readString();
        this.bcv = parcel.readString();
        this.bcw = parcel.readString();
        this.bcx = parcel.readString();
        if (parcel.readInt() == 0) {
            E.e(Advertisement.mW, new Throwable(), "Unexpected null advertisementOptions in Advertisement(Parcel)", new Object[0]);
            this.bcy = new Advertisement$AdvertisementOptions();
        }
        else {
            this.bcy = (Advertisement$AdvertisementOptions)parcel.readParcelable(classLoader);
        }
        this.bcz = parcel.readString();
    }
    
    public Advertisement(final com.google.common.a.a.a a, final String bcr) {
        this.id = -1;
        this.bcd = a.getString(1);
        this.bce = a.getString(2);
        this.bcf = a.getString(3);
        this.bcg = a.getString(4);
        this.bch = a.getString(5);
        this.bci = a.getString(13);
        this.bcj = f(a.getBytes(6));
        this.bck = a.getString(7);
        long long1;
        if (a.bJ(8)) {
            long1 = a.getLong(8);
        }
        else {
            long1 = 0L;
        }
        this.bcl = long1;
        int int1;
        if (a.bJ(9)) {
            int1 = a.getInt(9);
        }
        else {
            int1 = 0;
        }
        this.bcm = int1;
        this.bcn = a.getString(10);
        this.azc = false;
        this.bco = 0;
        this.bcp = a.getString(11);
        this.bcq = a.getString(12);
        this.bcr = bcr;
        this.bcs = 0;
        this.bct = a.getString(14);
        this.bcu = a.getString(15);
        this.bcv = a.getString(16);
        this.bcw = a.getString(17);
        this.bcx = a.getString(18);
        this.bcy = new Advertisement$AdvertisementOptions(a);
        this.bcz = null;
    }
    
    private static Bitmap f(final byte[] array) {
        if (array == null || array.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(array, 0, array.length);
    }
    
    public final byte[] DL() {
        if (this.bcj == null) {
            return null;
        }
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.bcj.compress(Bitmap$CompressFormat.PNG, 100, (OutputStream)byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
    
    public final Uri E(Uri build) {
        if (!TextUtils.isEmpty((CharSequence)this.bcz)) {
            build = build.buildUpon().appendQueryParameter("ci", this.bcz).build();
        }
        return build;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final long getId() {
        return this.id;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(super.toString());
        sb.append(" {Ad eventId: ").append(this.bcd);
        sb.append(", advertiserName: ").append(this.bce);
        sb.append(", title: ").append(this.bcf);
        sb.append(", line1: ").append(this.bcg);
        sb.append(", visibleUrl: ").append(this.bch);
        sb.append(", redirectUrl: ").append(this.bci);
        sb.append(", expiration: ").append(this.bcl);
        sb.append(", reason: ").append(this.bcm);
        sb.append(", apmExtraTargetingData: ").append(this.bcn);
        sb.append(", starred: ").append(this.azc);
        sb.append(", viewStatus: ").append(this.bco);
        sb.append(", view: ").append(this.bcp);
        sb.append(", slot: ").append(this.bcq);
        sb.append(", apmXsrfToken: ").append(this.bcr);
        sb.append(", deleteStatus: ").append(this.bcs);
        sb.append(", wtaData: ").append(this.bct);
        sb.append(", viewUrl: ").append(this.bcu);
        sb.append(", clickUrl: ").append(this.bcv);
        sb.append(", interactionUrl: ").append(this.bcw);
        sb.append(", obfuscatedData: ").append(this.bcx);
        sb.append(", advertisementOptions: ").append(this.bcy.toString());
        sb.append(", reportToBow: ").append(this.bcy.bcB);
        sb.append(", sendAdBody: ").append(this.bcy.bcC);
        sb.append(", clickId: ").append(this.bcz);
        sb.append("}");
        return sb.toString();
    }
    
    public final boolean vE() {
        return false;
    }
    
    public final String vF() {
        return this.bck;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.id);
        parcel.writeString(this.bcd);
        parcel.writeString(this.bce);
        parcel.writeString(this.bcf);
        parcel.writeString(this.bcg);
        parcel.writeString(this.bch);
        parcel.writeString(this.bci);
        parcel.writeParcelable((Parcelable)this.bcj, 0);
        parcel.writeString(this.bck);
        parcel.writeLong(this.bcl);
        parcel.writeInt(this.bcm);
        parcel.writeString(this.bcn);
        int n2;
        if (this.azc) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeInt(this.bco);
        parcel.writeString(this.bcp);
        parcel.writeString(this.bcq);
        parcel.writeString(this.bcr);
        parcel.writeInt(this.bcs);
        parcel.writeString(this.bct);
        parcel.writeString(this.bcu);
        parcel.writeString(this.bcv);
        parcel.writeString(this.bcw);
        parcel.writeString(this.bcx);
        if (this.bcy == null) {
            E.f(Advertisement.mW, "unexpected null advertisementOptions object in writeToParcel", new Object[0]);
            parcel.writeInt(0);
        }
        else {
            parcel.writeInt(1);
            parcel.writeParcelable((Parcelable)this.bcy, 0);
        }
        this.bcy.writeToParcel(parcel, n);
        parcel.writeString(this.bcz);
    }
}
