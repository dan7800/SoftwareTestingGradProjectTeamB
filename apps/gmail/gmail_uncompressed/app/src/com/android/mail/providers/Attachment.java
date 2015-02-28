package com.android.mail.providers;

import android.net.*;
import com.android.emailcommon.a.*;
import org.apache.a.a.*;
import com.android.emailcommon.mail.*;
import android.content.*;
import java.io.*;
import android.database.*;
import android.os.*;
import org.json.*;
import java.util.*;
import android.text.*;
import com.android.mail.utils.*;
import com.google.common.collect.*;

public class Attachment implements Parcelable
{
    public static final Parcelable$Creator<Attachment> CREATOR;
    public static final String mW;
    private String ayL;
    private String ayM;
    public int ayN;
    public int ayO;
    public Uri ayP;
    public Uri ayQ;
    public Uri ayR;
    public String ayS;
    private transient Uri ayT;
    private boolean ayU;
    public int flags;
    private String name;
    public String partId;
    public int size;
    public int state;
    public int type;
    public Uri uri;
    
    static {
        mW = D.AU();
        CREATOR = (Parcelable$Creator)new f();
    }
    
    public Attachment() {
    }
    
    public Attachment(final ContentValues contentValues) {
        this.name = contentValues.getAsString("_display_name");
        this.size = contentValues.getAsInteger("_size");
        this.uri = bJ(contentValues.getAsString("uri"));
        this.ayL = contentValues.getAsString("contentType");
        this.state = contentValues.getAsInteger("state");
        this.ayN = contentValues.getAsInteger("destination");
        this.ayO = contentValues.getAsInteger("downloadedSize");
        this.ayP = bJ(contentValues.getAsString("contentUri"));
        this.ayQ = bJ(contentValues.getAsString("thumbnailUri"));
        this.ayR = bJ(contentValues.getAsString("previewIntentUri"));
        this.ayS = contentValues.getAsString("providerData");
        this.ayU = contentValues.getAsBoolean("supportsDownloadAgain");
        this.type = contentValues.getAsInteger("type");
        this.flags = contentValues.getAsInteger("flags");
        this.partId = contentValues.getAsString("contentId");
    }
    
    public Attachment(final Context context, final j j, final Uri uri, final String s, final String partId, final boolean b) {
        while (true) {
            while (true) {
                try {
                    this.name = i.r(i.ag(j.getContentType()), "name");
                    if (this.name == null) {
                        this.name = i.r(i.ag(j.kP()), "filename");
                    }
                    this.ayL = I.u(this.name, j.getMimeType());
                    this.uri = EmlAttachmentProvider.c(uri, s, partId);
                    this.ayP = this.uri;
                    this.ayQ = this.uri;
                    this.ayR = null;
                    this.state = 3;
                    this.ayS = null;
                    this.ayU = false;
                    this.ayN = 0;
                    if (b) {
                        final int type = 1;
                        this.type = type;
                        this.partId = partId;
                        this.flags = 0;
                        final ContentResolver contentResolver = context.getContentResolver();
                        contentResolver.insert(this.uri, this.lB());
                        try {
                            final InputStream inputStream = j.kO().getInputStream();
                            final OutputStream openOutputStream = contentResolver.openOutputStream(this.uri, "rwt");
                            this.size = a.b(inputStream, openOutputStream);
                            this.ayO = this.size;
                            inputStream.close();
                            openOutputStream.close();
                            contentResolver.insert(this.uri, this.lB());
                            return;
                        }
                        catch (FileNotFoundException ex) {
                            E.e(Attachment.mW, ex, "Error in writing attachment to cache", new Object[0]);
                        }
                        catch (IOException ex2) {
                            E.e(Attachment.mW, ex2, "Error in writing attachment to cache", new Object[0]);
                        }
                    }
                }
                catch (MessagingException ex3) {}
                final int type = 0;
                continue;
            }
        }
    }
    
    public Attachment(final Cursor cursor) {
        boolean ayU = true;
        if (cursor == null) {
            return;
        }
        this.name = cursor.getString(cursor.getColumnIndex("_display_name"));
        this.size = cursor.getInt(cursor.getColumnIndex("_size"));
        this.uri = Uri.parse(cursor.getString(cursor.getColumnIndex("uri")));
        this.ayL = cursor.getString(cursor.getColumnIndex("contentType"));
        this.state = cursor.getInt(cursor.getColumnIndex("state"));
        this.ayN = cursor.getInt(cursor.getColumnIndex("destination"));
        this.ayO = cursor.getInt(cursor.getColumnIndex("downloadedSize"));
        this.ayP = bJ(cursor.getString(cursor.getColumnIndex("contentUri")));
        this.ayQ = bJ(cursor.getString(cursor.getColumnIndex("thumbnailUri")));
        this.ayR = bJ(cursor.getString(cursor.getColumnIndex("previewIntentUri")));
        this.ayS = cursor.getString(cursor.getColumnIndex("providerData"));
        if (cursor.getInt(cursor.getColumnIndex("supportsDownloadAgain")) != (ayU ? 1 : 0)) {
            ayU = false;
        }
        this.ayU = ayU;
        this.type = cursor.getInt(cursor.getColumnIndex("type"));
        this.flags = cursor.getInt(cursor.getColumnIndex("flags"));
    }
    
