package com.android.mail.providers;

import com.android.mail.c.*;
import android.net.*;
import android.accounts.*;
import android.database.*;
import com.google.android.mail.common.base.*;
import android.text.*;
import com.android.mail.utils.*;
import android.os.*;
import com.google.common.base.*;
import org.json.*;
import java.util.*;

public class Account implements Parcelable
{
    public static final Parcelable$ClassLoaderCreator<Account> CREATOR;
    public static final a<Account> aqh;
    private static Class<? extends c> ayI;
    private static c ayJ;
    private static final String mW;
    static final /* synthetic */ boolean vb;
    private final String acv;
    public final Uri ayA;
    public final int ayB;
    public final String ayC;
    public final Uri ayD;
    public final String ayE;
    public final int ayF;
    public final String ayG;
    private transient List<ReplyFromAccount> ayH;
    private final String ayb;
    private final String ayc;
    private String ayd;
    private android.accounts.Account aye;
    public final int ayf;
    public final int ayg;
    public final Uri ayh;
    public Uri ayi;
    public Uri ayj;
    public final Uri ayk;
    public String ayl;
    public final Uri aym;
    public final Uri ayn;
    public final Uri ayo;
    public final Uri ayp;
    public final Uri ayq;
    public final Uri ayr;
    public final int ays;
    public final Uri ayt;
    public final Uri ayu;
    public final Uri ayv;
    public final Settings ayw;
    public final Uri ayx;
    public final Uri ayy;
    public final Uri ayz;
    public final int color;
    public final String mimeType;
    private final String type;
    public final Uri uri;
    
    static {
        vb = !Account.class.desiredAssertionStatus();
        mW = D.AU();
        CREATOR = (Parcelable$ClassLoaderCreator)new com.android.mail.providers.a();
        aqh = new b();
    }
    
    protected Account(final Cursor cursor) {
        this.acv = cursor.getString(cursor.getColumnIndex("name"));
        this.ayb = cursor.getString(cursor.getColumnIndex("senderName"));
        this.type = cursor.getString(cursor.getColumnIndex("type"));
        this.ayc = cursor.getString(cursor.getColumnIndex("accountManagerName"));
        this.ayd = cursor.getString(cursor.getColumnIndex("accountId"));
        this.ayl = K.gJ(cursor.getString(cursor.getColumnIndex("accountFromAddresses")));
        final int columnIndex = cursor.getColumnIndex("capabilities");
        if (columnIndex != -1) {
            this.ayg = cursor.getInt(columnIndex);
        }
        else {
            this.ayg = 0;
        }
        this.ayf = cursor.getInt(cursor.getColumnIndex("providerVersion"));
        this.uri = Uri.parse(cursor.getString(cursor.getColumnIndex("accountUri")));
        this.ayh = Uri.parse(cursor.getString(cursor.getColumnIndex("folderListUri")));
        this.ayi = ag.bO(cursor.getString(cursor.getColumnIndex("fullFolderListUri")));
        this.ayj = ag.bO(cursor.getString(cursor.getColumnIndex("allFolderListUri")));
        this.ayk = ag.bO(cursor.getString(cursor.getColumnIndex("searchUri")));
        this.aym = ag.bO(cursor.getString(cursor.getColumnIndex("expungeMessageUri")));
        this.ayn = ag.bO(cursor.getString(cursor.getColumnIndex("undoUri")));
        this.ayo = ag.bO(cursor.getString(cursor.getColumnIndex("accountSettingsIntentUri")));
        this.ayp = ag.bO(cursor.getString(cursor.getColumnIndex("helpIntentUri")));
        this.ayq = ag.bO(cursor.getString(cursor.getColumnIndex("sendFeedbackIntentUri")));
        this.ayr = ag.bO(cursor.getString(cursor.getColumnIndex("reauthenticationUri")));
        this.ays = cursor.getInt(cursor.getColumnIndex("syncStatus"));
        this.ayt = ag.bO(cursor.getString(cursor.getColumnIndex("composeUri")));
        this.mimeType = cursor.getString(cursor.getColumnIndex("mimeType"));
        this.ayu = ag.bO(cursor.getString(cursor.getColumnIndex("recentFolderListUri")));
        this.color = cursor.getInt(cursor.getColumnIndex("color"));
        this.ayv = ag.bO(cursor.getString(cursor.getColumnIndex("defaultRecentFolderListUri")));
        this.ayx = ag.bO(cursor.getString(cursor.getColumnIndex("manualSyncUri")));
        this.ayy = ag.bO(cursor.getString(cursor.getColumnIndex("viewProxyUri")));
        this.ayz = ag.bO(cursor.getString(cursor.getColumnIndex("accountCookieUri")));
        this.ayA = ag.bO(cursor.getString(cursor.getColumnIndex("updateSettingsUri")));
        this.ayB = cursor.getInt(cursor.getColumnIndex("enableMessageTransforms"));
        this.ayC = cursor.getString(cursor.getColumnIndex("syncAuthority"));
        if (TextUtils.isEmpty((CharSequence)this.ayC)) {
            E.f(Account.mW, "Unexpected empty syncAuthority from cursor", new Object[0]);
        }
        this.ayD = ag.bO(cursor.getString(cursor.getColumnIndex("quickResponseUri")));
        this.ayE = cursor.getString(cursor.getColumnIndex("settingsFragmentClass"));
        final int columnIndex2 = cursor.getColumnIndex("securityHold");
        int int1 = 0;
        if (columnIndex2 >= 0) {
            int1 = cursor.getInt(cursor.getColumnIndex("securityHold"));
        }
        this.ayF = int1;
        final int columnIndex3 = cursor.getColumnIndex("accountSecurityUri");
        String string;
        if (columnIndex3 >= 0) {
            string = cursor.getString(columnIndex3);
        }
        else {
            string = "";
        }
        this.ayG = string;
        this.ayw = new Settings(cursor);
    }
    
