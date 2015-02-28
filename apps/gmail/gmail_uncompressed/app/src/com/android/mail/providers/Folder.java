package com.android.mail.providers;

import java.util.regex.*;
import android.text.*;
import android.database.*;
import android.os.*;
import android.content.*;
import com.android.mail.c.*;
import android.net.*;
import android.view.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.graphics.*;
import android.graphics.drawable.*;
import android.util.*;
import java.util.*;
import com.google.common.base.*;

public class Folder implements Parcelable, Comparable<Folder>
{
    public static final Parcelable$ClassLoaderCreator<Folder> CREATOR;
    private static final int[] aAt;
    public static final a<Folder> aqh;
    @Deprecated
    private static final Pattern azX;
    public static final Collection<Folder> azq;
    private static final String mW;
    public boolean aAa;
    public int aAb;
    public Uri aAc;
    public Uri aAd;
    public int aAe;
    public int aAf;
    public int aAg;
    public Uri aAh;
    public int aAi;
    public int aAj;
    public String aAk;
    public String aAl;
    private int aAm;
    private int aAn;
    public Uri aAo;
    public String aAp;
    public Uri aAq;
    public long aAr;
    public String aAs;
    public int ayg;
    public int ays;
    public String azY;
    public p azZ;
    public int id;
    public String name;
    public int type;
    
    static {
        azX = Pattern.compile("\\^\\*\\^");
        mW = D.AU();
        azq = Collections.emptyList();
        aqh = new k();
        CREATOR = (Parcelable$ClassLoaderCreator)new l();
        aAt = new int[] { 16843518 };
    }
    
    private Folder() {
        this.name = "Uninitialized!";
    }
    
    public Folder(final int id, final String azY, final Uri uri, final String name, final int ayg, final boolean aAa, final int aAb, final Uri aAc, final Uri aAd, final int aAe, final int aAf, final int aAg, final Uri aAh, final int ays, final int aAi, final int type, final int aAj, final String aAk, final String aAl, final Uri aAo, final String aAp, final Uri aAq, final long aAr, final String aAs) {
        this.id = id;
        this.azY = azY;
        this.azZ = new p(uri);
        this.name = name;
        this.ayg = ayg;
        this.aAa = aAa;
        this.aAb = aAb;
        this.aAc = aAc;
        this.aAd = aAd;
        this.aAe = aAe;
        this.aAf = aAf;
        this.aAg = aAg;
        this.aAh = aAh;
        this.ays = ays;
        this.aAi = aAi;
        this.type = type;
        this.aAj = aAj;
        this.aAk = aAk;
        this.aAl = aAl;
        if (!TextUtils.isEmpty((CharSequence)aAk)) {
            this.aAm = Integer.parseInt(aAk);
        }
        if (!TextUtils.isEmpty((CharSequence)aAl)) {
            this.aAn = Integer.parseInt(aAl);
        }
        this.aAo = aAo;
        this.aAp = aAp;
        this.aAr = aAr;
        this.aAq = aAq;
        this.aAs = aAs;
    }
    
