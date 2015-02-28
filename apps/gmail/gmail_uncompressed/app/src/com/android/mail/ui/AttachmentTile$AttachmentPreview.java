package com.android.mail.ui;

import android.graphics.*;
import android.os.*;
import com.android.mail.providers.*;

public final class AttachmentTile$AttachmentPreview implements Parcelable
{
    public static final Parcelable$Creator<AttachmentTile$AttachmentPreview> CREATOR;
    public String aGk;
    public Bitmap aGl;
    
    static {
        CREATOR = (Parcelable$Creator)new am();
    }
    
    private AttachmentTile$AttachmentPreview(final Parcel parcel) {
        this.aGk = parcel.readString();
        this.aGl = (Bitmap)parcel.readParcelable((ClassLoader)null);
    }
    
    public AttachmentTile$AttachmentPreview(final Attachment attachment, final Bitmap aGl) {
        this.aGk = attachment.uA().toString();
        this.aGl = aGl;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.aGk);
        parcel.writeParcelable((Parcelable)this.aGl, 0);
    }
}
