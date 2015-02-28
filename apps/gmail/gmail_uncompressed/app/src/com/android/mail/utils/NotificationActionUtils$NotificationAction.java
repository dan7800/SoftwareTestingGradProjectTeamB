package com.android.mail.utils;

import com.android.mail.providers.*;
import android.os.*;

public class NotificationActionUtils$NotificationAction implements Parcelable
{
    public static final Parcelable$ClassLoaderCreator<NotificationActionUtils$NotificationAction> CREATOR;
    private final Account Nc;
    private final String YQ;
    private final NotificationActionUtils$NotificationActionType aPO;
    private final long aPP;
    private final long aPQ;
    private final long aPR;
    private final int aPS;
    private final int aPT;
    private final Message ald;
    private final Conversation amr;
    private final Folder aqp;
    
    static {
        CREATOR = (Parcelable$ClassLoaderCreator)new K();
    }
    
    private NotificationActionUtils$NotificationAction(final Parcel parcel, final ClassLoader classLoader) {
        this.aPO = NotificationActionUtils$NotificationActionType.values()[parcel.readInt()];
        this.Nc = (Account)parcel.readParcelable(classLoader);
        this.amr = (Conversation)parcel.readParcelable(classLoader);
        this.ald = (Message)parcel.readParcelable(classLoader);
        this.aqp = (Folder)parcel.readParcelable(classLoader);
        this.aPP = parcel.readLong();
        this.YQ = parcel.readString();
        this.aPQ = parcel.readLong();
        this.aPR = parcel.readLong();
        this.aPS = parcel.readInt();
        this.aPT = parcel.readInt();
    }
    
    public NotificationActionUtils$NotificationAction(final NotificationActionUtils$NotificationActionType apo, final Account nc, final Conversation amr, final Message ald, final Folder aqp, final long app, final String yq, final long apq, final long apr, final int aps, final int apt) {
        this.aPO = apo;
        this.Nc = nc;
        this.amr = amr;
        this.ald = ald;
        this.aqp = aqp;
        this.aPP = app;
        this.YQ = yq;
        this.aPQ = apq;
        this.aPR = apr;
        this.aPS = aps;
        this.aPT = apt;
    }
    
    public final NotificationActionUtils$NotificationActionType AV() {
        return this.aPO;
    }
    
    public final Message AW() {
        return this.ald;
    }
    
    public final int AX() {
        return this.aPT;
    }
    
    public final int AY() {
        switch (J.aPN[this.aPO.ordinal()]) {
            default: {
                throw new IllegalStateException("There is no action text for this NotificationActionType.");
            }
            case 3: {
                if (this.aqp.uR()) {
                    return 2131296629;
                }
                return 2131296630;
            }
            case 4: {
                return 2131296631;
            }
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final int getSource() {
        return this.aPS;
    }
    
    public final long getWhen() {
        return this.aPR;
    }
    
    public final Account oN() {
        return this.Nc;
    }
    
    public final Conversation pg() {
        return this.amr;
    }
    
    public final Folder vT() {
        return this.aqp;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.aPO.ordinal());
        parcel.writeParcelable((Parcelable)this.Nc, 0);
        parcel.writeParcelable((Parcelable)this.amr, 0);
        parcel.writeParcelable((Parcelable)this.ald, 0);
        parcel.writeParcelable((Parcelable)this.aqp, 0);
        parcel.writeLong(this.aPP);
        parcel.writeString(this.YQ);
        parcel.writeLong(this.aPQ);
        parcel.writeLong(this.aPR);
        parcel.writeInt(this.aPS);
        parcel.writeInt(this.aPT);
    }
}
