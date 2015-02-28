package android.support.v4.media.session;

import android.os.*;

public final class MediaSessionCompat$Token implements Parcelable
{
    public static final Parcelable$Creator<MediaSessionCompat$Token> CREATOR;
    private final Parcelable fw;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    MediaSessionCompat$Token(final Parcelable fw) {
        this.fw = fw;
    }
    
    public final int describeContents() {
        return this.fw.describeContents();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeParcelable(this.fw, n);
    }
}
