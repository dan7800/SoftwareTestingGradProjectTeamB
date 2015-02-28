package com.android.emailcommon.provider;

import android.net.*;
import android.os.*;
import android.content.*;
import android.database.*;
import com.android.emailcommon.b.*;

public final class Policy extends EmailContent implements Parcelable, h
{
    public static Uri CONTENT_URI;
    public static final Parcelable$Creator<Policy> CREATOR;
    public static final String[] XO;
    public static final Policy aah;
    private static final String[] aai;
    public int ZL;
    public int ZM;
    public int ZN;
    public int ZO;
    public int ZP;
    public int ZQ;
    public int ZR;
    public boolean ZS;
    public boolean ZT;
    public boolean ZU;
    public boolean ZV;
    public boolean ZW;
    public boolean ZX;
    public boolean ZY;
    public int ZZ;
    public int aaa;
    public int aab;
    public int aac;
    public int aad;
    public boolean aae;
    public String aaf;
    public String aag;
    
    static {
        XO = new String[] { "_id", "passwordMode", "passwordMinLength", "passwordExpirationDays", "passwordHistory", "passwordComplexChars", "passwordMaxFails", "maxScreenLockTime", "requireRemoteWipe", "requireEncryption", "requireEncryptionExternal", "requireManualSyncRoaming", "dontAllowCamera", "dontAllowAttachments", "dontAllowHtml", "maxAttachmentSize", "maxTextTruncationSize", "maxHTMLTruncationSize", "maxEmailLookback", "maxCalendarLookback", "passwordRecoveryEnabled", "protocolPoliciesEnforced", "protocolPoliciesUnsupported" };
        aah = new Policy();
        aai = new String[] { "_id", "size", "flags" };
        CREATOR = (Parcelable$Creator)new p();
    }
    
    public Policy() {
        this.XU = Policy.CONTENT_URI;
        this.ZL = 0;
        this.ZS = true;
    }
    
    public Policy(final Parcel parcel) {
        boolean aae = true;
        this.XU = Policy.CONTENT_URI;
        this.Ln = parcel.readLong();
        this.ZL = parcel.readInt();
        this.ZM = parcel.readInt();
        this.ZN = parcel.readInt();
        this.ZP = parcel.readInt();
        this.ZO = parcel.readInt();
        this.ZQ = parcel.readInt();
        this.ZR = parcel.readInt();
        this.ZS = (parcel.readInt() == (aae ? 1 : 0) && aae);
        this.ZT = (parcel.readInt() == (aae ? 1 : 0) && aae);
        this.ZU = (parcel.readInt() == (aae ? 1 : 0) && aae);
        this.ZV = (parcel.readInt() == (aae ? 1 : 0) && aae);
        this.ZW = (parcel.readInt() == (aae ? 1 : 0) && aae);
        this.ZX = (parcel.readInt() == (aae ? 1 : 0) && aae);
        this.ZY = (parcel.readInt() == (aae ? 1 : 0) && aae);
        this.ZZ = parcel.readInt();
        this.aaa = parcel.readInt();
        this.aab = parcel.readInt();
        this.aac = parcel.readInt();
        this.aad = parcel.readInt();
        if (parcel.readInt() != (aae ? 1 : 0)) {
            aae = false;
        }
        this.aae = aae;
        this.aaf = parcel.readString();
        this.aag = parcel.readString();
    }
    
    public static void a(final Context context, final Account account, final Policy policy) {
        Cursor query = null;
    Label_0111_Outer:
        while (true) {
            final ContentResolver contentResolver = context.getContentResolver();
            query = contentResolver.query(EmailContent$Attachment.CONTENT_URI, Policy.aai, "accountKey=?", new String[] { Long.toString(account.Ln) }, (String)null);
            final ContentValues contentValues = new ContentValues();
            while (true) {
                int int1 = 0;
                boolean b2 = false;
                while (true) {
                    int zz = 0;
                    int int2 = 0;
                    boolean b = false;
                    Label_0219: {
                        Label_0188: {
                            Label_0165: {
                                try {
                                    if (!policy.ZX) {
                                        break Label_0165;
                                    }
                                    zz = 0;
                                    if (!query.moveToNext()) {
                                        break;
                                    }
                                    int1 = query.getInt(2);
                                    int2 = query.getInt(1);
                                    if ((int1 & 0x200) != 0x0) {
                                        b = true;
                                        break Label_0219;
                                    }
                                    break Label_0188;
                                    final long long1 = query.getLong(0);
                                    final int n;
                                    contentValues.put("flags", n);
                                    contentResolver.update(ContentUris.withAppendedId(EmailContent$Attachment.CONTENT_URI, long1), contentValues, (String)null, (String[])null);
                                    continue Label_0111_Outer;
                                }
                                finally {
                                    query.close();
                                }
                            }
                            if (policy.ZZ > 0) {
                                zz = policy.ZZ;
                                continue Label_0111_Outer;
                            }
                            zz = Integer.MAX_VALUE;
                            continue Label_0111_Outer;
                        }
                        b = false;
                    }
                    b2 = (int2 > zz);
                    if (b2 == b) {
                        continue Label_0111_Outer;
                    }
                    break;
                }
                if (b2) {
                    final int n = int1 | 0x200;
                    continue;
                }
                final int n = int1 & 0xFFFFFDFF;
                continue;
            }
        }
        query.close();
    }
    
