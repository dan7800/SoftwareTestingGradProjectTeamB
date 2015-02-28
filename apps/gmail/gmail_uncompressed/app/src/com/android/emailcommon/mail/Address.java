package com.android.emailcommon.mail;

import java.util.regex.*;
import android.os.*;
import android.text.*;
import android.text.util.*;
import org.apache.james.mime4j.a.*;
import java.util.*;
import com.android.mail.utils.*;
import org.apache.james.mime4j.codec.*;

public class Address implements Parcelable
{
    public static final Parcelable$Creator<Address> CREATOR;
    private static final Pattern EMAIL_ADDRESS;
    private static final Pattern WD;
    private static final Pattern WE;
    private static final Pattern WF;
    private static final Address[] WG;
    private static final String mW;
    private String WA;
    private String WB;
    private String WC;
    
    static {
        WD = Pattern.compile("^<?([^>]+)>?$");
        WE = Pattern.compile("^\"?([^\"]*)\"?$");
        WF = Pattern.compile("\\\\([\\\\\"])");
        EMAIL_ADDRESS = Pattern.compile("\\A[^@]+@([[\\w][\\d]\\-\\(\\)\\[\\]]+\\.)+[[\\w][\\d]\\-\\(\\)\\[\\]]+\\z");
        WG = new Address[0];
        mW = D.AU();
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public Address(final Parcel parcel) {
        this.ai(parcel.readString());
        this.setAddress(parcel.readString());
    }
    
    public Address(final String address, final String s) {
        this.ai(s);
        this.setAddress(address);
    }
    
    public static Address ah(final String s) {
    Label_0079_Outer:
        while (true) {
            while (true) {
                Label_0128: {
                    while (true) {
                        Label_0101: {
                            synchronized (Address.class) {
                                Address address;
                                if (TextUtils.isEmpty((CharSequence)s)) {
                                    address = null;
                                }
                                else {
                                    final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
                                    if (tokenize.length <= 0) {
                                        break Label_0128;
                                    }
                                    final String name = tokenize[0].getName();
                                    if (name == null) {
                                        break Label_0101;
                                    }
                                    final String string = Html.fromHtml(name.trim()).toString();
                                    final String string2 = Html.fromHtml(tokenize[0].getAddress()).toString();
                                    final String s2 = string;
                                    final String s3 = string2;
                                    address = new Address(s3, s2);
                                }
                                return address;
                            }
                        }
                        final String string = "";
                        continue Label_0079_Outer;
                    }
                }
                if (s == null) {
                    final String s2 = "";
                    final String s3 = "";
                    continue;
                }
                final String string3 = Html.fromHtml(s).toString();
                final String s2 = "";
                final String s3 = string3;
                continue;
            }
        }
    }
    
    private void ai(final String s) {
        this.WB = aj(s);
    }
    
    public static String aj(String hv) {
        if (hv != null) {
            hv = c.hV(Address.WF.matcher(Address.WE.matcher(hv).replaceAll("$1")).replaceAll("$1"));
            if (hv.length() == 0) {
                hv = null;
            }
        }
        return hv;
    }
    
    public static Address[] ak(final String s) {
        if (s == null || s.length() == 0) {
            return Address.WG;
        }
        final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
        final ArrayList<Address> list = new ArrayList<Address>();
        for (final Rfc822Token rfc822Token : tokenize) {
            final String address = rfc822Token.getAddress();
            if (!TextUtils.isEmpty((CharSequence)address) && Address.EMAIL_ADDRESS.matcher(address).find()) {
                String name = rfc822Token.getName();
                if (TextUtils.isEmpty((CharSequence)name)) {
                    name = null;
                }
                list.add(new Address(address, name));
            }
        }
        return list.toArray(new Address[list.size()]);
    }
    
    public static String al(final String s) {
        return b(ao(s));
    }
    
    public static Address am(final String s) {
        final Address[] ao = ao(s);
        if (ao.length > 0) {
            return ao[0];
        }
        return null;
    }
    
    public static String an(final String s) {
        return c(ao(s));
    }
    
    public static Address[] ao(final String s) {
        if (s == null || s.length() == 0) {
            return Address.WG;
        }
        if (s.indexOf(2) == -1 && s.indexOf(1) == -1) {
            return ak(s);
        }
        final ArrayList<Address> list = new ArrayList<Address>();
        final int length = s.length();
        int n = s.indexOf(2);
        int n2;
        for (int i = 0; i < length; i = n2 + 1) {
            final int index = s.indexOf(1, i);
            if (index == -1) {
                n2 = length;
            }
            else {
                n2 = index;
            }
            Address address;
            if (n == -1 || n2 <= n) {
                address = new Address(s.substring(i, n2), null);
            }
            else {
                address = new Address(s.substring(i, n), s.substring(n + 1, n2));
                n = s.indexOf(2, n2 + 1);
            }
            list.add(address);
        }
        return list.toArray(new Address[list.size()]);
    }
    
    public static String b(final Address[] array) {
        int i = 1;
        if (array == null || array.length == 0) {
            return null;
        }
        if (array.length == i) {
            return array[0].toString();
        }
        final StringBuilder sb = new StringBuilder(array[0].toString());
        while (i < array.length) {
            sb.append(",");
            sb.append(array[i].toString().trim());
            ++i;
        }
        return sb.toString();
    }
    
    public static String c(final Address[] array) {
        int i = 1;
        if (array == null || array.length == 0) {
            return null;
        }
        if (array.length == i) {
            return array[0].lk();
        }
        final StringBuilder sb = new StringBuilder(array[0].lk());
        while (i < array.length) {
            sb.append(", ");
            sb.append(array[i].lk());
            ++i;
        }
        return sb.toString();
    }
    
    private void setAddress(final String s) {
        this.WA = Address.WD.matcher(s).replaceAll("$1");
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof Address) {
            return this.WA.equals(((Address)o).WA);
        }
        return super.equals(o);
    }
    
