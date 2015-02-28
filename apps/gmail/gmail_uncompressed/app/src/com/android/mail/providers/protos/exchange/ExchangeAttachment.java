package com.android.mail.providers.protos.exchange;

import com.android.mail.providers.*;
import android.os.*;

public class ExchangeAttachment extends Attachment
{
    public static final Parcelable$Creator<ExchangeAttachment> CREATOR;
    public String aCE;
    public long aCF;
    public String aCG;
    public long aCH;
    public String content;
    public int flags;
    public String location;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public ExchangeAttachment(final Parcel parcel) {
        super(parcel);
        this.aCE = parcel.readString();
        this.aCF = parcel.readLong();
        this.location = parcel.readString();
        this.aCG = parcel.readString();
        this.content = parcel.readString();
        this.flags = parcel.readInt();
        this.aCH = parcel.readLong();
    }
    
    @Override
    public int describeContents() {
        return 0;
    }
    
    @Override
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeString(this.aCE);
        parcel.writeLong(this.aCF);
        parcel.writeString(this.location);
        parcel.writeString(this.aCG);
        parcel.writeString(this.content);
        parcel.writeInt(n);
        parcel.writeLong(this.aCH);
    }
}
