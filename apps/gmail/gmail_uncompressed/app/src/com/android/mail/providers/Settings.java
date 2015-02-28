package com.android.mail.providers;

import android.net.*;
import android.database.*;
import com.google.android.mail.common.base.*;
import android.os.*;
import com.android.mail.utils.*;
import android.text.*;
import com.google.common.base.*;
import java.util.*;
import org.json.*;

public class Settings implements Parcelable
{
    public static final Parcelable$Creator<Settings> CREATOR;
    static final Settings aBM;
    private static final Settings aCk;
    private static final String mW;
    public final String aBN;
    private final int aBO;
    private Integer aBP;
    public final int aBQ;
    public final int aBR;
    public final int aBS;
    public final boolean aBT;
    public final boolean aBU;
    public final boolean aBV;
    public final int aBW;
    public final Uri aBX;
    public final String aBY;
    public final boolean aBZ;
    public final int aCa;
    public final int aCb;
    public final boolean aCc;
    public final boolean aCd;
    public final Uri aCe;
    public final String aCf;
    public final int aCg;
    public final int aCh;
    public final Uri aCi;
    private int aCj;
    
    static {
        mW = D.AU();
        aCk = (aBM = new Settings());
        CREATOR = (Parcelable$Creator)new B();
    }
    
    private Settings() {
        this.aBP = null;
        this.aBN = "";
        this.aBO = 3;
        this.aBQ = 0;
        this.aBR = 0;
        this.aBS = 1;
        this.aBT = false;
        this.aBU = false;
        this.aBV = false;
        this.aBX = Uri.EMPTY;
        this.aBY = "";
        this.aBZ = false;
        this.aCa = 0;
        this.aCb = 0;
        this.aCc = false;
        this.aCd = false;
        this.aCe = Uri.EMPTY;
        this.aBW = -1;
        this.aCf = null;
        this.aCi = Uri.EMPTY;
        this.aCg = 1;
        this.aCh = -1;
    }
    
    public Settings(final Cursor cursor) {
        boolean aCd = true;
        this.aBP = null;
        this.aBN = K.gJ(cursor.getString(cursor.getColumnIndex("signature")));
        this.aBO = cursor.getInt(cursor.getColumnIndex("auto_advance"));
        this.aBQ = cursor.getInt(cursor.getColumnIndex("snap_headers"));
        this.aBR = cursor.getInt(cursor.getColumnIndex("reply_behavior"));
        this.aBS = cursor.getInt(cursor.getColumnIndex("conversation_list_icon"));
        this.aBT = (cursor.getInt(cursor.getColumnIndex("confirm_delete")) != 0 && aCd);
        this.aBU = (cursor.getInt(cursor.getColumnIndex("confirm_archive")) != 0 && aCd);
        this.aBV = (cursor.getInt(cursor.getColumnIndex("confirm_send")) != 0 && aCd);
        this.aBX = ag.bO(cursor.getString(cursor.getColumnIndex("default_inbox")));
        this.aBY = K.gJ(cursor.getString(cursor.getColumnIndex("default_inbox_name")));
        this.aBZ = (cursor.getInt(cursor.getColumnIndex("force_reply_from_default")) != 0 && aCd);
        this.aCa = cursor.getInt(cursor.getColumnIndex("max_attachment_size"));
        this.aCb = cursor.getInt(cursor.getColumnIndex("swipe"));
        this.aCc = (cursor.getInt(cursor.getColumnIndex("importance_markers_enabled")) != 0 && aCd);
        if (cursor.getInt(cursor.getColumnIndex("show_chevrons_enabled")) == 0) {
            aCd = false;
        }
        this.aCd = aCd;
        this.aCe = ag.bO(cursor.getString(cursor.getColumnIndex("setup_intent_uri")));
        this.aBW = cursor.getInt(cursor.getColumnIndex("conversation_view_mode"));
        this.aCf = K.gJ(cursor.getString(cursor.getColumnIndex("veiled_address_pattern")));
        this.aCi = ag.bO(cursor.getString(cursor.getColumnIndex("move_to_inbox")));
        this.aCg = cursor.getInt(cursor.getColumnIndex("show_images"));
        this.aCh = cursor.getInt(cursor.getColumnIndex("welcome_tour_shown_version"));
    }
    
