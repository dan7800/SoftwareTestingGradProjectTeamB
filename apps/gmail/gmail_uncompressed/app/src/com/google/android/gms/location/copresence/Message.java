package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import android.text.*;
import java.util.*;
import android.os.*;

public final class Message implements SafeParcelable
{
    public static final Parcelable$Creator<Message> CREATOR;
    private final int btV;
    private final String bzB;
    @Deprecated
    private final String caN;
    private final byte[] caO;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    Message(final int btV, final String caN, final String bzB, final byte[] caO) {
        this.btV = btV;
        this.caN = caN;
        this.bzB = bzB;
        this.caO = caO;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof Message)) {
                return false;
            }
            final Message message = (Message)o;
            if (!TextUtils.equals((CharSequence)this.bzB, (CharSequence)message.bzB) || !Arrays.equals(this.caO, message.caO)) {
                return false;
            }
        }
        return true;
    }
    
    public final String getNamespace() {
        return this.caN;
    }
    
    public final byte[] getPayload() {
        return this.caO;
    }
    
    public final String getType() {
        return this.bzB;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bzB, Arrays.hashCode(this.caO) });
    }
    
    @Override
    public final String toString() {
        return "Message[" + this.bzB + "]";
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