    protected Account(final Parcel parcel, final ClassLoader classLoader) {
        this.acv = parcel.readString();
        this.ayb = parcel.readString();
        this.type = parcel.readString();
        this.ayc = parcel.readString();
        this.ayf = parcel.readInt();
        this.uri = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayg = parcel.readInt();
        this.ayh = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayi = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayj = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayk = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayl = parcel.readString();
        this.aym = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayn = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayo = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayp = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayq = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayr = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ays = parcel.readInt();
        this.ayt = (Uri)parcel.readParcelable((ClassLoader)null);
        this.mimeType = parcel.readString();
        this.ayu = (Uri)parcel.readParcelable((ClassLoader)null);
        this.color = parcel.readInt();
        this.ayv = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayx = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayy = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayz = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayA = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayB = parcel.readInt();
        this.ayC = parcel.readString();
        if (TextUtils.isEmpty((CharSequence)this.ayC)) {
            E.f(Account.mW, "Unexpected empty syncAuthority from Parcel", new Object[0]);
        }
        this.ayD = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayE = parcel.readString();
        this.ayF = parcel.readInt();
        this.ayG = parcel.readString();
        if (parcel.readInt() == 0) {
            E.e(Account.mW, new Throwable(), "Unexpected null settings in Account(Parcel)", new Object[0]);
            this.ayw = Settings.aBM;
        }
        else {
            this.ayw = (Settings)parcel.readParcelable(classLoader);
        }
        this.ayd = parcel.readString();
    }
    
