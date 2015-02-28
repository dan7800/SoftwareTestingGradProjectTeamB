package com.android.emailcommon.provider;

import android.provider.*;
import android.net.*;
import android.os.*;
import com.android.mail.utils.*;
import org.json.*;
import android.database.*;
import android.text.*;
import java.util.*;
import android.content.*;

public class Credential extends EmailContent implements Parcelable, BaseColumns
{
    public static Uri CONTENT_URI;
    public static final Parcelable$Creator<Credential> CREATOR;
    public static final Credential XQ;
    public String NS;
    public String Qi;
    public String Qj;
    public long XR;
    
    static {
        XQ = new Credential("", "", "");
        CREATOR = (Parcelable$Creator)new b();
    }
    
    public Credential() {
        this.XU = Credential.CONTENT_URI;
    }
    
    public Credential(final Parcel parcel) {
        this.XU = Credential.CONTENT_URI;
        this.Ln = parcel.readLong();
        this.NS = parcel.readString();
        this.Qi = parcel.readString();
        this.Qj = parcel.readString();
        this.XR = parcel.readLong();
    }
    
    private Credential(final String ns, final String qi, final String qj) {
        this.XU = Credential.CONTENT_URI;
        this.Ln = -1L;
        this.NS = ns;
        this.Qi = qi;
        this.Qj = qj;
        this.XR = 0L;
    }
    
    protected static Credential b(final JSONObject jsonObject) {
        try {
            final Credential credential = new Credential();
            credential.NS = jsonObject.getString("provider");
            credential.Qi = jsonObject.optString("accessToken");
            credential.Qj = jsonObject.optString("refreshToken");
            credential.XR = jsonObject.optInt("expiration", 0);
            return credential;
        }
        catch (JSONException ex) {
            E.b(E.TAG, (Throwable)ex, "Exception while deserializing Credential", new Object[0]);
            return null;
        }
    }
    
    public static void lD() {
        Credential.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/credential");
    }
    
    public static Credential n(final Context context, final long n) {
        return EmailContent.a(context, Credential.class, Credential.CONTENT_URI, c.Lm, n);
    }
    
    @Override
    public final void b(final Cursor cursor) {
        this.XU = Credential.CONTENT_URI;
        this.Ln = cursor.getLong(0);
        this.NS = cursor.getString(1);
        this.Qi = cursor.getString(2);
        this.Qj = cursor.getString(3);
        this.XR = cursor.getInt(4);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public boolean equals(final Object o) {
        if (o instanceof Credential) {
            final Credential credential = (Credential)o;
            if (TextUtils.equals((CharSequence)this.NS, (CharSequence)credential.NS) && TextUtils.equals((CharSequence)this.Qi, (CharSequence)credential.Qi) && TextUtils.equals((CharSequence)this.Qj, (CharSequence)credential.Qj) && this.XR == credential.XR) {
                return true;
            }
        }
        return false;
    }
    
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.Qi, this.Qj, this.XR });
    }
    
    @Override
    public final ContentValues lB() {
        final ContentValues contentValues = new ContentValues();
        if (TextUtils.isEmpty((CharSequence)this.NS)) {
            E.g(E.TAG, "Credential being saved with no provider", new Object[0]);
        }
        contentValues.put("provider", this.NS);
        contentValues.put("accessToken", this.Qi);
        contentValues.put("refreshToken", this.Qj);
        contentValues.put("expiration", this.XR);
        return contentValues;
    }
    
    protected final JSONObject lC() {
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("provider", (Object)this.NS);
            jsonObject.putOpt("accessToken", (Object)this.Qi);
            jsonObject.putOpt("refreshToken", (Object)this.Qj);
            jsonObject.put("expiration", this.XR);
            return jsonObject;
        }
        catch (JSONException ex) {
            E.b(E.TAG, (Throwable)ex, "Exception while serializing Credential", new Object[0]);
            return null;
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeLong(this.Ln);
        parcel.writeString(this.NS);
        parcel.writeString(this.Qi);
        parcel.writeString(this.Qj);
        parcel.writeLong(this.XR);
    }
}
