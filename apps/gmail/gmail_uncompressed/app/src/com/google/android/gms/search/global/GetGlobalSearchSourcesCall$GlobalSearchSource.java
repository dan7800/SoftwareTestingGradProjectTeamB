package com.google.android.gms.search.global;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class GetGlobalSearchSourcesCall$GlobalSearchSource implements SafeParcelable
{
    public static final d CREATOR;
    final int btV;
    public String buA;
    public String buB;
    public int buy;
    public String buz;
    public GetGlobalSearchSourcesCall$CorpusInfo[] ckm;
    public boolean enabled;
    public int iconId;
    public int labelId;
    public String packageName;
    
    static {
        CREATOR = new d();
    }
    
    public GetGlobalSearchSourcesCall$GlobalSearchSource() {
        this.btV = 1;
    }
    
    GetGlobalSearchSourcesCall$GlobalSearchSource(final int btV, final String packageName, final int labelId, final int buy, final int iconId, final String buz, final String buA, final String buB, final GetGlobalSearchSourcesCall$CorpusInfo[] ckm, final boolean enabled) {
        this.btV = btV;
        this.packageName = packageName;
        this.labelId = labelId;
        this.buy = buy;
        this.iconId = iconId;
        this.buz = buz;
        this.buA = buA;
        this.buB = buB;
        this.ckm = ckm;
        this.enabled = enabled;
    }
    
    public int describeContents() {
        final d creator = GetGlobalSearchSourcesCall$GlobalSearchSource.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final d creator = GetGlobalSearchSourcesCall$GlobalSearchSource.CREATOR;
        d.a(this, parcel, n);
    }
}
