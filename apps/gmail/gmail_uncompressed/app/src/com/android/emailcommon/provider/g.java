package com.android.emailcommon.provider;

import android.net.*;
import com.android.emailcommon.b.*;
import java.util.*;
import com.android.mail.utils.*;
import android.os.*;
import android.content.*;
import android.database.*;

public final class g extends EmailContent
{
    public static Uri CONTENT_URI;
    public static Uri DELETED_CONTENT_URI;
    public static final String[] XO;
    public static Uri Xx;
    public static Uri YC;
    public static Uri YD;
    public static Uri YE;
    public static Uri YF;
    public static final String[] YG;
    public static final String[] YH;
    public static final String[] YI;
    public static final String[] YJ;
    public long Lq;
    public boolean Vs;
    public boolean Vt;
    public int Vu;
    public String Vv;
    public String Xy;
    public transient int YA;
    public transient long YB;
    public long YK;
    public String YL;
    public boolean YM;
    public boolean YN;
    public long YO;
    public int YP;
    public String YQ;
    public long YR;
    public long YS;
    public String YT;
    public String YU;
    public String YV;
    public String YW;
    public String YX;
    public String YY;
    public String YZ;
    public String Za;
    public String Zb;
    public String Zc;
    public transient String Zd;
    public transient String Ze;
    public transient ArrayList<EmailContent$Attachment> Zf;
    public int dM;
    
    static {
        XO = new String[] { "_id", "displayName", "timeStamp", "subject", "flagRead", "flagLoaded", "flagFavorite", "flagAttachment", "flags", "syncServerId", "clientId", "messageId", "mailboxKey", "accountKey", "fromList", "toList", "ccList", "bccList", "replyToList", "syncServerTimeStamp", "meetingInfo", "snippet", "protocolSearchInfo", "threadTopic", "syncData", "flagSeen", "mainMailboxKey" };
        YG = new String[] { "_id", "displayName", "timeStamp", "subject", "flagRead", "flagLoaded", "flagFavorite", "flagAttachment", "flags", "mailboxKey", "accountKey", "syncServerId", "snippet" };
        YH = new String[] { "_id", "syncServerId" };
        YI = new String[] { "_id" };
        YJ = new String[] { "mailboxKey" };
    }
    
    public g() {
        this.Vs = false;
        this.YM = false;
        this.Vu = 0;
        this.Vt = false;
        this.YN = false;
        this.dM = 0;
        this.Zf = null;
        this.XU = g.CONTENT_URI;
    }
    
