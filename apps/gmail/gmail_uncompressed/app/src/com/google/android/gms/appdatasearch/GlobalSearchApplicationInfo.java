package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import android.text.*;
import android.os.*;

public class GlobalSearchApplicationInfo implements SafeParcelable
{
    public static final J CREATOR;
    final int btV;
    public final String buA;
    public final String buB;
    public final int buy;
    public final String buz;
    public final int iconId;
    public final int labelId;
    final String packageName;
    
    static {
        CREATOR = new J();
    }
    
    GlobalSearchApplicationInfo(final int btV, final String packageName, final int labelId, final int buy, final int iconId, final String buz, final String buA, final String buB) {
        this.btV = btV;
        this.packageName = packageName;
        this.labelId = labelId;
        this.buy = buy;
        this.iconId = iconId;
        this.buz = buz;
        this.buA = buA;
        this.buB = buB;
    }
    
    public int describeContents() {
        final J creator = GlobalSearchApplicationInfo.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof GlobalSearchApplicationInfo)) {
                return false;
            }
            final GlobalSearchApplicationInfo globalSearchApplicationInfo = (GlobalSearchApplicationInfo)o;
            if (!TextUtils.equals((CharSequence)this.packageName, (CharSequence)globalSearchApplicationInfo.packageName) || this.labelId != globalSearchApplicationInfo.labelId || this.buy != globalSearchApplicationInfo.buy || this.iconId != globalSearchApplicationInfo.iconId || !TextUtils.equals((CharSequence)this.buz, (CharSequence)globalSearchApplicationInfo.buz) || !TextUtils.equals((CharSequence)this.buA, (CharSequence)globalSearchApplicationInfo.buA) || !TextUtils.equals((CharSequence)this.buB, (CharSequence)globalSearchApplicationInfo.buB)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public String toString() {
        return this.getClass().getSimpleName() + "{" + this.packageName + ";labelId=" + Integer.toHexString(this.labelId) + ";settingsDescriptionId=" + Integer.toHexString(this.buy) + ";iconId=" + Integer.toHexString(this.iconId) + ";defaultIntentAction=" + this.buz + ";defaultIntentData=" + this.buA + ";defaultIntentActivity=" + this.buB + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final J creator = GlobalSearchApplicationInfo.CREATOR;
        J.a(this, parcel);
    }
}
