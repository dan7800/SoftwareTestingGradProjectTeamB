package com.android.mail.providers;

import android.os.*;
import java.util.*;

public class ConversationInfo implements Parcelable
{
    public static final Parcelable$Creator<ConversationInfo> CREATOR;
    public final ArrayList<ParticipantInfo> azL;
    public int azM;
    public int azN;
    public String azO;
    public String azP;
    public String azQ;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    public ConversationInfo() {
        this.azL = new ArrayList<ParticipantInfo>();
    }
    
    public ConversationInfo(final int azM) {
        this.azM = azM;
        this.azL = new ArrayList<ParticipantInfo>(azM);
    }
    
    private ConversationInfo(final Parcel parcel) {
        this.azM = parcel.readInt();
        this.azN = parcel.readInt();
        this.azO = parcel.readString();
        this.azP = parcel.readString();
        this.azQ = parcel.readString();
        this.azL = (ArrayList<ParticipantInfo>)parcel.createTypedArrayList((Parcelable$Creator)ParticipantInfo.CREATOR);
    }
    
    public static ConversationInfo c(final byte[] array) {
        if (array == null) {
            return null;
        }
        final Parcel obtain = Parcel.obtain();
        obtain.unmarshall(array, 0, array.length);
        obtain.setDataPosition(0);
        final ConversationInfo conversationInfo = (ConversationInfo)ConversationInfo.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return conversationInfo;
    }
    
    public final void a(final int azM, final int azN, final String azO, final String azP, final String azQ) {
        this.azL.clear();
        this.azM = azM;
        this.azN = azN;
        this.azO = azO;
        this.azP = azP;
        this.azQ = azQ;
    }
    
    public final void a(final ParticipantInfo participantInfo) {
        this.azL.add(participantInfo);
    }
    
    public final void b(final ConversationInfo conversationInfo) {
        this.azL.clear();
        this.azL.addAll(conversationInfo.azL);
        this.azM = conversationInfo.azM;
        this.azN = conversationInfo.azN;
        this.azO = conversationInfo.azO;
        this.azP = conversationInfo.azP;
        this.azQ = conversationInfo.azQ;
    }
    
    public final boolean bi(final boolean b) {
        final Iterator<ParticipantInfo> iterator = this.azL.iterator();
        boolean b2 = false;
        while (iterator.hasNext()) {
            b2 |= iterator.next().bi(b);
        }
        if (b) {
            this.azO = this.azQ;
            return b2;
        }
        this.azO = this.azP;
        return b2;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.azM, this.azN, this.azL, this.azO, this.azQ, this.azP });
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("[ConversationInfo object: messageCount = ");
        sb.append(this.azM);
        sb.append(", draftCount = ");
        sb.append(this.azN);
        sb.append(", firstSnippet= ");
        sb.append(this.azO);
        sb.append(", firstUnreadSnippet = ");
        sb.append(this.azP);
        sb.append(", participants = ");
        sb.append(this.azL.toString());
        sb.append("]");
        return sb.toString();
    }
    
    public final byte[] uN() {
        final Parcel obtain = Parcel.obtain();
        this.writeToParcel(obtain, 0);
        final byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.azM);
        parcel.writeInt(this.azN);
        parcel.writeString(this.azO);
        parcel.writeString(this.azP);
        parcel.writeString(this.azQ);
        parcel.writeTypedList((List)this.azL);
    }
}
