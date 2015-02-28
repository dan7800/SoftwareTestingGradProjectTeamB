package android.support.v4.media.session;

import android.os.*;
import android.text.*;

public final class PlaybackStateCompat implements Parcelable
{
    public static final Parcelable$Creator<PlaybackStateCompat> CREATOR;
    private final int ao;
    private final long fA;
    private final CharSequence fB;
    private final long fC;
    private final long fx;
    private final long fy;
    private final float fz;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    private PlaybackStateCompat(final Parcel parcel) {
        this.ao = parcel.readInt();
        this.fx = parcel.readLong();
        this.fz = parcel.readFloat();
        this.fC = parcel.readLong();
        this.fy = parcel.readLong();
        this.fA = parcel.readLong();
        this.fB = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder("PlaybackState {");
        sb.append("state=").append(this.ao);
        sb.append(", position=").append(this.fx);
        sb.append(", buffered position=").append(this.fy);
        sb.append(", speed=").append(this.fz);
        sb.append(", updated=").append(this.fC);
        sb.append(", actions=").append(this.fA);
        sb.append(", error=").append(this.fB);
        sb.append("}");
        return sb.toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.ao);
        parcel.writeLong(this.fx);
        parcel.writeFloat(this.fz);
        parcel.writeLong(this.fC);
        parcel.writeLong(this.fy);
        parcel.writeLong(this.fA);
        TextUtils.writeToParcel(this.fB, parcel, n);
    }
}
