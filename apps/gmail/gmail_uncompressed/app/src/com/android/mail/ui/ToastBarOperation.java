package com.android.mail.ui;

import com.android.mail.providers.*;
import android.os.*;
import android.content.*;

public class ToastBarOperation implements Parcelable, ab
{
    public static final Parcelable$ClassLoaderCreator<ToastBarOperation> CREATOR;
    private final int LQ;
    private final int Zr;
    private final int aEr;
    private final boolean aKo;
    private final Folder aqp;
    
    static {
        CREATOR = (Parcelable$ClassLoaderCreator)new do();
    }
    
    public ToastBarOperation(final int lq, final int aEr, final int zr, final boolean aKo, final Folder aqp) {
        this.LQ = lq;
        this.aEr = aEr;
        this.aKo = aKo;
        this.Zr = zr;
        this.aqp = aqp;
    }
    
    public ToastBarOperation(final Parcel parcel, final ClassLoader classLoader) {
        this.LQ = parcel.readInt();
        this.aEr = parcel.readInt();
        this.aKo = (parcel.readInt() != 0);
        this.Zr = parcel.readInt();
        this.aqp = (Folder)parcel.readParcelable(classLoader);
    }
    
    public boolean Am() {
        return false;
    }
    
    public final String a(final Context context, final Folder folder) {
        if (this.aEr == 2131559031) {
            return context.getString(2131296518, new Object[] { folder.name });
        }
        int n;
        if (this.aEr == 2131559032) {
            n = 2131296516;
        }
        else if (this.aEr == 2131559030) {
            n = 2131296517;
        }
        else {
            n = -1;
        }
        if (n == -1) {
            return "";
        }
        return context.getString(n);
    }
    
    public void ar(final Context context) {
    }
    
    public String au(final Context context) {
        int n;
        if (this.aEr == 2131559032) {
            n = 2131820555;
        }
        else {
            if (this.aEr == 2131559031) {
                return context.getString(2131296518, new Object[] { this.aqp.name });
            }
            if (this.aEr == 2131559037) {
                n = 2131820556;
            }
            else {
                if (this.aEr == 2131558414) {
                    return context.getString(2131296519, new Object[] { this.aqp.name });
                }
                if (this.aEr == 2131559030) {
                    n = 2131820554;
                }
                else if (this.aEr == 2131559044) {
                    n = 2131820550;
                }
                else if (this.aEr == 2131559045) {
                    n = 2131820551;
                }
                else if (this.aEr == 2131559040) {
                    n = 2131820552;
                }
                else if (this.aEr == 2131559041) {
                    n = 2131820549;
                }
                else if (this.aEr == 2131559054) {
                    n = 2131820548;
                }
                else if (this.aEr == 2131559046) {
                    n = 2131820553;
                }
                else {
                    n = -1;
                }
            }
        }
        if (n == -1) {
            return "";
        }
        return String.format(context.getResources().getQuantityString(n, this.LQ), this.LQ);
    }
    
    public void av(final Context context) {
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final int getType() {
        return this.Zr;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append(super.toString());
        sb.append(" mAction=");
        sb.append(this.aEr);
        sb.append(" mCount=");
        sb.append(this.LQ);
        sb.append(" mBatch=");
        sb.append(this.aKo);
        sb.append(" mType=");
        sb.append(this.Zr);
        sb.append(" mFolder=");
        sb.append(this.aqp);
        sb.append("}");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.LQ);
        parcel.writeInt(this.aEr);
        int n2;
        if (this.aKo) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeInt(this.Zr);
        parcel.writeParcelable((Parcelable)this.aqp, 0);
    }
}
