package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.fitness.data.*;
import java.util.*;
import android.os.*;

public class DataReadRequest implements SafeParcelable
{
    public static final Parcelable$Creator<DataReadRequest> CREATOR;
    private final List<DataType> bKq;
    private final long bKr;
    private final long bKs;
    private final int bKw;
    private final boolean bMA;
    private final List<DataSource> bMp;
    private final List<DataType> bMt;
    private final List<DataSource> bMu;
    private final long bMv;
    private final DataSource bMw;
    private final int bMx;
    private final boolean bMy;
    private final boolean bMz;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    DataReadRequest(final int btV, final List<DataType> list, final List<DataSource> list2, final long bKr, final long bKs, final List<DataType> list3, final List<DataSource> list4, final int bKw, final long bMv, final DataSource bMw, final int bMx, final boolean bMy, final boolean bMz, final boolean bma) {
        this.btV = btV;
        this.bKq = Collections.unmodifiableList((List<? extends DataType>)list);
        this.bMp = Collections.unmodifiableList((List<? extends DataSource>)list2);
        this.bKr = bKr;
        this.bKs = bKs;
        this.bMt = Collections.unmodifiableList((List<? extends DataType>)list3);
        this.bMu = Collections.unmodifiableList((List<? extends DataSource>)list4);
        this.bKw = bKw;
        this.bMv = bMv;
        this.bMw = bMw;
        this.bMx = bMx;
        this.bMy = bMy;
        this.bMz = bMz;
        this.bMA = bma;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<DataType> Mr() {
        return this.bKq;
    }
    
    public final int Mv() {
        return this.bKw;
    }
    
    public final long Mx() {
        return this.bKr;
    }
    
    public final long My() {
        return this.bKs;
    }
    
    public final List<DataSource> Nc() {
        return this.bMp;
    }
    
    public final List<DataType> Ng() {
        return this.bMt;
    }
    
    public final List<DataSource> Nh() {
        return this.bMu;
    }
    
    public final DataSource Ni() {
        return this.bMw;
    }
    
    public final boolean Nj() {
        return this.bMy;
    }
    
    public final boolean Nk() {
        return this.bMA;
    }
    
    public final boolean Nl() {
        return this.bMz;
    }
    
    public final long Nm() {
        return this.bMv;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            final boolean b = o instanceof DataReadRequest;
            boolean b2 = false;
            if (!b) {
                return b2;
            }
            final DataReadRequest dataReadRequest = (DataReadRequest)o;
            int n;
            if (this.bKq.equals(dataReadRequest.bKq) && this.bMp.equals(dataReadRequest.bMp) && this.bKr == dataReadRequest.bKr && this.bKs == dataReadRequest.bKs && this.bKw == dataReadRequest.bKw && this.bMu.equals(dataReadRequest.bMu) && this.bMt.equals(dataReadRequest.bMt) && E.b(this.bMw, dataReadRequest.bMw) && this.bMv == dataReadRequest.bMv && this.bMA == dataReadRequest.bMA) {
                n = 1;
            }
            else {
                n = 0;
            }
            b2 = false;
            if (n == 0) {
                return b2;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.bKw, this.bKr, this.bKs });
    }
    
    public final int mx() {
        return this.bMx;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("DataReadRequest{");
        if (!this.bKq.isEmpty()) {
            final Iterator<DataType> iterator = this.bKq.iterator();
            while (iterator.hasNext()) {
                sb.append(iterator.next().MO()).append(" ");
            }
        }
        if (!this.bMp.isEmpty()) {
            final Iterator<DataSource> iterator2 = this.bMp.iterator();
            while (iterator2.hasNext()) {
                sb.append(iterator2.next().toDebugString()).append(" ");
            }
        }
        if (this.bKw != 0) {
            sb.append("bucket by ").append(Bucket.eE(this.bKw));
            if (this.bMv > 0L) {
                sb.append(" >").append(this.bMv).append("ms");
            }
            sb.append(": ");
        }
        if (!this.bMt.isEmpty()) {
            final Iterator<DataType> iterator3 = this.bMt.iterator();
            while (iterator3.hasNext()) {
                sb.append(iterator3.next().MO()).append(" ");
            }
        }
        if (!this.bMu.isEmpty()) {
            final Iterator<DataSource> iterator4 = this.bMu.iterator();
            while (iterator4.hasNext()) {
                sb.append(iterator4.next().toDebugString()).append(" ");
            }
        }
        sb.append(String.format("(%tF %tT - %tF %tT)", this.bKr, this.bKr, this.bKs, this.bKs));
        if (this.bMw != null) {
            sb.append("activities: ").append(this.bMw.toDebugString());
        }
        if (this.bMA) {
            sb.append(" +server");
        }
        sb.append("}");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.a(this, parcel, n);
    }
}
