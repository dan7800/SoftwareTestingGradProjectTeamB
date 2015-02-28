package com.android.mail.ui;

import com.android.mail.providers.*;
import android.os.*;

public class LeaveBehindData implements Parcelable
{
    public static final Parcelable$ClassLoaderCreator<LeaveBehindData> CREATOR;
    final Conversation aKP;
    final ToastBarOperation aKQ;
    final int height;
    
    static {
        CREATOR = (Parcelable$ClassLoaderCreator)new cm();
    }
    
    private LeaveBehindData(final Parcel parcel, final ClassLoader classLoader) {
        this.aKP = (Conversation)parcel.readParcelable(classLoader);
        this.aKQ = (ToastBarOperation)parcel.readParcelable(classLoader);
        this.height = parcel.readInt();
    }
    
    public LeaveBehindData(final Conversation akp, final ToastBarOperation akq, final int height) {
        this.aKP = akp;
        this.aKQ = akq;
        this.height = height;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeParcelable((Parcelable)this.aKP, 0);
        parcel.writeParcelable((Parcelable)this.aKQ, 0);
        parcel.writeInt(this.height);
    }
}