    private static void a(final StringBuilder sb, final String s, final int n) {
        sb.append(s);
        sb.append(":");
        sb.append(n);
        sb.append(" ");
    }
    
    public static Policy b(final Context context, final long n, final ContentObserver contentObserver) {
        return EmailContent.a(context, Policy.class, Policy.CONTENT_URI, Policy.XO, n, contentObserver);
    }
    
    public static void lU() {
        Policy.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/policy");
    }
    
    public static Policy y(final Context context, final long n) {
        return b(context, n, null);
    }
    
    public static long z(final Context context, final long n) {
        return s.a(context, Account.CONTENT_URI, Account.XT, "policyKey=?", new String[] { Long.toString(n) }, null, -1L);
    }
    
    @Override
    public final Uri ac(final Context context) {
        this.normalize();
        return super.ac(context);
    }
    
    @Override
    public final void b(final Cursor cursor) {
        int aae = 1;
        this.XU = Policy.CONTENT_URI;
        this.Ln = cursor.getLong(0);
        this.ZL = cursor.getInt(aae);
        this.ZM = cursor.getInt(2);
        this.ZN = cursor.getInt(6);
        this.ZP = cursor.getInt(4);
        this.ZO = cursor.getInt(3);
        this.ZQ = cursor.getInt(5);
        this.ZR = cursor.getInt(7);
        this.ZS = (cursor.getInt(8) == aae && aae);
        this.ZT = (cursor.getInt(9) == aae && aae);
        this.ZU = (cursor.getInt(10) == aae && aae);
        this.ZV = (cursor.getInt(11) == aae && aae);
        this.ZW = (cursor.getInt(12) == aae && aae);
        this.ZX = (cursor.getInt(13) == aae && aae);
        this.ZY = (cursor.getInt(14) == aae && aae);
        this.ZZ = cursor.getInt(15);
        this.aaa = cursor.getInt(16);
        this.aab = cursor.getInt(17);
        this.aac = cursor.getInt(18);
        this.aad = cursor.getInt(19);
        if (cursor.getInt(20) != aae) {
            aae = 0;
        }
        this.aae = (aae != 0);
        this.aaf = cursor.getString(21);
        this.aag = cursor.getString(22);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final boolean equals(final Object o) {
        if (o instanceof Policy) {
            final Policy policy = (Policy)o;
            if (this.ZT == policy.ZT && this.ZU == policy.ZU && this.ZS == policy.ZS && this.ZR == policy.ZR && this.ZQ == policy.ZQ && this.ZO == policy.ZO && this.ZP == policy.ZP && this.ZN == policy.ZN && this.ZM == policy.ZM && this.ZL == policy.ZL && this.ZW == policy.ZW && this.ZV == policy.ZV && this.ZX == policy.ZX && this.ZY == policy.ZY && this.ZZ == policy.ZZ && this.aaa == policy.aaa && this.aab == policy.aab && this.aac == policy.aac && this.aad == policy.aad && this.aae == policy.aae && r.v(this.aaf, policy.aaf) && r.v(this.aag, policy.aag)) {
                return true;
            }
        }
        return false;
    }
    
    public final int hashCode() {
        int n = 1;
        int n2;
        if (this.ZT) {
            n2 = n;
        }
        else {
            n2 = 0;
        }
        int n3;
        if (this.ZU) {
            n3 = n;
        }
        else {
            n3 = 0;
        }
        final int n4 = n2 + (n3 << 1);
        if (!this.ZS) {
            n = 0;
        }
        return n4 + (n << 2) + (this.ZR << 3) + (this.ZQ << 6) + (this.ZO << 12) + (this.ZP << 15) + (this.ZN << 18) + (this.ZM << 22) + (this.ZL << 26);
    }
    
    @Override
    public final ContentValues lB() {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("passwordMode", this.ZL);
        contentValues.put("passwordMinLength", this.ZM);
        contentValues.put("passwordMaxFails", this.ZN);
        contentValues.put("passwordHistory", this.ZP);
        contentValues.put("passwordExpirationDays", this.ZO);
        contentValues.put("passwordComplexChars", this.ZQ);
        contentValues.put("maxScreenLockTime", this.ZR);
        contentValues.put("requireRemoteWipe", this.ZS);
        contentValues.put("requireEncryption", this.ZT);
        contentValues.put("requireEncryptionExternal", this.ZU);
        contentValues.put("requireManualSyncRoaming", this.ZV);
        contentValues.put("dontAllowCamera", this.ZW);
        contentValues.put("dontAllowAttachments", this.ZX);
        contentValues.put("dontAllowHtml", this.ZY);
        contentValues.put("maxAttachmentSize", this.ZZ);
        contentValues.put("maxTextTruncationSize", this.aaa);
        contentValues.put("maxHTMLTruncationSize", this.aab);
        contentValues.put("maxEmailLookback", this.aac);
        contentValues.put("maxCalendarLookback", this.aad);
        contentValues.put("passwordRecoveryEnabled", this.aae);
        contentValues.put("protocolPoliciesEnforced", this.aaf);
        contentValues.put("protocolPoliciesUnsupported", this.aag);
        return contentValues;
    }
    
    public final int lV() {
        switch (this.ZL) {
            default: {
                return 0;
            }
            case 1: {
                return 131072;
            }
            case 2: {
                if (this.ZQ == 0) {
                    return 327680;
                }
                return 393216;
            }
        }
    }
    
    public final long lW() {
        long n = 86400000L * this.ZO;
        if (n > 0L) {
            n += 120000L;
        }
        return n;
    }
    
    @Override
    protected final Uri lu() {
        return Policy.CONTENT_URI;
    }
    
    public final void normalize() {
        if (this.ZL == 0) {
            this.ZN = 0;
            this.ZR = 0;
            this.ZM = 0;
            this.ZQ = 0;
            this.ZP = 0;
            this.ZO = 0;
        }
        else {
            if (this.ZL != 1 && this.ZL != 2) {
                throw new IllegalArgumentException("password mode");
            }
            if (this.ZL == 1) {
                this.ZQ = 0;
            }
        }
    }
    
    public final String toString() {
        final StringBuilder sb = new StringBuilder("[");
        if (this.equals(Policy.aah)) {
            sb.append("No policies]");
        }
        else {
            if (this.ZL == 0) {
                sb.append("Pwd none ");
            }
            else {
                int n;
                if (this.ZL == 2) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                a(sb, "Pwd strong", n);
                a(sb, "len", this.ZM);
                a(sb, "cmpx", this.ZQ);
                a(sb, "expy", this.ZO);
                a(sb, "hist", this.ZP);
                a(sb, "fail", this.ZN);
                a(sb, "idle", this.ZR);
            }
            if (this.ZT) {
                sb.append("encrypt ");
            }
            if (this.ZU) {
                sb.append("encryptsd ");
            }
            if (this.ZW) {
                sb.append("nocamera ");
            }
            if (this.ZX) {
                sb.append("noatts ");
            }
            if (this.ZV) {
                sb.append("nopushroam ");
            }
            if (this.ZZ > 0) {
                a(sb, "attmax", this.ZZ);
            }
            sb.append("]");
        }
        return sb.toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        parcel.writeLong(this.Ln);
        parcel.writeInt(this.ZL);
        parcel.writeInt(this.ZM);
        parcel.writeInt(this.ZN);
        parcel.writeInt(this.ZP);
        parcel.writeInt(this.ZO);
        parcel.writeInt(this.ZQ);
        parcel.writeInt(this.ZR);
        int n3;
        if (this.ZS) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        int n4;
        if (this.ZT) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        parcel.writeInt(n4);
        int n5;
        if (this.ZU) {
            n5 = n2;
        }
        else {
            n5 = 0;
        }
        parcel.writeInt(n5);
        int n6;
        if (this.ZV) {
            n6 = n2;
        }
        else {
            n6 = 0;
        }
        parcel.writeInt(n6);
        int n7;
        if (this.ZW) {
            n7 = n2;
        }
        else {
            n7 = 0;
        }
        parcel.writeInt(n7);
        int n8;
        if (this.ZX) {
            n8 = n2;
        }
        else {
            n8 = 0;
        }
        parcel.writeInt(n8);
        int n9;
        if (this.ZY) {
            n9 = n2;
        }
        else {
            n9 = 0;
        }
        parcel.writeInt(n9);
        parcel.writeInt(this.ZZ);
        parcel.writeInt(this.aaa);
        parcel.writeInt(this.aab);
        parcel.writeInt(this.aac);
        parcel.writeInt(this.aad);
        if (!this.aae) {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeString(this.aaf);
        parcel.writeString(this.aag);
    }
}