    public Folder(final Cursor cursor) {
        int aAa = 1;
        this.id = cursor.getInt(0);
        this.azY = cursor.getString(aAa);
        this.azZ = new p(Uri.parse(cursor.getString(2)));
        this.name = cursor.getString(3);
        this.ayg = cursor.getInt(5);
        if (cursor.getInt(4) != aAa) {
            aAa = 0;
        }
        this.aAa = (aAa != 0);
        this.aAb = cursor.getInt(6);
        final String string = cursor.getString(7);
        Uri parse;
        if (!TextUtils.isEmpty((CharSequence)string)) {
            parse = Uri.parse(string);
        }
        else {
            parse = null;
        }
        this.aAc = parse;
        final String string2 = cursor.getString(8);
        Uri parse2;
        if (this.aAa && !TextUtils.isEmpty((CharSequence)string2)) {
            parse2 = Uri.parse(string2);
        }
        else {
            parse2 = null;
        }
        this.aAd = parse2;
        this.aAe = cursor.getInt(9);
        this.aAf = cursor.getInt(10);
        this.aAg = cursor.getInt(11);
        final String string3 = cursor.getString(12);
        Uri parse3;
        if (!TextUtils.isEmpty((CharSequence)string3)) {
            parse3 = Uri.parse(string3);
        }
        else {
            parse3 = null;
        }
        this.aAh = parse3;
        this.ays = cursor.getInt(13);
        this.aAi = cursor.getInt(14);
        this.type = cursor.getInt(15);
        this.aAj = cursor.getInt(16);
        this.aAk = cursor.getString(18);
        this.aAl = cursor.getString(19);
        if (!TextUtils.isEmpty((CharSequence)this.aAk)) {
            this.aAm = Integer.parseInt(this.aAk);
        }
        if (!TextUtils.isEmpty((CharSequence)this.aAl)) {
            this.aAn = Integer.parseInt(this.aAl);
        }
        final String string4 = cursor.getString(20);
        Uri parse4;
        if (!TextUtils.isEmpty((CharSequence)string4)) {
            parse4 = Uri.parse(string4);
        }
        else {
            parse4 = null;
        }
        this.aAo = parse4;
        this.aAp = cursor.getString(21);
        this.aAr = cursor.getLong(22);
        final String string5 = cursor.getString(23);
        Uri aAq;
        if (string5 == null) {
            aAq = Uri.EMPTY;
        }
        else {
            aAq = Uri.parse(string5);
        }
        this.aAq = aAq;
        final int columnIndex = cursor.getColumnIndex("unreadSenders");
        if (columnIndex != -1) {
            this.aAs = cursor.getString(columnIndex);
            return;
        }
        this.aAs = null;
    }
    
    public Folder(final Parcel parcel, final ClassLoader classLoader) {
        this.id = parcel.readInt();
        this.azY = parcel.readString();
        this.azZ = new p((Uri)parcel.readParcelable(classLoader));
        this.name = parcel.readString();
        this.ayg = parcel.readInt();
        this.aAa = (parcel.readInt() == 1);
        this.aAb = parcel.readInt();
        this.aAc = (Uri)parcel.readParcelable(classLoader);
        this.aAd = (Uri)parcel.readParcelable(classLoader);
        this.aAe = parcel.readInt();
        this.aAf = parcel.readInt();
        this.aAg = parcel.readInt();
        this.aAh = (Uri)parcel.readParcelable(classLoader);
        this.ays = parcel.readInt();
        this.aAi = parcel.readInt();
        this.type = parcel.readInt();
        this.aAj = parcel.readInt();
        this.aAk = parcel.readString();
        this.aAl = parcel.readString();
        if (!TextUtils.isEmpty((CharSequence)this.aAk)) {
            this.aAm = Integer.parseInt(this.aAk);
        }
        if (!TextUtils.isEmpty((CharSequence)this.aAl)) {
            this.aAn = Integer.parseInt(this.aAl);
        }
        this.aAo = (Uri)parcel.readParcelable(classLoader);
        this.aAp = parcel.readString();
        this.aAq = (Uri)parcel.readParcelable(classLoader);
        this.aAr = parcel.readLong();
        this.aAq = (Uri)parcel.readParcelable(classLoader);
        this.aAs = parcel.readString();
    }
    
    public static boolean O(final int n, final int n2) {
        return (n & n2) != 0x0;
    }
    
    public static c<Folder> a(final Account account, final String s, final String s2, final Context context) {
        if (account.ayk != null) {
            final Uri$Builder buildUpon = account.ayk.buildUpon();
            buildUpon.appendQueryParameter("query", s);
            buildUpon.appendQueryParameter("query_identifier", s2);
            return new c<Folder>(context, buildUpon.build(), E.aCv, (a<Object>)Folder.aqh);
        }
        return null;
    }
    
    public static void a(final Folder folder, final View view) {
        if (view == null) {
            return;
        }
        int n;
        if (!TextUtils.isEmpty((CharSequence)folder.aAk) && (0x400 & folder.type) == 0x0) {
            n = 1;
        }
        else {
            n = 0;
        }
        int int1;
        if (n != 0) {
            int1 = Integer.parseInt(folder.aAk);
        }
        else {
            int1 = 0;
        }
        if (int1 == ag.aM(view.getContext())) {
            n = 0;
        }
        if (n == 0) {
            view.setBackgroundDrawable((Drawable)null);
            view.setVisibility(8);
            return;
        }
        final PaintDrawable backgroundDrawable = new PaintDrawable();
        backgroundDrawable.getPaint().setColor(int1);
        view.setBackgroundDrawable((Drawable)backgroundDrawable);
        view.setVisibility(0);
    }
    
