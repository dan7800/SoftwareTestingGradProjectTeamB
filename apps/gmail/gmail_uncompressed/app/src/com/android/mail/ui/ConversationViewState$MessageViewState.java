package com.android.mail.ui;

import android.os.*;

class ConversationViewState$MessageViewState implements Parcelable
{
    public static final Parcelable$Creator<ConversationViewState$MessageViewState> CREATOR;
    public Integer aIL;
    public boolean aIM;
    public boolean aza;
    
    static {
        CREATOR = (Parcelable$Creator)new bk();
    }
    
    public ConversationViewState$MessageViewState() {
    }
    
    private ConversationViewState$MessageViewState(final Parcel parcel) {
        boolean aim = true;
        this.aza = (parcel.readInt() != 0 && aim);
        final int int1 = parcel.readInt();
        Integer value;
        if (int1 == -1) {
            value = null;
        }
        else {
            value = int1;
        }
        this.aIL = value;
        if (parcel.readInt() == 0) {
            aim = false;
        }
        this.aIM = aim;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        int n3;
        if (this.aza) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        int intValue;
        if (this.aIL == null) {
            intValue = -1;
        }
        else {
            intValue = this.aIL;
        }
        parcel.writeInt(intValue);
        if (!this.aIM) {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
}
