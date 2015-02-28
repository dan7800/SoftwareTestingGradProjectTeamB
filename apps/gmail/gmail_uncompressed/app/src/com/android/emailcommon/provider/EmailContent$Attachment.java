package com.android.emailcommon.provider;

import android.net.*;
import android.os.*;
import android.database.*;
import android.content.*;
import com.android.mail.utils.*;

public final class EmailContent$Attachment extends EmailContent implements Parcelable
{
    public static Uri CONTENT_URI;
    public static final Parcelable$Creator<EmailContent$Attachment> CREATOR;
    public static final String[] XO;
    public static Uri Yh;
    public static String Yi;
    public static String Yj;
    public static boolean Yk;
    public long Lo;
    public long Lq;
    public String Yl;
    public String Ym;
    public String Yn;
    private String Yo;
    private String Yp;
    public long Yq;
    public String Yr;
    public String Ys;
    public String Yt;
    public byte[] Yu;
    public int Yv;
    public int Yw;
    public int Yx;
    public int dM;
    
    static {
        XO = new String[] { "_id", "fileName", "mimeType", "size", "contentId", "contentUri", "cachedFile", "messageKey", "location", "encoding", "content", "flags", "content_bytes", "accountKey", "uiState", "uiDestination", "uiDownloadedSize" };
        CREATOR = (Parcelable$Creator)new d();
    }
    
    public EmailContent$Attachment() {
        this.XU = EmailContent$Attachment.CONTENT_URI;
    }
    
    public EmailContent$Attachment(final Parcel parcel) {
        this.XU = EmailContent$Attachment.CONTENT_URI;
        this.Ln = parcel.readLong();
        this.Yl = parcel.readString();
        this.Ym = parcel.readString();
        this.Lo = parcel.readLong();
        this.Yn = parcel.readString();
        this.Yo = parcel.readString();
        this.Yp = parcel.readString();
        this.Yq = parcel.readLong();
        this.Yr = parcel.readString();
        this.Ys = parcel.readString();
        this.Yt = parcel.readString();
        this.dM = parcel.readInt();
        this.Lq = parcel.readLong();
        final int int1 = parcel.readInt();
        if (int1 == -1) {
            this.Yu = null;
        }
        else {
            parcel.readByteArray(this.Yu = new byte[int1]);
        }
        this.Yv = parcel.readInt();
        this.Yw = parcel.readInt();
        this.Yx = parcel.readInt();
    }
    
    public static void lJ() {
        EmailContent$Attachment.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/attachment");
        EmailContent$Attachment.Yh = Uri.parse(EmailContent.CONTENT_URI + "/attachment/message");
        EmailContent$Attachment.Yj = EmailContent.XX + ".attachmentprovider";
        EmailContent$Attachment.Yk = (EmailContent$Attachment.Yi = "content://" + EmailContent$Attachment.Yj).equals("content://com.android.email.attachmentprovider");
    }
    
    public static EmailContent$Attachment o(final Context context, final long n) {
        return EmailContent.a(context, EmailContent$Attachment.class, EmailContent$Attachment.CONTENT_URI, EmailContent$Attachment.XO, n);
    }
    
    public static EmailContent$Attachment[] p(final Context context, final long n) {
        final Cursor query = context.getContentResolver().query(ContentUris.withAppendedId(EmailContent$Attachment.Yh, n), EmailContent$Attachment.XO, (String)null, (String[])null, (String)null);
        try {
            final int count = query.getCount();
            final EmailContent$Attachment[] array = new EmailContent$Attachment[count];
            for (int i = 0; i < count; ++i) {
                query.moveToNext();
                final EmailContent$Attachment emailContent$Attachment = new EmailContent$Attachment();
                emailContent$Attachment.b(query);
                array[i] = emailContent$Attachment;
            }
            return array;
        }
        finally {
            query.close();
        }
    }
    
    public final void aw(final String yp) {
        this.Yp = yp;
    }
    
    public final void ax(final String yo) {
        this.Yo = yo;
    }
    
    @Override
    public final void b(final Cursor cursor) {
        this.XU = EmailContent$Attachment.CONTENT_URI;
        this.Ln = cursor.getLong(0);
        this.Yl = cursor.getString(1);
        this.Ym = cursor.getString(2);
        this.Lo = cursor.getLong(3);
        this.Yn = cursor.getString(4);
        this.Yo = cursor.getString(5);
        this.Yp = cursor.getString(6);
        this.Yq = cursor.getLong(7);
        this.Yr = cursor.getString(8);
        this.Ys = cursor.getString(9);
        this.Yt = cursor.getString(10);
        this.dM = cursor.getInt(11);
        this.Yu = cursor.getBlob(12);
        this.Lq = cursor.getLong(13);
        this.Yv = cursor.getInt(14);
        this.Yw = cursor.getInt(15);
        this.Yx = cursor.getInt(16);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final ContentValues lB() {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("fileName", this.Yl);
        contentValues.put("mimeType", this.Ym);
        contentValues.put("size", this.Lo);
        contentValues.put("contentId", this.Yn);
        contentValues.put("contentUri", this.Yo);
        contentValues.put("cachedFile", this.Yp);
        contentValues.put("messageKey", this.Yq);
        contentValues.put("location", this.Yr);
        contentValues.put("encoding", this.Ys);
        contentValues.put("content", this.Yt);
        contentValues.put("flags", this.dM);
        contentValues.put("content_bytes", this.Yu);
        contentValues.put("accountKey", this.Lq);
        contentValues.put("uiState", this.Yv);
        contentValues.put("uiDestination", this.Yw);
        contentValues.put("uiDownloadedSize", this.Yx);
        return contentValues;
    }
    
    public final String lK() {
        return this.Yp;
    }
    
    public final String lL() {
        if (this.Yo == null) {
            return null;
        }
        if (EmailContent$Attachment.Yk || !this.Yo.startsWith("content://com.android.email.attachmentprovider")) {
            return this.Yo;
        }
        final int index = this.Yo.indexOf(47, 10);
        if (index > 0) {
            return EmailContent$Attachment.Yi + "/" + this.Yo.substring(index);
        }
        E.f("Attachment", "Improper contentUri format: " + this.Yo, new Object[0]);
        return this.Yo;
    }
    
    public final String toString() {
        return "[" + this.Yl + ", " + this.Ym + ", " + this.Lo + ", " + this.Yn + ", " + this.Yo + ", " + this.Yp + ", " + this.Yq + ", " + this.Yr + ", " + this.Ys + ", " + this.dM + ", " + this.Yu + ", " + this.Lq + "," + this.Yv + "," + this.Yw + "," + this.Yx + "]";
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeLong(this.Ln);
        parcel.writeString(this.Yl);
        parcel.writeString(this.Ym);
        parcel.writeLong(this.Lo);
        parcel.writeString(this.Yn);
        parcel.writeString(this.Yo);
        parcel.writeString(this.Yp);
        parcel.writeLong(this.Yq);
        parcel.writeString(this.Yr);
        parcel.writeString(this.Ys);
        parcel.writeString(this.Yt);
        parcel.writeInt(this.dM);
        parcel.writeLong(this.Lq);
        if (this.Yu == null) {
            parcel.writeInt(-1);
        }
        else {
            parcel.writeInt(this.Yu.length);
            parcel.writeByteArray(this.Yu);
        }
        parcel.writeInt(this.Yv);
        parcel.writeInt(this.Yw);
        parcel.writeInt(this.Yx);
    }
}