    public Attachment(final Parcel parcel) {
        this.name = parcel.readString();
        this.size = parcel.readInt();
        this.uri = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayL = parcel.readString();
        this.state = parcel.readInt();
        this.ayN = parcel.readInt();
        this.ayO = parcel.readInt();
        this.ayP = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayQ = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayR = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayS = parcel.readString();
        this.ayU = (parcel.readInt() == 1);
        this.type = parcel.readInt();
        this.flags = parcel.readInt();
    }
    
    public Attachment(final JSONObject jsonObject) {
        this.name = jsonObject.optString("_display_name", (String)null);
        this.size = jsonObject.optInt("_size");
        this.uri = a(jsonObject, "uri");
        this.ayL = jsonObject.optString("contentType", (String)null);
        this.state = jsonObject.optInt("state");
        this.ayN = jsonObject.optInt("destination");
        this.ayO = jsonObject.optInt("downloadedSize");
        this.ayP = a(jsonObject, "contentUri");
        this.ayQ = a(jsonObject, "thumbnailUri");
        this.ayR = a(jsonObject, "previewIntentUri");
        this.ayS = jsonObject.optString("providerData");
        this.ayU = jsonObject.optBoolean("supportsDownloadAgain", true);
        this.type = jsonObject.optInt("type");
        this.flags = jsonObject.optInt("flags");
    }
    
    private static String R(final Object o) {
        if (o != null) {
            return o.toString();
        }
        return null;
    }
    
    private static Uri a(final JSONObject jsonObject, final String s) {
        final String optString = jsonObject.optString(s, (String)null);
        if (optString == null) {
            return null;
        }
        return Uri.parse(optString);
    }
    
    private static Uri bJ(final String s) {
        if (s == null) {
            return null;
        }
        return Uri.parse(s);
    }
    
    public static List<Attachment> bK(final String s) {
        final ArrayList<Attachment> list = new ArrayList<Attachment>();
        if (s != null) {
            try {
                final JSONArray jsonArray = new JSONArray(s);
                for (int i = 0; i < jsonArray.length(); ++i) {
                    list.add(new Attachment(jsonArray.getJSONObject(i)));
                }
            }
            catch (JSONException ex) {
                throw new IllegalArgumentException((Throwable)ex);
            }
        }
        return list;
    }
    
    public static int d(final int n, final int n2, final int n3, final boolean b) {
        final int n4 = 1 << n3 + n2 * 2;
        if (b) {
            return n4 | n;
        }
        return n & ~n4;
    }
    
    private ContentValues lB() {
        final ContentValues contentValues = new ContentValues(12);
        contentValues.put("_display_name", this.name);
        contentValues.put("_size", this.size);
        contentValues.put("uri", this.uri.toString());
        contentValues.put("contentType", this.ayL);
        contentValues.put("state", this.state);
        contentValues.put("destination", this.ayN);
        contentValues.put("downloadedSize", this.ayO);
        contentValues.put("contentUri", this.ayP.toString());
        contentValues.put("thumbnailUri", this.ayQ.toString());
        String string;
        if (this.ayR == null) {
            string = null;
        }
        else {
            string = this.ayR.toString();
        }
        contentValues.put("previewIntentUri", string);
        contentValues.put("providerData", this.ayS);
        contentValues.put("supportsDownloadAgain", this.ayU);
        contentValues.put("type", this.type);
        contentValues.put("flags", this.flags);
        contentValues.put("contentId", this.partId);
        return contentValues;
    }
    
