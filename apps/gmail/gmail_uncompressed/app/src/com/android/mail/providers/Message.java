package com.android.mail.providers;

import com.android.mail.ui.*;
import java.util.regex.*;
import android.net.*;
import com.android.emailcommon.mail.*;
import com.android.emailcommon.a.*;
import com.android.emailcommon.b.*;
import android.database.*;
import com.android.mail.utils.*;
import android.os.*;
import android.content.*;
import com.google.common.base.*;
import java.util.*;
import android.text.util.*;
import android.text.*;

public class Message implements Parcelable, ch
{
    public static final Parcelable$Creator<Message> CREATOR;
    private static final Pattern Wd;
    private static Pattern aBc;
    private String YT;
    private String YU;
    private String YV;
    private String YW;
    private String YX;
    private transient String[] aBA;
    private transient String[] aBB;
    private transient String[] aBC;
    private transient String[] aBD;
    private transient List<Attachment> aBE;
    public String aBd;
    public Uri aBe;
    public long aBf;
    public String aBg;
    public String aBh;
    public boolean aBi;
    public Uri aBj;
    public int aBk;
    public boolean aBl;
    public Uri aBm;
    public Uri aBn;
    public long aBo;
    public boolean aBp;
    public int aBq;
    public String aBr;
    public Uri aBs;
    public String aBt;
    public int aBu;
    public int aBv;
    public String aBw;
    public boolean aBx;
    public String aBy;
    private transient String[] aBz;
    public String abh;
    public String ayV;
    public boolean ayX;
    public int ayZ;
    public boolean aza;
    public boolean azb;
    public boolean azc;
    public Uri azj;
    public long id;
    public Uri uri;
    
    static {
        Message.aBc = Pattern.compile("<img\\s+[^>]*src=", 10);
        Wd = Pattern.compile("^<?([^>]+)>?$");
        CREATOR = (Parcelable$Creator)new w();
    }
    
    public Message() {
        this.aBz = null;
        this.aBA = null;
        this.aBB = null;
        this.aBC = null;
        this.aBD = null;
        this.aBE = null;
    }
    