    public Settings(final Parcel parcel) {
        boolean aCd = true;
        this.aBP = null;
        this.aBN = parcel.readString();
        this.aBO = parcel.readInt();
        this.aBQ = parcel.readInt();
        this.aBR = parcel.readInt();
        this.aBS = parcel.readInt();
        this.aBT = (parcel.readInt() != 0 && aCd);
        this.aBU = (parcel.readInt() != 0 && aCd);
        this.aBV = (parcel.readInt() != 0 && aCd);
        this.aBX = ag.bO(parcel.readString());
        this.aBY = parcel.readString();
        this.aBZ = (parcel.readInt() != 0 && aCd);
        this.aCa = parcel.readInt();
        this.aCb = parcel.readInt();
        this.aCc = (parcel.readInt() != 0 && aCd);
        if (parcel.readInt() == 0) {
            aCd = false;
        }
        this.aCd = aCd;
        this.aCe = ag.bO(parcel.readString());
        this.aBW = parcel.readInt();
        this.aCf = parcel.readString();
        this.aCi = ag.bO(parcel.readString());
        this.aCg = parcel.readInt();
        this.aCh = parcel.readInt();
    }
    
    private Settings(final JSONObject jsonObject) {
        this.aBP = null;
        this.aBN = jsonObject.optString("signature", Settings.aCk.aBN);
        this.aBO = jsonObject.optInt("auto_advance", Settings.aCk.vH());
        this.aBQ = jsonObject.optInt("snap_headers", Settings.aCk.aBQ);
        this.aBR = jsonObject.optInt("reply_behavior", Settings.aCk.aBR);
        this.aBS = jsonObject.optInt("conversation_list_icon", Settings.aCk.aBS);
        this.aBT = jsonObject.optBoolean("confirm_delete", Settings.aCk.aBT);
        this.aBU = jsonObject.optBoolean("confirm_archive", Settings.aCk.aBU);
        this.aBV = jsonObject.optBoolean("confirm_send", Settings.aCk.aBV);
        this.aBX = ag.bO(jsonObject.optString("default_inbox"));
        this.aBY = jsonObject.optString("default_inbox_name", Settings.aCk.aBY);
        this.aBZ = jsonObject.optBoolean("force_reply_from_default", Settings.aCk.aBZ);
        this.aCa = jsonObject.optInt("max_attachment_size", Settings.aCk.aCa);
        this.aCb = jsonObject.optInt("swipe", Settings.aCk.aCb);
        this.aCc = jsonObject.optBoolean("importance_markers_enabled", Settings.aCk.aCc);
        this.aCd = jsonObject.optBoolean("show_chevrons_enabled", Settings.aCk.aCd);
        this.aCe = ag.bO(jsonObject.optString("setup_intent_uri"));
        this.aBW = jsonObject.optInt("conversation_view_mode", -1);
        this.aCf = jsonObject.optString("veiled_address_pattern", (String)null);
        this.aCi = ag.bO(jsonObject.optString("move_to_inbox"));
        this.aCg = jsonObject.optInt("show_images", Settings.aCk.aCg);
        this.aCh = jsonObject.optInt("welcome_tour_shown_version", Settings.aCk.aCh);
    }
    
    public static Uri a(final Settings settings) {
        if (settings == null) {
            return Settings.aCk.aBX;
        }
        final Uri abx = settings.aBX;
        Uri abx2 = Settings.aCk.aBX;
        if (abx != null) {
            abx2 = abx;
        }
        return abx2;
    }
    
    public static int b(final Settings settings) {
        if (settings != null) {
            return settings.aCb;
        }
        return Settings.aCk.aCb;
    }
    