    protected Account(final JSONObject jsonObject) {
        this.acv = (String)jsonObject.get("name");
        this.type = (String)jsonObject.get("type");
        this.ayb = jsonObject.optString("senderName", (String)null);
        final String optString = jsonObject.optString("accountManagerName");
        if (TextUtils.isEmpty((CharSequence)optString)) {
            this.ayc = this.acv;
        }
        else {
            this.ayc = optString;
        }
        this.ayd = jsonObject.optString("accountId", this.ayc);
        this.ayf = jsonObject.getInt("providerVersion");
        this.uri = Uri.parse(jsonObject.optString("accountUri"));
        this.ayg = jsonObject.getInt("capabilities");
        this.ayh = ag.bO(jsonObject.optString("folderListUri"));
        this.ayi = ag.bO(jsonObject.optString("fullFolderListUri"));
        this.ayj = ag.bO(jsonObject.optString("allFolderListUri"));
        this.ayk = ag.bO(jsonObject.optString("searchUri"));
        this.ayl = jsonObject.optString("accountFromAddresses", "");
        this.aym = ag.bO(jsonObject.optString("expungeMessageUri"));
        this.ayn = ag.bO(jsonObject.optString("undoUri"));
        this.ayo = ag.bO(jsonObject.optString("accountSettingsIntentUri"));
        this.ayp = ag.bO(jsonObject.optString("helpIntentUri"));
        this.ayq = ag.bO(jsonObject.optString("sendFeedbackIntentUri"));
        this.ayr = ag.bO(jsonObject.optString("reauthenticationUri"));
        this.ays = jsonObject.optInt("syncStatus");
        this.ayt = ag.bO(jsonObject.optString("composeUri"));
        this.mimeType = jsonObject.optString("mimeType");
        this.ayu = ag.bO(jsonObject.optString("recentFolderListUri"));
        this.color = jsonObject.optInt("color", 0);
        this.ayv = ag.bO(jsonObject.optString("defaultRecentFolderListUri"));
        this.ayx = ag.bO(jsonObject.optString("manualSyncUri"));
        this.ayy = ag.bO(jsonObject.optString("viewProxyUri"));
        this.ayz = ag.bO(jsonObject.optString("accountCookieUri"));
        this.ayA = ag.bO(jsonObject.optString("updateSettingsUri"));
        this.ayB = jsonObject.optInt("enableMessageTransforms");
        this.ayC = jsonObject.optString("syncAuthority");
        this.ayD = ag.bO(jsonObject.optString("quickResponseUri"));
        this.ayE = jsonObject.optString("settingsFragmentClass", "");
        this.ayF = jsonObject.optInt("securityHold");
        this.ayG = jsonObject.optString("accountSecurityUri");
        final Settings e = Settings.e(jsonObject.optJSONObject("settings"));
        if (e != null) {
            this.ayw = e;
            return;
        }
        E.e(Account.mW, new Throwable(), "Unexpected null settings in Account(name, type, jsonAccount)", new Object[0]);
        this.ayw = Settings.aBM;
    }
    
    public static Account[] b(final com.android.mail.c.b<Account> b) {
        final int count = b.getCount();
        if (count <= 0 || !b.moveToFirst()) {
            return new Account[0];
        }
        final Account[] array = new Account[count];
        int n = 0;
        int n2;
        while (true) {
            n2 = n + 1;
            array[n] = b.sW();
            if (!b.moveToNext()) {
                break;
            }
            n = n2;
        }
        if (!Account.vb && n2 != count) {
            throw new AssertionError();
        }
        return array;
    }
    
    public static Account bH(final String s) {
        try {
            final JSONObject jsonObject = new JSONObject(s);
            ue();
            return c.d(jsonObject);
        }
        catch (JSONException ex) {
            E.d(Account.mW, (Throwable)ex, "Could not create an account from this input: \"%s\"", s);
            return null;
        }
    }
    
    public static c ue() {
        // monitorenter(Account.class)
        try {
            if (Account.ayI == null) {
                Account.ayI = c.class;
            }
            Label_0035: {
                if (Account.ayJ != null) {
                    break Label_0035;
                }
                try {
                    Account.ayJ = (c)Account.ayI.newInstance();
                    return Account.ayJ;
                }
                catch (InstantiationException ex) {}
                catch (IllegalAccessException ex2) {}
            }
        }
        finally {}
    }
    
    public final boolean bI(final String s) {
        final Iterator<ReplyFromAccount> iterator = this.uk().iterator();
        while (iterator.hasNext()) {
            if (TextUtils.equals((CharSequence)iterator.next().address, (CharSequence)s)) {
                return true;
            }
        }
        return false;
    }
    