    public Message(final Context context, final f f, final Uri uri) {
        this.aBz = null;
        this.aBA = null;
        this.aBB = null;
        this.aBC = null;
        this.aBD = null;
        this.aBE = null;
        this.bW(Address.c(f.kU()));
        this.bX(Address.c(f.a(Message$RecipientType.Xo)));
        this.bY(Address.c(f.a(Message$RecipientType.Xp)));
        this.bZ(Address.c(f.a(Message$RecipientType.Xq)));
        this.ca(Address.c(f.kV()));
        this.ayV = f.getSubject();
        final Date kt = f.kT();
        final Date lo = f.lo();
        if (kt != null) {
            this.aBf = kt.getTime();
        }
        else if (lo != null) {
            this.aBf = lo.getTime();
        }
        else {
            this.aBf = System.currentTimeMillis();
        }
        this.aBp = false;
        this.aBw = null;
        this.aBk = 0;
        this.ayZ = 0;
        this.azc = false;
        this.aBt = null;
        this.aBo = 0L;
        this.aBx = false;
        this.aBy = null;
        this.ayX = false;
        final ArrayList<j> list = new ArrayList<j>();
        final ArrayList<j> list2 = new ArrayList<j>();
        i.a(f, list, list2);
        final d b = c.b(list);
        this.abh = b.abh;
        this.aBh = b.abf;
        this.aBg = t.cv(b.abg);
        this.aBE = new ArrayList<Attachment>();
        final String kw = f.kW();
        final Iterator<j> iterator = list2.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final j j = iterator.next();
            final List<Attachment> abe = this.aBE;
            final int n2 = n + 1;
            abe.add(new Attachment(context, j, uri, kw, Integer.toString(n), false));
            n = n2;
        }
        for (final j i : list) {
            final String[] y = i.Y("Content-ID");
            if (y != null && y.length == 1) {
                this.aBE.add(new Attachment(context, i, uri, kw, Message.Wd.matcher(y[0]).replaceAll("$1"), true));
            }
        }
        this.ayX = !this.aBE.isEmpty();
        Uri d;
        if (this.ayX) {
            d = EmlAttachmentProvider.d(uri, kw);
        }
        else {
            d = null;
        }
        this.aBm = d;
        this.aBn = EmlAttachmentProvider.e(uri, kw);
    }
    
    public Message(final Cursor cursor) {
        int aBx = 1;
        this.aBz = null;
        this.aBA = null;
        this.aBB = null;
        this.aBC = null;
        this.aBD = null;
        this.aBE = null;
        if (cursor != null) {
            this.id = cursor.getLong(0);
            this.aBd = cursor.getString(aBx);
            final String string = cursor.getString(2);
            Uri parse;
            if (!TextUtils.isEmpty((CharSequence)string)) {
                parse = Uri.parse(string);
            }
            else {
                parse = null;
            }
            this.uri = parse;
            final String string2 = cursor.getString(3);
            Uri parse2;
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                parse2 = Uri.parse(string2);
            }
            else {
                parse2 = null;
            }
            this.aBe = parse2;
            this.ayV = cursor.getString(4);
            this.abh = cursor.getString(5);
            this.YT = cursor.getString(6);
            this.YU = cursor.getString(7);
            this.YV = cursor.getString(8);
            this.YW = cursor.getString(9);
            this.YX = cursor.getString(10);
            this.aBf = cursor.getLong(11);
            this.aBg = cursor.getString(12);
            this.aBh = cursor.getString(13);
            this.aBi = (cursor.getInt(14) != 0 && aBx);
            final String string3 = cursor.getString(15);
            Uri parse3;
            if (!TextUtils.isEmpty((CharSequence)string3)) {
                parse3 = Uri.parse(string3);
            }
            else {
                parse3 = null;
            }
            this.aBj = parse3;
            this.aBk = cursor.getInt(16);
            this.aBl = (cursor.getInt(17) != 0 && aBx);
            this.ayX = (cursor.getInt(18) != 0 && aBx);
            final String string4 = cursor.getString(19);
            Uri parse4;
            if (this.ayX && !TextUtils.isEmpty((CharSequence)string4)) {
                parse4 = Uri.parse(string4);
            }
            else {
                parse4 = null;
            }
            this.aBm = parse4;
            final String string5 = cursor.getString(20);
            Uri parse5;
            if (this.ayX && !TextUtils.isEmpty((CharSequence)string5)) {
                parse5 = Uri.parse(string5);
            }
            else {
                parse5 = null;
            }
            this.aBn = parse5;
            this.aBo = cursor.getLong(21);
            this.aBp = (cursor.getInt(22) != 0 && aBx);
            this.aza = (cursor.getInt(23) != 0 && aBx);
            this.azb = (cursor.getInt(24) != 0 && aBx);
            this.azc = (cursor.getInt(25) != 0 && aBx);
            this.aBq = cursor.getInt(26);
            this.aBr = cursor.getString(27);
            final String string6 = cursor.getString(29);
            final boolean empty = TextUtils.isEmpty((CharSequence)string6);
            Uri parse6 = null;
            if (!empty) {
                parse6 = Uri.parse(string6);
            }
            this.azj = parse6;
            this.aBs = ag.bO(cursor.getString(30));
            this.aBt = cursor.getString(31);
            this.aBu = cursor.getInt(32);
            this.aBv = cursor.getInt(33);
            this.aBw = cursor.getString(34);
            this.ayZ = cursor.getInt(35);
            if (cursor.getInt(36) == 0) {
                aBx = 0;
            }
            this.aBx = (aBx != 0);
            this.aBy = cursor.getString(37);
        }
    }
    
    private Message(final Parcel parcel) {
        boolean aBx = true;
        this.aBz = null;
        this.aBA = null;
        this.aBB = null;
        this.aBC = null;
        this.aBD = null;
        this.aBE = null;
        this.id = parcel.readLong();
        this.aBd = parcel.readString();
        this.uri = (Uri)parcel.readParcelable((ClassLoader)null);
        this.aBe = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayV = parcel.readString();
        this.abh = parcel.readString();
        this.YT = parcel.readString();
        this.YU = parcel.readString();
        this.YV = parcel.readString();
        this.YW = parcel.readString();
        this.YX = parcel.readString();
        this.aBf = parcel.readLong();
        this.aBg = parcel.readString();
        this.aBh = parcel.readString();
        this.aBi = (parcel.readInt() != 0 && aBx);
        this.aBj = (Uri)parcel.readParcelable((ClassLoader)null);
        this.aBk = parcel.readInt();
        this.aBl = (parcel.readInt() != 0 && aBx);
        this.ayX = (parcel.readInt() != 0 && aBx);
        this.aBm = (Uri)parcel.readParcelable((ClassLoader)null);
        this.aBo = parcel.readLong();
        this.aBp = (parcel.readInt() != 0 && aBx);
        this.aBq = parcel.readInt();
        this.aBr = parcel.readString();
        this.azj = (Uri)parcel.readParcelable((ClassLoader)null);
        this.aBs = (Uri)parcel.readParcelable((ClassLoader)null);
        this.aBt = parcel.readString();
        this.aBu = parcel.readInt();
        this.aBv = parcel.readInt();
        this.aBw = parcel.readString();
        this.ayZ = parcel.readInt();
        if (parcel.readInt() == 0) {
            aBx = false;
        }
        this.aBx = aBx;
        this.aBy = parcel.readString();
    }
    
    public static String[] cb(final String s) {
        int i = 0;
        if (TextUtils.isEmpty((CharSequence)s)) {
            return new String[0];
        }
        final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
        final String[] array = new String[tokenize.length];
        while (i < tokenize.length) {
            array[i] = tokenize[i].toString();
            ++i;
        }
        return array;
    }
    
    private static String[] m(final String[] array) {
        final String[] array2 = new String[array.length];
        for (int i = 0; i < array.length; ++i) {
            array2[i] = Html.fromHtml(array[i].replace("<", "&lt;").replace(">", "&gt;")).toString();
        }
        return array2;
    }
    
    public final void a(final AsyncQueryHandler asyncQueryHandler) {
        this.aBp = true;
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("alwaysShowImages", 1);
        asyncQueryHandler.startUpdate(0, (Object)null, this.uri, contentValues, (String)null, (String[])null);
    }
    
    public final void bW(final String yt) {
        synchronized (this) {
            this.YT = yt;
            this.aBz = null;
        }
    }
    
    public final void bX(final String yu) {
        synchronized (this) {
            this.YU = yu;
            this.aBA = null;
        }
    }
    
    public final void bY(final String yv) {
        synchronized (this) {
            this.YV = yv;
            this.aBB = null;
        }
    }
    
    public final void bZ(final String yw) {
        synchronized (this) {
            this.YW = yw;
            this.aBC = null;
        }
    }
    
    public final int bj(final boolean b) {
        int size;
        if (b) {
            size = this.vC().size();
        }
        else {
            final List<Attachment> vc = this.vC();
            final int size2 = vc.size();
            int i = 0;
            size = 0;
            while (i < size2) {
                int n;
                if (!vc.get(i).uB()) {
                    n = size + 1;
                }
                else {
                    n = size;
                }
                ++i;
                size = n;
            }
        }
        return size;
    }
    
    public final void ca(final String yx) {
        synchronized (this) {
            this.YX = yx;
            this.aBD = null;
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (o != null && o instanceof Message && e.b(this.uri, ((Message)o).uri));
    }
    
    public final boolean f(final Message message) {
        return TextUtils.equals((CharSequence)this.YT, (CharSequence)message.YT) && this.ayZ == message.ayZ && this.azc == message.azc && this.aza == message.aza && TextUtils.equals((CharSequence)this.YU, (CharSequence)message.YU) && TextUtils.equals((CharSequence)this.YV, (CharSequence)message.YV) && TextUtils.equals((CharSequence)this.YW, (CharSequence)message.YW) && TextUtils.equals((CharSequence)this.ayV, (CharSequence)message.ayV) && TextUtils.equals((CharSequence)this.aBg, (CharSequence)message.aBg) && TextUtils.equals((CharSequence)this.aBh, (CharSequence)message.aBh) && e.b(this.aBm, message.aBm) && e.b(this.vC(), message.vC());
    }
    
    public final String getCc() {
        return this.YV;
    }
    
    public final long getId() {
        return this.id;
    }
    
    public final String getTo() {
        return this.YU;
    }
    
    @Override
    public int hashCode() {
        if (this.uri == null) {
            return 0;
        }
        return this.uri.hashCode();
    }
    
    @Override
    public String toString() {
        return "[message id=" + this.id + "]";
    }
    
    public final boolean uV() {
        return this.aBk != 0;
    }
    
    public final String[] vA() {
        synchronized (this) {
            if (this.aBD == null) {
                this.aBD = cb(this.YX);
            }
            return this.aBD;
        }
    }
    
    public final String[] vB() {
        return m(this.vA());
    }
    
    public final List<Attachment> vC() {
        if (this.aBE == null) {
            if (this.aBr != null) {
                this.aBE = Attachment.bK(this.aBr);
            }
            else {
                this.aBE = Collections.emptyList();
            }
        }
        return this.aBE;
    }
    
    public final boolean vD() {
        return !this.aBp && (this.aBi || (!TextUtils.isEmpty((CharSequence)this.aBg) && Message.aBc.matcher(this.aBg).find()));
    }
    
    public final boolean vE() {
        return this.aBi;
    }
    
    public final String vF() {
        String aBg = "";
        if (!TextUtils.isEmpty((CharSequence)this.aBg)) {
            aBg = this.aBg;
        }
        else if (!TextUtils.isEmpty((CharSequence)this.aBh)) {
            final SpannableString spannableString = new SpannableString((CharSequence)this.aBh);
            Linkify.addLinks((Spannable)spannableString, 2);
            return Html.toHtml((Spanned)spannableString);
        }
        return aBg;
    }
    
    public final boolean vp() {
        return (0x10L & this.aBo) == 0x10L;
    }
    
    public final String vq() {
        return this.YT;
    }
    
    public final String vr() {
        return this.YW;
    }
    
    public final String[] vs() {
        synchronized (this) {
            if (this.aBz == null) {
                this.aBz = cb(this.YT);
            }
            return this.aBz;
        }
    }
    
    public final String[] vt() {
        return m(this.vs());
    }
    
    public final String[] vu() {
        synchronized (this) {
            if (this.aBA == null) {
                this.aBA = cb(this.YU);
            }
            return this.aBA;
        }
    }
    
    public final String[] vv() {
        return m(this.vu());
    }
    
    public final String[] vw() {
        synchronized (this) {
            if (this.aBB == null) {
                this.aBB = cb(this.YV);
            }
            return this.aBB;
        }
    }
    
    public final String[] vx() {
        return m(this.vw());
    }
    
    public final String[] vy() {
        synchronized (this) {
            if (this.aBC == null) {
                this.aBC = cb(this.YW);
            }
            return this.aBC;
        }
    }
    
    public final String[] vz() {
        return m(this.vy());
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        parcel.writeLong(this.id);
        parcel.writeString(this.aBd);
        parcel.writeParcelable((Parcelable)this.uri, 0);
        parcel.writeParcelable((Parcelable)this.aBe, 0);
        parcel.writeString(this.ayV);
        parcel.writeString(this.abh);
        parcel.writeString(this.YT);
        parcel.writeString(this.YU);
        parcel.writeString(this.YV);
        parcel.writeString(this.YW);
        parcel.writeString(this.YX);
        parcel.writeLong(this.aBf);
        parcel.writeString(this.aBg);
        parcel.writeString(this.aBh);
        int n3;
        if (this.aBi) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        parcel.writeParcelable((Parcelable)this.aBj, 0);
        parcel.writeInt(this.aBk);
        int n4;
        if (this.aBl) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        parcel.writeInt(n4);
        int n5;
        if (this.ayX) {
            n5 = n2;
        }
        else {
            n5 = 0;
        }
        parcel.writeInt(n5);
        parcel.writeParcelable((Parcelable)this.aBm, 0);
        parcel.writeLong(this.aBo);
        int n6;
        if (this.aBp) {
            n6 = n2;
        }
        else {
            n6 = 0;
        }
        parcel.writeInt(n6);
        parcel.writeInt(this.aBq);
        parcel.writeString(this.aBr);
        parcel.writeParcelable((Parcelable)this.azj, 0);
        parcel.writeParcelable((Parcelable)this.aBs, 0);
        parcel.writeString(this.aBt);
        parcel.writeInt(this.aBu);
        parcel.writeInt(this.aBv);
        parcel.writeString(this.aBw);
        parcel.writeInt(this.ayZ);
        if (!this.aBx) {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeString(this.aBy);
    }
}
