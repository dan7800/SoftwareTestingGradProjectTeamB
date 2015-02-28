package com.google.android.gm;

import com.google.android.gm.provider.*;
import java.util.*;
import android.os.*;

public class ConversationInfo implements Parcelable
{
    public static final Parcelable$Creator<ConversationInfo> CREATOR;
    private final long aPP;
    private final long aPQ;
    private final long aXn;
    private long aXo;
    private final boolean aXp;
    
    static {
        CREATOR = (Parcelable$Creator)new u();
    }
    
    private ConversationInfo(final long app, final long apq, final long aXn, final long aXo, final boolean aXp) {
        this.aPP = app;
        this.aPQ = apq;
        this.aXn = aXn;
        this.aXo = aXo;
        this.aXp = aXp;
    }
    
    private ConversationInfo(final long n, final long n2, final Map<String, T> map, final Set<Long> set, final D d) {
        this(n, 0L, 0L, n2, Gmail.i(map) || (d != null && set != null && set.contains(d.Es())));
    }
    
    private ConversationInfo(final long n, final long n2, final Map<String, T> map, final Set<Long> set, final D d, final byte b) {
        this(n, n2, map, set, d);
    }
    
    public static ConversationInfo a(final B b, final D d) {
        if (b.CW() == 0) {
            return null;
        }
        return new ConversationInfo(b.zC(), b.Ec(), b.Ed(), b.Eb(), d, (byte)0);
    }
    
    public final long CD() {
        return this.aPQ;
    }
    
    public final long CE() {
        return this.aXn;
    }
    
    public final long CF() {
        return this.aXo;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        boolean b = true;
        // monitorenter(this)
        if (o == this) {
            // monitorexit(this)
            return b;
        }
        if (o == null) {
            return false;
        }
        while (true) {
            try {
                if (o.getClass() != this.getClass()) {
                    return false;
                }
                final ConversationInfo conversationInfo = (ConversationInfo)o;
                if (this.aPP == conversationInfo.aPP && this.aPQ == conversationInfo.aPQ && this.aXn == conversationInfo.aXn && this.aXo == conversationInfo.aXo && this.aXp == conversationInfo.aXp) {
                    return b;
                }
            }
            finally {
            }
            // monitorexit(this)
            b = false;
            return b;
        }
    }
    
    @Override
    public int hashCode() {
        synchronized (this) {
            return Arrays.hashCode(new Object[] { this.aPP, this.aPQ, this.aXn, this.aXo, this.aXp });
        }
    }
    
    public final boolean uE() {
        synchronized (this) {
            return this.aXp;
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeLong(this.aPP);
        parcel.writeLong(this.aPQ);
        parcel.writeLong(this.aXn);
        parcel.writeLong(this.aXo);
        int n2;
        if (this.aXp) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
    
    public final long zC() {
        return this.aPP;
    }
}