    public final boolean cy(final int n) {
        return (n & this.ayg) != 0x0;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (o == null || o.getClass() != this.getClass()) {
                return false;
            }
            final Account account = (Account)o;
            if (!TextUtils.equals((CharSequence)this.acv, (CharSequence)account.acv) || !TextUtils.equals((CharSequence)this.ayb, (CharSequence)account.ayb) || !TextUtils.equals((CharSequence)this.ayc, (CharSequence)account.ayc) || !TextUtils.equals((CharSequence)this.ayd, (CharSequence)account.ayd) || !TextUtils.equals((CharSequence)this.type, (CharSequence)account.type) || this.ayg != account.ayg || this.ayf != account.ayf || !e.b(this.uri, account.uri) || !e.b(this.ayh, account.ayh) || !e.b(this.ayi, account.ayi) || !e.b(this.ayj, account.ayj) || !e.b(this.ayk, account.ayk) || !e.b(this.ayl, account.ayl) || !e.b(this.aym, account.aym) || !e.b(this.ayn, account.ayn) || !e.b(this.ayo, account.ayo) || !e.b(this.ayp, account.ayp) || !e.b(this.ayq, account.ayq) || !e.b(this.ayr, account.ayr) || this.ays != account.ays || !e.b(this.ayt, account.ayt) || !TextUtils.equals((CharSequence)this.mimeType, (CharSequence)account.mimeType) || !e.b(this.ayu, account.ayu) || this.color != account.color || !e.b(this.ayv, account.ayv) || !e.b(this.ayy, account.ayy) || !e.b(this.ayz, account.ayz) || !e.b(this.ayA, account.ayA) || !e.b(this.ayB, account.ayB) || !e.b(this.ayC, account.ayC) || !e.b(this.ayD, account.ayD) || !e.b(this.ayE, account.ayE) || !e.b(this.ayF, account.ayF) || !e.b(this.ayG, account.ayG) || !e.b(this.ayw, account.ayw)) {
                return false;
            }
        }
        return true;
    }
    
    public final String getAccountId() {
        E.c(E.TAG, "getAccountId = %s for email %s", this.ayd, this.ayc);
        return this.ayd;
    }
    
    public final String getDisplayName() {
        return this.acv;
    }
    
    public final String getType() {
        return this.type;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.acv, this.ayb, this.ayc, this.type, this.ayg, this.ayf, this.uri, this.ayh, this.ayi, this.ayj, this.ayk, this.ayl, this.aym, this.ayn, this.ayo, this.ayp, this.ayq, this.ayr, this.ays, this.ayt, this.mimeType, this.ayu, this.color, this.ayv, this.ayy, this.ayz, this.ayA, this.ayB, this.ayC, this.ayD, this.ayF, this.ayG });
    }
    
    public final boolean i(final Account account) {
        return account == null || this.ays != account.ays || !e.b(this.ayl, account.ayl) || this.color != account.color || this.ayw.hashCode() != account.ayw.hashCode();
    }
    
    public final String ik() {
        return this.ayb;
    }
    
    public final boolean j(final Account account) {
        return account != null && e.b(this.uri, account.uri);
    }
    
    public final String lw() {
        return this.ayc;
    }
    
    @Override
    public String toString() {
        return this.ud();
    }
    
    public final String ud() {
        synchronized (this) {
            final JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("name", (Object)this.acv);
                jsonObject.put("type", (Object)this.type);
                jsonObject.put("senderName", (Object)this.ayb);
                jsonObject.put("accountManagerName", (Object)this.ayc);
                jsonObject.put("accountId", (Object)this.ayd);
                jsonObject.put("providerVersion", this.ayf);
                jsonObject.put("accountUri", (Object)this.uri);
                jsonObject.put("capabilities", this.ayg);
                jsonObject.put("folderListUri", (Object)this.ayh);
                jsonObject.put("fullFolderListUri", (Object)this.ayi);
                jsonObject.put("allFolderListUri", (Object)this.ayj);
                jsonObject.put("searchUri", (Object)this.ayk);
                jsonObject.put("accountFromAddresses", (Object)this.ayl);
                jsonObject.put("expungeMessageUri", (Object)this.aym);
                jsonObject.put("undoUri", (Object)this.ayn);
                jsonObject.put("accountSettingsIntentUri", (Object)this.ayo);
                jsonObject.put("helpIntentUri", (Object)this.ayp);
                jsonObject.put("sendFeedbackIntentUri", (Object)this.ayq);
                jsonObject.put("reauthenticationUri", (Object)this.ayr);
                jsonObject.put("syncStatus", this.ays);
                jsonObject.put("composeUri", (Object)this.ayt);
                jsonObject.put("mimeType", (Object)this.mimeType);
                jsonObject.put("recentFolderListUri", (Object)this.ayu);
                jsonObject.put("color", this.color);
                jsonObject.put("defaultRecentFolderListUri", (Object)this.ayv);
                jsonObject.put("manualSyncUri", (Object)this.ayx);
                jsonObject.put("viewProxyUri", (Object)this.ayy);
                jsonObject.put("accountCookieUri", (Object)this.ayz);
                jsonObject.put("updateSettingsUri", (Object)this.ayA);
                jsonObject.put("enableMessageTransforms", this.ayB);
                jsonObject.put("syncAuthority", (Object)this.ayC);
                jsonObject.put("quickResponseUri", (Object)this.ayD);
                jsonObject.put("settingsFragmentClass", (Object)this.ayE);
                jsonObject.put("securityHold", this.ayF);
                jsonObject.put("accountSecurityUri", (Object)this.ayG);
                if (this.ayw != null) {
                    jsonObject.put("settings", (Object)this.ayw.up());
                }
                return jsonObject.toString();
            }
            catch (JSONException ex) {
                E.f(Account.mW, (Throwable)ex, "Could not serialize account with name %s", this.acv);
            }
        }
    }
    
    public final android.accounts.Account uf() {
        if (this.aye == null) {
            this.aye = new android.accounts.Account(this.ayc, this.type);
        }
        return this.aye;
    }
    
    public final boolean ug() {
        return this.cy(2048) || this.cy(32) || this.cy(64);
    }
    
    public final boolean uh() {
        return (0x8 & this.ays) == 0x8;
    }
    
    public final boolean ui() {
        return (0x20 & this.ays) == 0x20;
    }
    
    public final boolean uj() {
        return !this.ui() && !this.uh();
    }
    
    public final List<ReplyFromAccount> uk() {
        if (this.ayH == null) {
            this.ayH = new ArrayList<ReplyFromAccount>();
            if (this.cy(524288)) {
                return this.ayH;
            }
            this.ayH.add(new ReplyFromAccount(this, this.uri, this.ayc, this.ayb, this.ayc, false, false));
            if (!TextUtils.isEmpty((CharSequence)this.ayl)) {
                try {
                    final JSONArray jsonArray = new JSONArray(this.ayl);
                    for (int length = jsonArray.length(), i = 0; i < length; ++i) {
                        final ReplyFromAccount a = ReplyFromAccount.a(this, jsonArray.getJSONObject(i));
                        if (a != null) {
                            this.ayH.add(a);
                        }
                    }
                }
                catch (JSONException ex) {
                    E.e(Account.mW, (Throwable)ex, "Unable to parse accountFromAddresses. name=%s", this.acv);
                }
            }
        }
        return this.ayH;
    }
    
    public final Map<String, Object> ul() {
        final HashMap<String, Uri> hashMap = new HashMap<String, Uri>();
        hashMap.put("_id", 0);
        hashMap.put("name", (Uri)this.acv);
        hashMap.put("senderName", (Uri)this.ayb);
        hashMap.put("type", (Uri)this.type);
        hashMap.put("accountManagerName", (Uri)this.ayc);
        hashMap.put("accountId", (Uri)this.ayd);
        hashMap.put("providerVersion", (Uri)this.ayf);
        hashMap.put("accountUri", this.uri);
        hashMap.put("capabilities", this.ayg);
        hashMap.put("folderListUri", this.ayh);
        hashMap.put("fullFolderListUri", this.ayi);
        hashMap.put("allFolderListUri", this.ayj);
        hashMap.put("searchUri", this.ayk);
        hashMap.put("accountFromAddresses", this.ayl);
        hashMap.put("expungeMessageUri", this.aym);
        hashMap.put("undoUri", this.ayn);
        hashMap.put("accountSettingsIntentUri", this.ayo);
        hashMap.put("helpIntentUri", this.ayp);
        hashMap.put("sendFeedbackIntentUri", this.ayq);
        hashMap.put("reauthenticationUri", this.ayr);
        hashMap.put("syncStatus", this.ays);
        hashMap.put("composeUri", this.ayt);
        hashMap.put("mimeType", this.mimeType);
        hashMap.put("recentFolderListUri", this.ayu);
        hashMap.put("defaultRecentFolderListUri", this.ayv);
        hashMap.put("manualSyncUri", this.ayx);
        hashMap.put("viewProxyUri", this.ayy);
        hashMap.put("accountCookieUri", this.ayz);
        hashMap.put("color", this.color);
        hashMap.put("updateSettingsUri", this.ayA);
        hashMap.put("enableMessageTransforms", this.ayB);
        hashMap.put("syncAuthority", this.ayC);
        hashMap.put("quickResponseUri", this.ayD);
        hashMap.put("settingsFragmentClass", this.ayE);
        hashMap.put("securityHold", this.ayF);
        hashMap.put("accountSecurityUri", this.ayG);
        this.ayw.c((Map<String, Object>)hashMap);
        return (Map<String, Object>)hashMap;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.acv);
        parcel.writeString(this.ayb);
        parcel.writeString(this.type);
        parcel.writeString(this.ayc);
        parcel.writeInt(this.ayf);
        parcel.writeParcelable((Parcelable)this.uri, 0);
        parcel.writeInt(this.ayg);
        parcel.writeParcelable((Parcelable)this.ayh, 0);
        parcel.writeParcelable((Parcelable)this.ayi, 0);
        parcel.writeParcelable((Parcelable)this.ayj, 0);
        parcel.writeParcelable((Parcelable)this.ayk, 0);
        parcel.writeString(this.ayl);
        parcel.writeParcelable((Parcelable)this.aym, 0);
        parcel.writeParcelable((Parcelable)this.ayn, 0);
        parcel.writeParcelable((Parcelable)this.ayo, 0);
        parcel.writeParcelable((Parcelable)this.ayp, 0);
        parcel.writeParcelable((Parcelable)this.ayq, 0);
        parcel.writeParcelable((Parcelable)this.ayr, 0);
        parcel.writeInt(this.ays);
        parcel.writeParcelable((Parcelable)this.ayt, 0);
        parcel.writeString(this.mimeType);
        parcel.writeParcelable((Parcelable)this.ayu, 0);
        parcel.writeInt(this.color);
        parcel.writeParcelable((Parcelable)this.ayv, 0);
        parcel.writeParcelable((Parcelable)this.ayx, 0);
        parcel.writeParcelable((Parcelable)this.ayy, 0);
        parcel.writeParcelable((Parcelable)this.ayz, 0);
        parcel.writeParcelable((Parcelable)this.ayA, 0);
        parcel.writeInt(this.ayB);
        parcel.writeString(this.ayC);
        parcel.writeParcelable((Parcelable)this.ayD, 0);
        parcel.writeString(this.ayE);
        parcel.writeInt(this.ayF);
        parcel.writeString(this.ayG);
        if (this.ayw == null) {
            E.f(Account.mW, "unexpected null settings object in writeToParcel", new Object[0]);
            parcel.writeInt(0);
        }
        else {
            parcel.writeInt(1);
            parcel.writeParcelable((Parcelable)this.ayw, 0);
        }
        parcel.writeString(this.ayd);
    }
}