    public static String n(final Collection<? extends Attachment> collection) {
        if (collection == null) {
            return null;
        }
        final JSONArray jsonArray = new JSONArray();
        try {
            final Iterator<? extends Attachment> iterator = collection.iterator();
            while (iterator.hasNext()) {
                jsonArray.put((Object)((Attachment)iterator.next()).up());
            }
        }
        catch (JSONException ex) {
            throw new IllegalArgumentException((Throwable)ex);
        }
        return jsonArray.toString();
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            final Attachment attachment = (Attachment)o;
            if (this.ayN != attachment.ayN) {
                return false;
            }
            if (this.ayO != attachment.ayO) {
                return false;
            }
            if (this.size != attachment.size) {
                return false;
            }
            if (this.state != attachment.state) {
                return false;
            }
            if (this.ayU != attachment.ayU) {
                return false;
            }
            if (this.type != attachment.type) {
                return false;
            }
            Label_0137: {
                if (this.ayL != null) {
                    if (this.ayL.equals(attachment.ayL)) {
                        break Label_0137;
                    }
                }
                else if (attachment.ayL == null) {
                    break Label_0137;
                }
                return false;
            }
            Label_0167: {
                if (this.ayP != null) {
                    if (this.ayP.equals((Object)attachment.ayP)) {
                        break Label_0167;
                    }
                }
                else if (attachment.ayP == null) {
                    break Label_0167;
                }
                return false;
            }
            Label_0197: {
                if (this.name != null) {
                    if (this.name.equals(attachment.name)) {
                        break Label_0197;
                    }
                }
                else if (attachment.name == null) {
                    break Label_0197;
                }
                return false;
            }
            Label_0227: {
                if (this.partId != null) {
                    if (this.partId.equals(attachment.partId)) {
                        break Label_0227;
                    }
                }
                else if (attachment.partId == null) {
                    break Label_0227;
                }
                return false;
            }
            Label_0257: {
                if (this.ayR != null) {
                    if (this.ayR.equals((Object)attachment.ayR)) {
                        break Label_0257;
                    }
                }
                else if (attachment.ayR == null) {
                    break Label_0257;
                }
                return false;
            }
            Label_0287: {
                if (this.ayS != null) {
                    if (this.ayS.equals(attachment.ayS)) {
                        break Label_0287;
                    }
                }
                else if (attachment.ayS == null) {
                    break Label_0287;
                }
                return false;
            }
            Label_0317: {
                if (this.ayQ != null) {
                    if (this.ayQ.equals((Object)attachment.ayQ)) {
                        break Label_0317;
                    }
                }
                else if (attachment.ayQ == null) {
                    break Label_0317;
                }
                return false;
            }
            if (this.uri != null) {
                if (this.uri.equals((Object)attachment.uri)) {
                    return true;
                }
            }
            else if (attachment.uri == null) {
                return true;
            }
            return false;
        }
        return true;
    }
    
    public final String getContentType() {
        if (TextUtils.isEmpty((CharSequence)this.ayM)) {
            this.ayM = I.u(this.name, this.ayL);
        }
        return this.ayM;
    }
    
    public final String getName() {
        return this.name;
    }
    
    @Override
    public int hashCode() {
        int hashCode;
        if (this.partId != null) {
            hashCode = this.partId.hashCode();
        }
        else {
            hashCode = 0;
        }
        final int n = hashCode * 31;
        int hashCode2;
        if (this.name != null) {
            hashCode2 = this.name.hashCode();
        }
        else {
            hashCode2 = 0;
        }
        final int n2 = 31 * (31 * (hashCode2 + n) + this.size);
        int hashCode3;
        if (this.uri != null) {
            hashCode3 = this.uri.hashCode();
        }
        else {
            hashCode3 = 0;
        }
        final int n3 = 31 * (hashCode3 + n2);
        int hashCode4;
        if (this.ayL != null) {
            hashCode4 = this.ayL.hashCode();
        }
        else {
            hashCode4 = 0;
        }
        final int n4 = 31 * (31 * (31 * (31 * (hashCode4 + n3) + this.state) + this.ayN) + this.ayO);
        int hashCode5;
        if (this.ayP != null) {
            hashCode5 = this.ayP.hashCode();
        }
        else {
            hashCode5 = 0;
        }
        final int n5 = 31 * (hashCode5 + n4);
        int hashCode6;
        if (this.ayQ != null) {
            hashCode6 = this.ayQ.hashCode();
        }
        else {
            hashCode6 = 0;
        }
        final int n6 = 31 * (hashCode6 + n5);
        int hashCode7;
        if (this.ayR != null) {
            hashCode7 = this.ayR.hashCode();
        }
        else {
            hashCode7 = 0;
        }
        final int n7 = 31 * (31 * (hashCode7 + n6) + this.type);
        int hashCode8;
        if (this.ayS != null) {
            hashCode8 = this.ayS.hashCode();
        }
        else {
            hashCode8 = 0;
        }
        final int n8 = 31 * (hashCode8 + n7);
        final boolean ayU = this.ayU;
        int n9 = 0;
        if (ayU) {
            n9 = 1;
        }
        return n8 + n9;
    }
    
    public final void setContentType(final String ayL) {
        if (!TextUtils.equals((CharSequence)this.ayL, (CharSequence)ayL)) {
            this.ayM = null;
            this.ayL = ayL;
        }
    }
    
    public boolean setName(final String name) {
        if (!TextUtils.equals((CharSequence)this.name, (CharSequence)name)) {
            this.ayM = null;
            this.name = name;
            return true;
        }
        return false;
    }
    
    public final void setState(final int state) {
        this.state = state;
        if (state == 1 || state == 0) {
            this.ayO = 0;
        }
    }
    
    @Override
    public String toString() {
        try {
            final JSONObject up = this.up();
            up.put("partId", (Object)this.partId);
            Label_0046: {
                if (this.ayS == null) {
                    break Label_0046;
                }
                try {
                    up.put("providerData", (Object)new JSONObject(this.ayS));
                    return up.toString(4);
                }
                catch (JSONException ex) {
                    try {
                        E.e(Attachment.mW, (Throwable)ex, "JSONException when adding provider data", new Object[0]);
                    }
                    catch (JSONException ex2) {
                        E.e(Attachment.mW, (Throwable)ex2, "JSONException in toString", new Object[0]);
                        return super.toString();
                    }
                }
            }
        }
        catch (JSONException) {}
    }
    
    public final Uri uA() {
        if (ag.D(this.ayT)) {
            Uri ayT;
            if (ag.D(this.uri)) {
                if (ag.D(this.ayP)) {
                    ayT = Uri.EMPTY;
                }
                else {
                    ayT = this.ayP;
                }
            }
            else {
                ayT = this.uri.buildUpon().clearQuery().build();
            }
            this.ayT = ayT;
        }
        return this.ayT;
    }
    
    public final boolean uB() {
        return this.type != 0;
    }
    
    public String uC() {
        final String[] array = new String[9];
        String partId;
        if (this.partId == null) {
            partId = "";
        }
        else {
            partId = this.partId;
        }
        array[0] = partId;
        String replaceAll;
        if (this.name == null) {
            replaceAll = "";
        }
        else {
            replaceAll = this.name.replaceAll("[|\n]", "");
        }
        array[1] = replaceAll;
        array[2] = this.getContentType();
        array[3] = String.valueOf(this.size);
        array[4] = this.getContentType();
        String s;
        if (this.ayP != null) {
            s = "SERVER_ATTACHMENT";
        }
        else {
            s = "LOCAL_FILE";
        }
        array[5] = s;
        String string;
        if (this.ayP != null) {
            string = this.ayP.toString();
        }
        else {
            string = "";
        }
        array[6] = string;
        array[7] = "";
        array[8] = String.valueOf(this.type);
        return TextUtils.join((CharSequence)"|", (Iterable)Lists.n(array));
    }
    
    public JSONObject up() {
        final JSONObject jsonObject = new JSONObject();
        jsonObject.put("_display_name", (Object)this.name);
        jsonObject.put("_size", this.size);
        jsonObject.put("uri", (Object)R(this.uri));
        jsonObject.put("contentType", (Object)this.ayL);
        jsonObject.put("state", this.state);
        jsonObject.put("destination", this.ayN);
        jsonObject.put("downloadedSize", this.ayO);
        jsonObject.put("contentUri", (Object)R(this.ayP));
        jsonObject.put("thumbnailUri", (Object)R(this.ayQ));
        jsonObject.put("previewIntentUri", (Object)R(this.ayR));
        jsonObject.put("providerData", (Object)this.ayS);
        jsonObject.put("supportsDownloadAgain", this.ayU);
        jsonObject.put("type", this.type);
        jsonObject.put("flags", this.flags);
        return jsonObject;
    }
    
    public final boolean uq() {
        return this.state == 3;
    }
    
    public final boolean ur() {
        return !this.uu() && !I.cz(this.getContentType());
    }
    
    public final boolean us() {
        return this.uq() && this.ayP != null;
    }
    
    public final boolean ut() {
        return this.state == 2 || this.state == 5;
    }
    
    public final boolean uu() {
        return this.state == 3 && this.ayN == 1;
    }
    
    public final boolean uv() {
        return I.cz(this.getContentType());
    }
    
    public final boolean uw() {
        return (this.state == 2 || this.state == 5) && this.size > 0 && this.ayO > 0 && this.ayO <= this.size;
    }
    
    public final boolean ux() {
        return this.state == 1;
    }
    
    public final boolean uy() {
        return this.state == 1 || this.state == 3;
    }
    
    public final boolean uz() {
        return this.ayU;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.name);
        parcel.writeInt(this.size);
        parcel.writeParcelable((Parcelable)this.uri, n);
        parcel.writeString(this.ayL);
        parcel.writeInt(this.state);
        parcel.writeInt(this.ayN);
        parcel.writeInt(this.ayO);
        parcel.writeParcelable((Parcelable)this.ayP, n);
        parcel.writeParcelable((Parcelable)this.ayQ, n);
        parcel.writeParcelable((Parcelable)this.ayR, n);
        parcel.writeString(this.ayS);
        int n2;
        if (this.ayU) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeInt(this.type);
        parcel.writeInt(n);
    }
}