    public static void a(final Folder folder, final ImageView imageView) {
        if (imageView == null) {
            return;
        }
        final int aAj = folder.aAj;
        int n;
        if (aAj == 2130837651 && folder.aAa) {
            n = 2130837706;
        }
        else {
            n = aAj;
        }
        if (n <= 0) {
            com.android.mail.utils.E.f(com.android.mail.utils.E.TAG, "No icon returned for folder %s", folder);
            return;
        }
        Object drawable = imageView.getResources().getDrawable(n);
        if (drawable != null) {
            if (folder.cy(262144)) {
                ((Drawable)drawable).mutate().setColorFilter(folder.cz(16777215), PorterDuff$Mode.MULTIPLY);
            }
            else {
                final StateListDrawable stateListDrawable = new StateListDrawable();
                final Drawable drawable2 = imageView.getResources().getDrawable(n);
                drawable2.mutate().setColorFilter(-16777216, PorterDuff$Mode.MULTIPLY);
                stateListDrawable.addState(Folder.aAt, drawable2);
                stateListDrawable.addState(StateSet.WILD_CARD, (Drawable)drawable);
                drawable = stateListDrawable;
            }
            imageView.setImageDrawable((Drawable)drawable);
            return;
        }
        imageView.setImageDrawable((Drawable)null);
    }
    
    @Deprecated
    public static Folder bN(final String s) {
        int aAa = 1;
        if (TextUtils.isEmpty((CharSequence)s)) {
            return null;
        }
        final Folder folder = new Folder();
        final int index = s.indexOf("^*^");
        if (index == -1) {
            return null;
        }
        final int intValue = Integer.valueOf(s.substring(0, index));
        final String[] split = TextUtils.split(s, Folder.azX);
        if (split.length < 20) {
            final String mw = Folder.mW;
            final Object[] array = new Object[aAa];
            array[0] = split.length;
            com.android.mail.utils.E.f(mw, "split.length %d", array);
            return null;
        }
        folder.id = intValue;
        folder.azZ = new p(bO(split[aAa]));
        folder.name = split[2];
        if (Integer.parseInt(split[3]) == 0) {
            aAa = 0;
        }
        folder.aAa = (aAa != 0);
        folder.ayg = Integer.parseInt(split[4]);
        folder.aAb = Integer.parseInt(split[5]);
        folder.aAc = bO(split[6]);
        folder.aAd = bO(split[7]);
        folder.aAf = Integer.parseInt(split[8]);
        folder.aAg = Integer.parseInt(split[9]);
        folder.aAh = bO(split[10]);
        folder.ays = Integer.parseInt(split[11]);
        folder.aAi = Integer.parseInt(split[12]);
        folder.type = Integer.parseInt(split[13]);
        folder.aAj = Integer.parseInt(split[14]);
        folder.aAk = split[15];
        folder.aAl = split[16];
        if (!TextUtils.isEmpty((CharSequence)folder.aAk)) {
            folder.aAm = Integer.parseInt(folder.aAk);
        }
        if (!TextUtils.isEmpty((CharSequence)folder.aAl)) {
            folder.aAn = Integer.parseInt(folder.aAl);
        }
        folder.aAo = bO(split[17]);
        folder.aAp = split[18];
        folder.aAq = bO(split[19]);
        folder.aAs = null;
        return folder;
    }
    
