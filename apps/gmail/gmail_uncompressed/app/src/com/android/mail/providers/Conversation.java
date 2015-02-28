package com.android.mail.providers;

import com.android.mail.c.*;
import android.net.*;
import android.database.*;
import android.text.*;
import com.android.mail.browse.*;
import com.android.mail.utils.*;
import android.os.*;
import com.google.common.collect.*;
import android.content.*;
import java.util.*;

public class Conversation implements Parcelable
{
    public static final Parcelable$ClassLoaderCreator<Conversation> CREATOR;
    public static final a<Conversation> aqh;
    private static String azp;
    public static final Collection<Conversation> azq;
    private static final Bundle azr;
    private static final Bundle azs;
    private static final String mW;
    public final boolean aam;
    public final String ayV;
    public final long ayW;
    public final boolean ayX;
    public final Uri ayY;
    public final int ayZ;
    public boolean aza;
    public boolean azb;
    public boolean azc;
    private FolderList azd;
    public int aze;
    public final int azf;
    public final boolean azg;
    public final boolean azh;
    public final boolean azi;
    public final Uri azj;
    public final ConversationInfo azk;
    public final Uri azl;
    public final long azm;
    public transient boolean azn;
    private transient boolean azo;
    public final int color;
    public final long id;
    @Deprecated
    public transient int position;
    public int priority;
    public final Uri uri;
    
    static {
        mW = D.AU();
        azq = Collections.emptyList();
        CREATOR = (Parcelable$ClassLoaderCreator)new g();
        (azs = new Bundle(2)).putBoolean("rawFolders", true);
        Conversation.azs.putInt("options", 1);
        (azr = new Bundle(2)).putBoolean("conversationInfo", true);
        Conversation.azr.putInt("options", 1);
        aqh = new h();
    }
    
    private Conversation(final long id, final Uri uri, final String ayV, final long ayW, final boolean ayX, final Uri ayY, final int ayZ, final int priority, final boolean aza, final boolean azb, final boolean azc, final FolderList azd, final int aze, final int azf, final boolean azg, final boolean azi, final boolean azh, final Uri azj, final ConversationInfo azk, final Uri azl, final boolean aam, final long azm) {
        if (azk == null) {
            throw new IllegalArgumentException("Null conversationInfo");
        }
        this.id = id;
        this.uri = uri;
        this.ayV = ayV;
        this.ayW = ayW;
        this.ayX = ayX;
        this.ayY = ayY;
        this.ayZ = ayZ;
        this.priority = priority;
        this.aza = aza;
        this.azb = azb;
        this.azc = azc;
        this.azd = azd;
        this.aze = aze;
        this.azf = azf;
        this.azg = azg;
        this.azi = azi;
        this.azh = azh;
        this.color = 0;
        this.azj = azj;
        this.azk = azk;
        this.azl = azl;
        this.aam = aam;
        this.azm = azm;
    }
    