    public final String getAddress() {
        return this.WA;
    }
    
    @Override
    public int hashCode() {
        return this.WA.hashCode();
    }
    
    public final String li() {
        if (this.WC == null) {
            if (TextUtils.isEmpty((CharSequence)this.WB) && !TextUtils.isEmpty((CharSequence)this.WA)) {
                final int index = this.WA.indexOf(64);
                String substring;
                if (index != -1) {
                    substring = this.WA.substring(0, index);
                }
                else {
                    substring = "";
                }
                this.WC = substring;
            }
            else if (!TextUtils.isEmpty((CharSequence)this.WB)) {
                int index2;
                for (index2 = this.WB.indexOf(32); index2 > 0 && this.WB.charAt(index2 - 1) == ','; --index2) {}
                String wc;
                if (index2 <= 0) {
                    wc = this.WB;
                }
                else {
                    wc = this.WB.substring(0, index2);
                }
                this.WC = wc;
            }
            else {
                E.e(Address.mW, "Unable to get a simplified name", new Object[0]);
                this.WC = "";
            }
        }
        return this.WC;
    }
    
    public final String lj() {
        return this.WB;
    }
    
    public final String lk() {
        if (this.WB != null) {
            return EncoderUtil.hR(this.WB) + " <" + this.WA + ">";
        }
        return this.WA;
    }
    
    public final String ll() {
        if (this.WB != null && this.WB.length() > 0) {
            return this.WB;
        }
        return this.WA;
    }
    
    @Override
    public String toString() {
        if (this.WB == null || this.WB.equals(this.WA)) {
            return this.WA;
        }
        if (this.WB.matches(".*[\\(\\)<>@,;:\\\\\".\\[\\]].*")) {
            final StringBuilder sb = new StringBuilder();
            String s = this.WB;
            if (s == null) {
                s = null;
            }
            else if (!s.matches("^\".*\"$")) {
                s = "\"" + s + "\"";
            }
            return sb.append(s).append(" <").append(this.WA).append(">").toString();
        }
        return this.WB + " <" + this.WA + ">";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.WB);
        parcel.writeString(this.WA);
    }
}