    private static Uri bO(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return null;
        }
        return Uri.parse(s);
    }
    
    public static boolean cB(final int n) {
        return (0x20000 & n) != 0x0;
    }
    
    public static final boolean g(final Folder folder) {
        return folder == null || Uri.EMPTY.equals((Object)folder.aAq);
    }
    
    public static HashMap<Uri, Folder> s(final List<Folder> list) {
        final HashMap<Uri, Folder> hashMap = new HashMap<Uri, Folder>();
        for (final Folder folder : list) {
            hashMap.put(folder.azZ.AR(), folder);
        }
        return hashMap;
    }
    
    public static String[] t(final List<Folder> list) {
        if (list == null || list.size() == 0) {
            return new String[0];
        }
        final String[] array = new String[list.size()];
        final Iterator<Folder> iterator = list.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            array[n] = iterator.next().azZ.toString();
            ++n;
        }
        return array;
    }
    
    public final int bx(int aAn) {
        if (!TextUtils.isEmpty((CharSequence)this.aAl)) {
            aAn = this.aAn;
        }
        return aAn;
    }
    
    public final boolean cA(final int n) {
        return O(this.type, n);
    }
    
    public final boolean cy(final int n) {
        return (n & this.ayg) != 0x0;
    }
    
    public final int cz(int aAm) {
        if (!TextUtils.isEmpty((CharSequence)this.aAk)) {
            aAm = this.aAm;
        }
        return aAm;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o != null && o instanceof Folder && e.b(this.azZ, ((Folder)o).azZ);
    }
    
    @Override
    public int hashCode() {
        if (this.azZ == null) {
            return 0;
        }
        return this.azZ.hashCode();
    }
    
    public final boolean isInitialized() {
        return !this.name.equals("Uninitialized!") && this.aAc != null && !"null".equals(this.aAc.toString());
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(super.toString());
        sb.append("{id=");
        sb.append(this.id);
        if (com.android.mail.utils.E.isLoggable(Folder.mW, 3)) {
            sb.append(", uri=");
            sb.append(this.azZ);
            sb.append(", name=");
            sb.append(this.name);
            sb.append(", count=");
            sb.append(this.aAg);
        }
        sb.append("}");
        return sb.toString();
    }
    
    public final boolean uP() {
        return (0x7 & this.ays) != 0x0;
    }
    
    public final boolean uQ() {
        return !this.cA(1);
    }
    
    public final boolean uR() {
        return this.cA(2);
    }
    
    public final boolean uS() {
        return this.cA(4096);
    }
    
    public final boolean uT() {
        return this.cA(64);
    }
    
    public final boolean uU() {
        return this.cA(32);
    }
    
    public final boolean uV() {
        return this.cA(4);
    }
    
    public final boolean uW() {
        return this.cy(1024);
    }
    
    public final boolean uX() {
        return this.cA(16);
    }
    
    public final boolean uY() {
        return this.cA(8);
    }
    
    public final boolean uZ() {
        return this.cy(131072);
    }
    
    public final String va() {
        if (this.cA(1024)) {
            return "inbox_section:" + this.azY;
        }
        if (this.cA(2)) {
            return "inbox:" + this.azY;
        }
        if (this.cA(4)) {
            return "draft";
        }
        if (this.cy(1024)) {
            return "important";
        }
        if (this.cA(8)) {
            return "outbox";
        }
        if (this.cA(16)) {
            return "sent";
        }
        if (this.cA(64)) {
            return "spam";
        }
        if (this.cA(128)) {
            return "starred";
        }
        if (this.cA(32)) {
            return "trash";
        }
        if (this.cA(2048)) {
            return "unread";
        }
        if (this.cA(4096)) {
            return "search";
        }
        if (this.cA(512)) {
            return "all_mail";
        }
        if (this.uQ()) {
            return "other:" + this.azY;
        }
        return "user_folder";
    }
    
    public final boolean vb() {
        return (0xF & this.aAi) == 0x0;
    }
    
    public final boolean vc() {
        return this.cA(4) || this.cA(32) || this.cA(8);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.id);
        parcel.writeString(this.azY);
        Object aPj;
        if (this.azZ != null) {
            aPj = this.azZ.aPj;
        }
        else {
            aPj = null;
        }
        parcel.writeParcelable((Parcelable)aPj, 0);
        parcel.writeString(this.name);
        parcel.writeInt(this.ayg);
        int n2;
        if (this.aAa) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeInt(this.aAb);
        parcel.writeParcelable((Parcelable)this.aAc, 0);
        parcel.writeParcelable((Parcelable)this.aAd, 0);
        parcel.writeInt(this.aAe);
        parcel.writeInt(this.aAf);
        parcel.writeInt(this.aAg);
        parcel.writeParcelable((Parcelable)this.aAh, 0);
        parcel.writeInt(this.ays);
        parcel.writeInt(this.aAi);
        parcel.writeInt(this.type);
        parcel.writeInt(this.aAj);
        parcel.writeString(this.aAk);
        parcel.writeString(this.aAl);
        parcel.writeParcelable((Parcelable)this.aAo, 0);
        parcel.writeString(this.aAp);
        parcel.writeParcelable((Parcelable)this.aAq, 0);
        parcel.writeLong(this.aAr);
        parcel.writeParcelable((Parcelable)this.aAq, 0);
        parcel.writeString(this.aAs);
    }
}
