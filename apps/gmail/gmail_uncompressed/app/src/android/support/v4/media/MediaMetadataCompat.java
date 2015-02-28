package android.support.v4.media;

import android.support.v4.f.*;
import android.os.*;

public final class MediaMetadataCompat implements Parcelable
{
    public static final Parcelable$Creator<MediaMetadataCompat> CREATOR;
    private static final a<String, Integer> fs;
    private final Bundle ft;
    
    static {
        (fs = new a<String, Integer>()).put("android.media.metadata.TITLE", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.ARTIST", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.DURATION", 0);
        MediaMetadataCompat.fs.put("android.media.metadata.ALBUM", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.AUTHOR", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.WRITER", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.COMPOSER", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.COMPILATION", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.DATE", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.YEAR", 0);
        MediaMetadataCompat.fs.put("android.media.metadata.GENRE", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.TRACK_NUMBER", 0);
        MediaMetadataCompat.fs.put("android.media.metadata.NUM_TRACKS", 0);
        MediaMetadataCompat.fs.put("android.media.metadata.DISC_NUMBER", 0);
        MediaMetadataCompat.fs.put("android.media.metadata.ALBUM_ARTIST", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.ART", 2);
        MediaMetadataCompat.fs.put("android.media.metadata.ART_URI", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.ALBUM_ART", 2);
        MediaMetadataCompat.fs.put("android.media.metadata.ALBUM_ART_URI", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.USER_RATING", 3);
        MediaMetadataCompat.fs.put("android.media.metadata.RATING", 3);
        MediaMetadataCompat.fs.put("android.media.metadata.DISPLAY_TITLE", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        MediaMetadataCompat.fs.put("android.media.metadata.DISPLAY_ICON", 2);
        MediaMetadataCompat.fs.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        CREATOR = (Parcelable$Creator)new android.support.v4.media.a();
    }
    
    private MediaMetadataCompat(final Parcel parcel) {
        this.ft = parcel.readBundle();
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBundle(this.ft);
    }
}