    public static void lN() {
        g.YC = EmailContent.c(g.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/message"), 1);
        g.YD = Uri.parse(EmailContent.CONTENT_URI + "/syncedMessage");
        g.YE = Uri.parse(EmailContent.CONTENT_URI + "/messageBySelection");
        g.DELETED_CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/deletedMessage");
        g.YF = Uri.parse(EmailContent.CONTENT_URI + "/updatedMessage");
        g.Xx = Uri.parse(EmailContent.XZ + "/message");
    }
    
    public static g t(final Context context, final long n) {
        return EmailContent.a(context, g.class, g.CONTENT_URI, g.XO, n);
    }
    
    public final void a(final ArrayList<ContentProviderOperation> list) {
        boolean b;
        if (!this.lF()) {
            b = true;
        }
        else {
            b = false;
        }
        ContentProviderOperation$Builder contentProviderOperation$Builder;
        if (b) {
            contentProviderOperation$Builder = ContentProviderOperation.newInsert(this.XU);
        }
        else {
            contentProviderOperation$Builder = ContentProviderOperation.newUpdate(this.XU).withSelection("_id=?", new String[] { Long.toString(this.Ln) });
        }
        if (this.Zd != null) {
            this.YZ = r.aD(this.Zd);
        }
        else if (this.Ze != null) {
            this.YZ = r.aC(this.Ze);
        }
        list.add(contentProviderOperation$Builder.withValues(this.lB()).build());
        final ContentValues contentValues = new ContentValues();
        if (this.Zd != null) {
            contentValues.put("textContent", this.Zd);
        }
        if (this.Ze != null) {
            contentValues.put("htmlContent", this.Ze);
        }
        if (this.YB != 0L) {
            contentValues.put("sourceMessageKey", this.YB);
        }
        if (this.YA != 0) {
            contentValues.put("quotedTextStartPos", this.YA);
        }
        final int n = -1 + list.size();
        if (!contentValues.keySet().isEmpty()) {
            final ContentProviderOperation$Builder insert = ContentProviderOperation.newInsert(e.CONTENT_URI);
            if (!b) {
                contentValues.put("messageKey", this.Ln);
            }
            insert.withValues(contentValues);
            if (b) {
                final ContentValues contentValues2 = new ContentValues();
                contentValues2.put("messageKey", n);
                insert.withValueBackReferences(contentValues2);
            }
            list.add(insert.build());
        }
        if (this.Zf != null) {
            for (final EmailContent$Attachment emailContent$Attachment : this.Zf) {
                if (!b) {
                    emailContent$Attachment.Yq = this.Ln;
                }
                final ContentProviderOperation$Builder withValues = ContentProviderOperation.newInsert(EmailContent$Attachment.CONTENT_URI).withValues(emailContent$Attachment.lB());
                if (b) {
                    withValues.withValueBackReference("messageKey", n);
                }
                list.add(withValues.build());
            }
        }
    }
    
    @Override
    public final Uri ac(final Context context) {
        boolean b;
        if (!this.lF()) {
            b = true;
        }
        else {
            b = false;
        }
        if (this.Zd != null || this.Ze != null || (this.Zf != null && !this.Zf.isEmpty())) {
            final ArrayList<ContentProviderOperation> list = new ArrayList<ContentProviderOperation>();
            this.a(list);
            Uri uri = null;
            try {
                final ContentProviderResult[] applyBatch = context.getContentResolver().applyBatch(g.AUTHORITY, (ArrayList)list);
                if (!b) {
                    return null;
                }
                uri = applyBatch[0].uri;
                this.Ln = Long.parseLong((String)uri.getPathSegments().get(1));
                if (this.Zf != null) {
                    int i = 0;
                    Uri ac = uri;
                    while (i < this.Zf.size()) {
                        final EmailContent$Attachment emailContent$Attachment = this.Zf.get(i);
                        final int n = i + 2;
                        Uri uri2;
                        if (n < applyBatch.length) {
                            uri2 = applyBatch[n].uri;
                        }
                        else {
                            E.f("Email", "Invalid index into ContentProviderResults: " + n, new Object[0]);
                            uri2 = null;
                        }
                        if (uri2 != null) {
                            emailContent$Attachment.Ln = Long.parseLong((String)uri2.getPathSegments().get(1));
                        }
                        emailContent$Attachment.Yq = this.Ln;
                        ++i;
                        ac = uri2;
                    }
                    return ac;
                }
            }
            catch (OperationApplicationException ex) {}
            catch (RemoteException ex2) {
                goto Label_0288;
            }
            return uri;
        }
        Uri ac;
        if (b) {
            ac = super.ac(context);
        }
        else {
            if (this.a(context, this.lB()) == 1) {
                return this.getUri();
            }
            return null;
        }
        return ac;
    }
    
    @Override
    public final void b(final Cursor cursor) {
        int yn = 1;
        this.XU = g.CONTENT_URI;
        this.Ln = cursor.getLong(0);
        this.Xy = cursor.getString(yn);
        this.YK = cursor.getLong(2);
        this.YL = cursor.getString(3);
        this.Vs = (cursor.getInt(4) == yn && yn);
        this.YM = (cursor.getInt(25) == yn && yn);
        this.Vu = cursor.getInt(5);
        this.Vt = (cursor.getInt(6) == yn && yn);
        if (cursor.getInt(7) != yn) {
            yn = 0;
        }
        this.YN = (yn != 0);
        this.dM = cursor.getInt(8);
        this.Vv = cursor.getString(9);
        this.YO = cursor.getLong(19);
        this.YP = cursor.getInt(10);
        this.YQ = cursor.getString(11);
        this.YR = cursor.getLong(12);
        this.YS = cursor.getLong(26);
        this.Lq = cursor.getLong(13);
        this.YT = cursor.getString(14);
        this.YU = cursor.getString(15);
        this.YV = cursor.getString(16);
        this.YW = cursor.getString(17);
        this.YX = cursor.getString(18);
        this.YY = cursor.getString(20);
        this.YZ = cursor.getString(21);
        this.Za = cursor.getString(22);
        this.Zb = cursor.getString(23);
        this.Zc = cursor.getString(24);
    }
    
    public final void c(final boolean b, final boolean b2) {
        if (b || b2) {
            this.dM &= 0xFFFFFFFC;
            final int dm = this.dM;
            int n;
            if (b) {
                n = 1;
            }
            else {
                n = 2;
            }
            this.dM = (n | dm);
        }
    }
    
    @Override
    public final ContentValues lB() {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("displayName", this.Xy);
        contentValues.put("timeStamp", this.YK);
        contentValues.put("subject", this.YL);
        contentValues.put("flagRead", this.Vs);
        contentValues.put("flagSeen", this.YM);
        contentValues.put("flagLoaded", this.Vu);
        contentValues.put("flagFavorite", this.Vt);
        contentValues.put("flagAttachment", this.YN);
        contentValues.put("flags", this.dM);
        contentValues.put("syncServerId", this.Vv);
        contentValues.put("syncServerTimeStamp", this.YO);
        contentValues.put("clientId", this.YP);
        contentValues.put("messageId", this.YQ);
        contentValues.put("mailboxKey", this.YR);
        contentValues.put("accountKey", this.Lq);
        contentValues.put("fromList", this.YT);
        contentValues.put("toList", this.YU);
        contentValues.put("ccList", this.YV);
        contentValues.put("bccList", this.YW);
        contentValues.put("replyToList", this.YX);
        contentValues.put("meetingInfo", this.YY);
        contentValues.put("snippet", this.YZ);
        contentValues.put("protocolSearchInfo", this.Za);
        contentValues.put("threadTopic", this.Zb);
        contentValues.put("syncData", this.Zc);
        contentValues.put("mainMailboxKey", this.YS);
        return contentValues;
    }
}
