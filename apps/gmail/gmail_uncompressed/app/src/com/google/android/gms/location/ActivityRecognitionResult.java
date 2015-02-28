package com.google.android.gms.location;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class ActivityRecognitionResult implements SafeParcelable
{
    public static final a CREATOR;
    private final int btV;
    List<DetectedActivity> cal;
    long cam;
    long can;
    
    static {
        CREATOR = new a();
    }
    
    public ActivityRecognitionResult(final List<DetectedActivity> cal, final long cam, final long can) {
        this.btV = 1;
        this.cal = cal;
        this.cam = cam;
        this.can = can;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return "ActivityRecognitionResult [probableActivities=" + this.cal + ", timeMillis=" + this.cam + ", elapsedRealtimeMillis=" + this.can + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
