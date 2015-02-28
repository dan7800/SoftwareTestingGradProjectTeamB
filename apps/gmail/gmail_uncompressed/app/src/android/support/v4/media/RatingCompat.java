package android.support.v4.media;

import android.os.*;

public final class RatingCompat implements Parcelable
{
    public static final Parcelable$Creator<RatingCompat> CREATOR;
    private final int fu;
    private final float fv;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    private RatingCompat(final int fu, final float fv) {
        this.fu = fu;
        this.fv = fv;
    }
    
    public final int describeContents() {
        return this.fu;
    }
    
    @Override
    public final String toString() {
        final StringBuilder append = new StringBuilder("Rating:style=").append(this.fu).append(" rating=");
        String value;
        if (this.fv < 0.0f) {
            value = "unrated";
        }
        else {
            value = String.valueOf(this.fv);
        }
        return append.append(value).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.fu);
        parcel.writeFloat(this.fv);
    }
}
