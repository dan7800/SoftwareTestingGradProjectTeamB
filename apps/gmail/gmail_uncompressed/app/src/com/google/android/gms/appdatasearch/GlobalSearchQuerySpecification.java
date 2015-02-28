package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class GlobalSearchQuerySpecification implements SafeParcelable
{
    public static final L CREATOR;
    final int btV;
    final CorpusId[] buE;
    public final int buF;
    final CorpusScoringInfo[] buG;
    public final int buH;
    public final int buI;
    public final int buJ;
    private final transient Map<String, Set<String>> buK;
    private final transient Map<CorpusId, CorpusScoringInfo> buL;
    
    static {
        CREATOR = new L();
    }
    
    GlobalSearchQuerySpecification(final int btV, final CorpusId[] buE, final int buF, final CorpusScoringInfo[] buG, final int buH, final int buI, final int buJ) {
        int i = 0;
        this.btV = btV;
        this.buE = buE;
        this.buF = buF;
        this.buH = buH;
        this.buI = buI;
        this.buJ = buJ;
        this.buG = buG;
        if (buE == null || buE.length == 0) {
            this.buK = null;
        }
        else {
            this.buK = new HashMap<String, Set<String>>();
            for (int j = 0; j < buE.length; ++j) {
                Set<String> set = this.buK.get(buE[j].packageName);
                if (set == null) {
                    set = new HashSet<String>();
                    this.buK.put(buE[j].packageName, set);
                }
                if (buE[j].btW != null) {
                    set.add(buE[j].btW);
                }
            }
        }
        if (buG == null || buG.length == 0) {
            this.buL = null;
        }
        else {
            this.buL = new HashMap<CorpusId, CorpusScoringInfo>(buG.length);
            while (i < buG.length) {
                this.buL.put(buG[i].btX, buG[i]);
                ++i;
            }
        }
    }
    
    public int describeContents() {
        final L creator = GlobalSearchQuerySpecification.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final L creator = GlobalSearchQuerySpecification.CREATOR;
        L.a(this, parcel, n);
    }
}