    public Conversation(final Cursor cursor) {
        int aam = 1;
        if (cursor == null) {
            throw new IllegalArgumentException("Creating conversation from null cursor");
        }
        this.id = cursor.getLong(0);
        this.uri = Uri.parse(cursor.getString(aam));
        this.ayW = cursor.getLong(6);
        final String string = cursor.getString(3);
        if (string == null) {
            this.ayV = "";
        }
        else {
            this.ayV = string;
        }
        this.ayX = (cursor.getInt(7) != 0 && aam);
        final String string2 = cursor.getString(2);
        Uri parse;
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            parse = Uri.parse(string2);
        }
        else {
            parse = null;
        }
        this.ayY = parse;
        this.ayZ = cursor.getInt(10);
        this.priority = cursor.getInt(11);
        this.aza = (cursor.getInt(12) != 0 && aam);
        this.azb = (cursor.getInt(13) != 0 && aam);
        this.azc = (cursor.getInt(14) != 0 && aam);
        while (true) {
            Label_0554: {
                if (!(cursor instanceof u)) {
                    break Label_0554;
                }
                final byte[] bu = ((u)cursor).bU(15);
                if (bu == null || bu.length <= 0) {
                    break Label_0554;
                }
                final FolderList azd = FolderList.d(bu);
                this.azd = azd;
                this.aze = cursor.getInt(16);
                this.azf = cursor.getInt(17);
                this.azg = (cursor.getInt(18) != 0 && aam);
                this.azi = (cursor.getInt(19) != 0 && aam);
                this.azh = (cursor.getInt(20) != 0 && aam);
                this.color = cursor.getInt(21);
                final String string3 = cursor.getString(22);
                Uri parse2;
                if (!TextUtils.isEmpty((CharSequence)string3)) {
                    parse2 = Uri.parse(string3);
                }
                else {
                    parse2 = null;
                }
                this.azj = parse2;
                this.position = -1;
                this.azn = false;
                while (true) {
                    Label_0630: {
                        if (!(cursor instanceof u)) {
                            break Label_0630;
                        }
                        final byte[] bu2 = ((u)cursor).bU(5);
                        if (bu2 == null || bu2.length <= 0) {
                            break Label_0630;
                        }
                        final ConversationInfo azk = ConversationInfo.c(bu2);
                        this.azk = azk;
                        if (this.azk == null) {
                            E.g(Conversation.mW, "Null conversation info from cursor", new Object[0]);
                        }
                        final String string4 = cursor.getString(24);
                        final boolean empty = TextUtils.isEmpty((CharSequence)string4);
                        Uri parse3 = null;
                        if (!empty) {
                            parse3 = Uri.parse(string4);
                        }
                        this.azl = parse3;
                        if (cursor.getInt(25) == 0) {
                            aam = 0;
                        }
                        this.aam = (aam != 0);
                        this.azm = cursor.getLong(26);
                        return;
                    }
                    final Bundle respond = cursor.respond(Conversation.azr);
                    if (respond.containsKey("conversationInfo")) {
                        final ConversationInfo azk = (ConversationInfo)respond.getParcelable("conversationInfo");
                        continue;
                    }
                    final ConversationInfo azk = ConversationInfo.c(cursor.getBlob(5));
                    continue;
                }
            }
            final Bundle respond2 = cursor.respond(Conversation.azs);
            if (respond2.containsKey("rawFolders")) {
                final FolderList azd = (FolderList)respond2.getParcelable("rawFolders");
                continue;
            }
            final FolderList azd = FolderList.d(cursor.getBlob(15));
            continue;
        }
    }
    
    private Conversation(final Parcel parcel, final ClassLoader classLoader) {
        boolean aam = true;
        this.id = parcel.readLong();
        this.uri = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayV = parcel.readString();
        this.ayW = parcel.readLong();
        this.ayX = (parcel.readInt() != 0 && aam);
        this.ayY = (Uri)parcel.readParcelable((ClassLoader)null);
        this.ayZ = parcel.readInt();
        this.priority = parcel.readInt();
        this.aza = (parcel.readInt() != 0 && aam);
        this.azb = (parcel.readInt() != 0 && aam);
        this.azc = (parcel.readInt() != 0 && aam);
        this.azd = (FolderList)parcel.readParcelable(classLoader);
        this.aze = parcel.readInt();
        this.azf = parcel.readInt();
        this.azg = (parcel.readInt() != 0 && aam);
        this.azi = (parcel.readInt() != 0 && aam);
        this.azh = (parcel.readInt() != 0 && aam);
        this.color = parcel.readInt();
        this.azj = (Uri)parcel.readParcelable((ClassLoader)null);
        this.position = -1;
        this.azn = false;
        this.azk = (ConversationInfo)parcel.readParcelable(classLoader);
        this.azl = (Uri)parcel.readParcelable((ClassLoader)null);
        if (parcel.readInt() == 0) {
            aam = false;
        }
        this.aam = aam;
        this.azm = parcel.readLong();
    }
    
    public Conversation(final Conversation conversation) {
        if (conversation == null) {
            throw new IllegalArgumentException("Copying null conversation");
        }
        this.id = conversation.id;
        this.uri = conversation.uri;
        this.ayW = conversation.ayW;
        this.ayV = conversation.ayV;
        this.ayX = conversation.ayX;
        this.ayY = conversation.ayY;
        this.ayZ = conversation.ayZ;
        this.priority = conversation.priority;
        this.aza = conversation.aza;
        this.azb = conversation.azb;
        this.azc = conversation.azc;
        this.azd = conversation.azd;
        this.aze = conversation.aze;
        this.azf = conversation.azf;
        this.azg = conversation.azg;
        this.azi = conversation.azi;
        this.azh = conversation.azh;
        this.color = conversation.color;
        this.azj = conversation.azj;
        this.position = conversation.position;
        this.azn = conversation.azn;
        this.azk = conversation.azk;
        this.azl = conversation.azl;
        this.aam = conversation.aam;
        this.azm = conversation.azm;
    }
    
    public static final boolean a(final Collection<Conversation> collection, final Conversation conversation) {
        if (collection == null || collection.size() <= 0) {
            return false;
        }
        if (conversation == null) {
            return true;
        }
        final long id = conversation.id;
        final Iterator<Conversation> iterator = collection.iterator();
        while (iterator.hasNext()) {
            if (id == iterator.next().id) {
                return true;
            }
        }
        return false;
    }
    
    public static String e(final Context context, final String s, String string) {
        if (TextUtils.isEmpty((CharSequence)string)) {
            string = context.getString(2131296679);
        }
        else if (!TextUtils.isEmpty((CharSequence)s)) {
            if (Conversation.azp == null) {
                Conversation.azp = context.getString(2131296500);
            }
            return String.format(Conversation.azp, s, string);
        }
        return string;
    }
    
    public static Collection<Conversation> g(final Conversation conversation) {
        if (conversation == null) {
            return Conversation.azq;
        }
        return ImmutableList.aE(conversation);
    }
    
    public static String o(final Collection<Conversation> collection) {
        final StringBuilder sb = new StringBuilder(collection.size() + " conversations:");
        final Iterator<Conversation> iterator = collection.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Conversation conversation = iterator.next();
            ++n;
            sb.append("      " + n + ": " + conversation.toString() + "\n");
        }
        return sb.toString();
    }
    
    public final void a(final FolderList azd) {
        this.azd = azd;
    }
    
    public final String bL(String string) {
        if (this.azl != null) {
            string = this.azl.toString();
        }
        return string;
    }
    
    public final void d(final ContentValues contentValues) {
        if (contentValues != null) {
            for (final String s : contentValues.keySet()) {
                final Object value = contentValues.get(s);
                E.d(Conversation.mW, "Conversation: applying cached value to col=%s val=%s", s, value);
                if ("read".equals(s)) {
                    this.aza = ((int)value != 0);
                }
                else if ("conversationInfo".equals(s)) {
                    final ConversationInfo c = ConversationInfo.c((byte[])value);
                    if (c == null) {
                        E.c(Conversation.mW, "Null ConversationInfo in applyCachedValues", new Object[0]);
                    }
                    else {
                        this.azk.b(c);
                    }
                }
                else if ("conversationFlags".equals(s)) {
                    this.aze = (int)value;
                }
                else if ("starred".equals(s)) {
                    this.azc = ((int)value != 0);
                }
                else if ("seen".equals(s)) {
                    this.azb = ((int)value != 0);
                }
                else if ("rawFolders".equals(s)) {
                    this.azd = FolderList.d((byte[])value);
                }
                else {
                    if ("viewed".equals(s)) {
                        continue;
                    }
                    if ("priority".equals(s)) {
                        this.priority = (int)value;
                    }
                    else {
                        E.e(Conversation.mW, new UnsupportedOperationException(), "unsupported cached conv value in col=%s", s);
                    }
                }
            }
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o instanceof Conversation && ((Conversation)o).uri.equals((Object)this.uri);
    }
    
    @Override
    public int hashCode() {
        return this.uri.hashCode();
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("[conversation id=");
        sb.append(this.id);
        if (E.isLoggable(Conversation.mW, 3)) {
            sb.append(", subject=");
            sb.append(this.ayV);
        }
        sb.append("]");
        return sb.toString();
    }
    
    public final List<Folder> uD() {
        return this.azd.aAL;
    }
    
    public final boolean uE() {
        return this.priority == 1;
    }
    
    public final boolean uF() {
        return (0x1 & this.aze) != 0x0;
    }
    
    public final String uG() {
        if (!TextUtils.isEmpty((CharSequence)this.azk.azO)) {
            return this.azk.azO;
        }
        return "";
    }
    
    public final int uH() {
        return this.azk.azM;
    }
    
    public final int uI() {
        return this.azk.azN;
    }
    
    public final boolean uJ() {
        return this.azo;
    }
    
    public final void uK() {
        this.azo = true;
    }
    
    public final boolean uL() {
        final Iterator<Folder> iterator = this.azd.aAL.iterator();
        while (iterator.hasNext()) {
            if (iterator.next().uU()) {
                return true;
            }
        }
        return false;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        parcel.writeLong(this.id);
        parcel.writeParcelable((Parcelable)this.uri, n);
        parcel.writeString(this.ayV);
        parcel.writeLong(this.ayW);
        int n3;
        if (this.ayX) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        parcel.writeParcelable((Parcelable)this.ayY, 0);
        parcel.writeInt(this.ayZ);
        parcel.writeInt(this.priority);
        int n4;
        if (this.aza) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        parcel.writeInt(n4);
        int n5;
        if (this.azb) {
            n5 = n2;
        }
        else {
            n5 = 0;
        }
        parcel.writeInt(n5);
        int n6;
        if (this.azc) {
            n6 = n2;
        }
        else {
            n6 = 0;
        }
        parcel.writeInt(n6);
        parcel.writeParcelable((Parcelable)this.azd, 0);
        parcel.writeInt(this.aze);
        parcel.writeInt(this.azf);
        int n7;
        if (this.azg) {
            n7 = n2;
        }
        else {
            n7 = 0;
        }
        parcel.writeInt(n7);
        int n8;
        if (this.azi) {
            n8 = n2;
        }
        else {
            n8 = 0;
        }
        parcel.writeInt(n8);
        int n9;
        if (this.azh) {
            n9 = n2;
        }
        else {
            n9 = 0;
        }
        parcel.writeInt(n9);
        parcel.writeInt(this.color);
        parcel.writeParcelable((Parcelable)this.azj, 0);
        parcel.writeParcelable((Parcelable)this.azk, 0);
        parcel.writeParcelable((Parcelable)this.azl, 0);
        if (!this.aam) {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeLong(this.azm);
    }
}
