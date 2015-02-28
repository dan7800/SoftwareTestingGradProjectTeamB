package com.google.android.gms.reminders;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class LoadRemindersOptions implements SafeParcelable
{
    public static final Parcelable$Creator<LoadRemindersOptions> CREATOR;
    public final int btV;
    private final List<Long> ckc;
    private final List<String> ckd;
    private final List<Integer> cke;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    LoadRemindersOptions(final int btV, final List<Long> ckc, final List<String> ckd, final List<Integer> cke) {
        this.btV = btV;
        this.ckc = ckc;
        this.ckd = ckd;
        this.cke = cke;
    }
    
    public final List<Long> Vo() {
        return this.ckc;
    }
    
    public final List<String> Vp() {
        return this.ckd;
    }
    
    public final List<Integer> Vq() {
        return this.cke;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