    public static Settings e(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return null;
        }
        return new Settings(jsonObject);
    }
    
    public final Map<String, Object> c(Map<String, Object> hashMap) {
        int n = 1;
        if (hashMap == null) {
            hashMap = new HashMap<String, String>();
        }
        hashMap.put("signature", this.aBN);
        hashMap.put("auto_advance", (String)this.vH());
        hashMap.put("snap_headers", (String)this.aBQ);
        hashMap.put("reply_behavior", (String)this.aBR);
        hashMap.put("conversation_list_icon", (String)this.aBS);
        int n2;
        if (this.aBT) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        hashMap.put("confirm_delete", (String)n2);
        int n3;
        if (this.aBU) {
            n3 = n;
        }
        else {
            n3 = 0;
        }
        hashMap.put("confirm_archive", (String)n3);
        int n4;
        if (this.aBV) {
            n4 = n;
        }
        else {
            n4 = 0;
        }
        hashMap.put("confirm_send", (String)n4);
        hashMap.put("default_inbox", (String)this.aBX);
        hashMap.put("default_inbox_name", this.aBY);
        int n5;
        if (this.aBZ) {
            n5 = n;
        }
        else {
            n5 = 0;
        }
        hashMap.put("force_reply_from_default", (String)n5);
        hashMap.put("max_attachment_size", (String)this.aCa);
        hashMap.put("swipe", (String)this.aCb);
        int n6;
        if (this.aCc) {
            n6 = n;
        }
        else {
            n6 = 0;
        }
        hashMap.put("importance_markers_enabled", (String)n6);
        if (!this.aCd) {
            n = 0;
        }
        hashMap.put("show_chevrons_enabled", (String)n);
        hashMap.put("setup_intent_uri", (String)this.aCe);
        hashMap.put("conversation_view_mode", (String)this.aBW);
        hashMap.put("veiled_address_pattern", this.aCf);
        hashMap.put("move_to_inbox", (String)this.aCi);
        hashMap.put("show_images", (String)this.aCg);
        hashMap.put("welcome_tour_shown_version", (String)this.aCh);
        return (Map<String, Object>)hashMap;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        E.c(Settings.mW, "Settings.equals(%s)", o);
        if (this != o) {
            if (o == null || o.getClass() != this.getClass()) {
                return false;
            }
            final Settings settings = (Settings)o;
            boolean equals;
            if (this.aBP != null) {
                equals = this.aBP.equals(settings.aBP);
            }
            else if (settings.aBP == null) {
                equals = true;
            }
            else {
                equals = false;
            }
            if (!TextUtils.equals((CharSequence)this.aBN, (CharSequence)settings.aBN) || this.aBO != settings.aBO || !equals || this.aBQ != settings.aBQ || this.aBR != settings.aBR || this.aBS != settings.aBS || this.aBT != settings.aBT || this.aBU != settings.aBU || this.aBV != settings.aBV || !e.b(this.aBX, settings.aBX) || this.aBZ != settings.aBZ || this.aCa != settings.aCa || this.aCb != settings.aCb || this.aCc != settings.aCc || this.aCd != settings.aCd || this.aCe != settings.aCe || this.aBW != settings.aBW || !TextUtils.equals((CharSequence)this.aCf, (CharSequence)settings.aCf) || !e.b(this.aCi, settings.aCi) || this.aCh != settings.aCh) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        if (this.aCj == 0) {
            this.aCj = (super.hashCode() ^ Arrays.hashCode(new Object[] { this.aBN, this.aBO, this.aBP, this.aBQ, this.aBR, this.aBS, this.aBT, this.aBU, this.aBV, this.aBX, this.aBZ, this.aCa, this.aCb, this.aCc, this.aCd, this.aCe, this.aBW, this.aCf, this.aCi, this.aCh }));
        }
        return this.aCj;
    }
    
    public final JSONObject up() {
        synchronized (this) {
            final JSONObject jsonObject = new JSONObject();
            try {
                final String abn = this.aBN;
                String abn2 = Settings.aCk.aBN;
                if (abn != null) {
                    abn2 = abn;
                }
                jsonObject.put("signature", (Object)abn2);
                jsonObject.put("auto_advance", this.vH());
                jsonObject.put("snap_headers", this.aBQ);
                jsonObject.put("reply_behavior", this.aBR);
                jsonObject.put("conversation_list_icon", this.aBS);
                jsonObject.put("confirm_delete", this.aBT);
                jsonObject.put("confirm_archive", this.aBU);
                jsonObject.put("confirm_send", this.aBV);
                final Uri abx = this.aBX;
                Uri abx2 = Settings.aCk.aBX;
                if (abx != null) {
                    abx2 = abx;
                }
                jsonObject.put("default_inbox", (Object)abx2);
                final String aby = this.aBY;
                String aby2 = Settings.aCk.aBY;
                if (aby != null) {
                    aby2 = aby;
                }
                jsonObject.put("default_inbox_name", (Object)aby2);
                jsonObject.put("force_reply_from_default", this.aBZ);
                jsonObject.put("max_attachment_size", this.aCa);
                jsonObject.put("swipe", this.aCb);
                jsonObject.put("importance_markers_enabled", this.aCc);
                jsonObject.put("show_chevrons_enabled", this.aCd);
                jsonObject.put("setup_intent_uri", (Object)this.aCe);
                jsonObject.put("conversation_view_mode", this.aBW);
                jsonObject.put("veiled_address_pattern", (Object)this.aCf);
                final Uri aCi = this.aCi;
                Uri aCi2 = Settings.aCk.aCi;
                if (aCi != null) {
                    aCi2 = aCi;
                }
                jsonObject.put("move_to_inbox", (Object)aCi2);
                jsonObject.put("show_images", this.aCg);
                jsonObject.put("welcome_tour_shown_version", this.aCh);
                return jsonObject;
            }
            catch (JSONException ex) {
                E.f(Settings.mW, (Throwable)ex, "Could not serialize settings", new Object[0]);
            }
        }
    }
    
    public final int vH() {
        if (this.aBP != null) {
            return this.aBP;
        }
        return this.aBO;
    }
    
    public final boolean vI() {
        int abw;
        if (this.aBW != -1) {
            abw = this.aBW;
        }
        else {
            abw = 0;
        }
        boolean b = false;
        if (abw == 0) {
            b = true;
        }
        return b;
    }
    
    public final int vJ() {
        if (this.aCa <= 0) {
            return 5242880;
        }
        return this.aCa;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        final String abn = this.aBN;
        String abn2 = Settings.aCk.aBN;
        if (abn != null) {
            abn2 = abn;
        }
        parcel.writeString((String)abn2);
        parcel.writeInt(this.vH());
        parcel.writeInt(this.aBQ);
        parcel.writeInt(this.aBR);
        parcel.writeInt(this.aBS);
        int n3;
        if (this.aBT) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        int n4;
        if (this.aBU) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        parcel.writeInt(n4);
        int n5;
        if (this.aBV) {
            n5 = n2;
        }
        else {
            n5 = 0;
        }
        parcel.writeInt(n5);
        final Uri abx = this.aBX;
        Uri abx2 = Settings.aCk.aBX;
        if (abx != null) {
            abx2 = abx;
        }
        parcel.writeString(abx2.toString());
        final String aby = this.aBY;
        String aby2 = Settings.aCk.aBY;
        if (aby != null) {
            aby2 = aby;
        }
        parcel.writeString((String)aby2);
        int n6;
        if (this.aBZ) {
            n6 = n2;
        }
        else {
            n6 = 0;
        }
        parcel.writeInt(n6);
        parcel.writeInt(this.aCa);
        parcel.writeInt(this.aCb);
        int n7;
        if (this.aCc) {
            n7 = n2;
        }
        else {
            n7 = 0;
        }
        parcel.writeInt(n7);
        if (!this.aCd) {
            n2 = 0;
        }
        parcel.writeInt(n2);
        final Uri aCe = this.aCe;
        Uri aCe2 = Settings.aCk.aCe;
        if (aCe != null) {
            aCe2 = aCe;
        }
        parcel.writeString(aCe2.toString());
        parcel.writeInt(this.aBW);
        parcel.writeString(this.aCf);
        final Uri aCi = this.aCi;
        Uri aCi2 = Settings.aCk.aCi;
        if (aCi != null) {
            aCi2 = aCi;
        }
        parcel.writeString(aCi2.toString());
        parcel.writeInt(this.aCg);
        parcel.writeInt(this.aCh);
    }
}
