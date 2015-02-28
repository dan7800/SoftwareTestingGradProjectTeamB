package com.android.mail.providers;

import android.os.*;
import com.android.mail.utils.*;
import org.json.*;

public class ListParams implements Parcelable
{
    public static final Parcelable$Creator<ListParams> CREATOR;
    private static final String mW;
    public final boolean aAT;
    public final int aaL;
    
    static {
        mW = D.AU();
        CREATOR = (Parcelable$Creator)new s();
    }
    
    public ListParams(final int aaL, final boolean aat) {
        this.aaL = aaL;
        this.aAT = aat;
    }
    
    public ListParams(final Parcel parcel) {
        this.aaL = parcel.readInt();
        this.aAT = (parcel.readInt() != 0);
    }
    
    public static ListParams bT(final String s) {
        try {
            final JSONObject jsonObject = new JSONObject(s);
            return new ListParams(jsonObject.getInt("limit"), jsonObject.getBoolean("use-network"));
        }
        catch (JSONException ex) {
            E.f(ListParams.mW, (Throwable)ex, "Could not create an params object from this input: \"" + s, new Object[0]);
            return null;
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String ud() {
        synchronized (this) {
            final JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("limit", this.aaL);
                jsonObject.put("use-network", this.aAT);
                return jsonObject.toString();
            }
            catch (JSONException ex) {
                E.f(ListParams.mW, (Throwable)ex, "Could not serialize ListParams", new Object[0]);
            }
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.aaL);
        int n2;
        if (this.aAT) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
}
