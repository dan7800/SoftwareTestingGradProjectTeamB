package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class MessageFilter implements SafeParcelable
{
    public static final Parcelable$Creator<MessageFilter> CREATOR;
    private final int btV;
    private final List<MessageFilter$a> caP;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    MessageFilter(final int btV, final List<MessageFilter$a> list) {
        this.btV = btV;
        List<MessageFilter$a> unmodifiableList;
        if (list == null) {
            unmodifiableList = null;
        }
        else {
            unmodifiableList = Collections.unmodifiableList((List<? extends MessageFilter$a>)list);
        }
        this.caP = unmodifiableList;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<MessageFilter$a> Tb() {
        return this.caP;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("MessageFilter(count=").append(this.caP.size()).append(")\n");
        for (final MessageFilter$a messageFilter$a : this.caP) {
            sb.append("[0]: ");
            sb.append(messageFilter$a.toString()).append('\n');
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel);
    }
}
