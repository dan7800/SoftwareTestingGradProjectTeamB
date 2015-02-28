package android.support.v4.app;

import android.os.*;
import android.text.*;
import android.util.*;
import java.util.*;

final class BackStackState implements Parcelable
{
    public static final Parcelable$Creator<BackStackState> CREATOR;
    final CharSequence A;
    final int B;
    final CharSequence C;
    final ArrayList<String> D;
    final ArrayList<String> E;
    final int[] ac;
    final String mName;
    final int t;
    final int u;
    final int y;
    final int z;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    public BackStackState(final Parcel parcel) {
        this.ac = parcel.createIntArray();
        this.t = parcel.readInt();
        this.u = parcel.readInt();
        this.mName = parcel.readString();
        this.y = parcel.readInt();
        this.z = parcel.readInt();
        this.A = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.B = parcel.readInt();
        this.C = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.D = (ArrayList<String>)parcel.createStringArrayList();
        this.E = (ArrayList<String>)parcel.createStringArrayList();
    }
    
    public BackStackState(final a a) {
        e e = a.m;
        int n = 0;
        while (e != null) {
            if (e.X != null) {
                n += e.X.size();
            }
            e = e.P;
        }
        this.ac = new int[n + 7 * a.o];
        if (!a.v) {
            throw new IllegalStateException("Not on back stack");
        }
        e e2 = a.m;
        int n2 = 0;
        while (e2 != null) {
            final int[] ac = this.ac;
            final int n3 = n2 + 1;
            ac[n2] = e2.R;
            final int[] ac2 = this.ac;
            final int n4 = n3 + 1;
            int y;
            if (e2.S != null) {
                y = e2.S.y;
            }
            else {
                y = -1;
            }
            ac2[n3] = y;
            final int[] ac3 = this.ac;
            final int n5 = n4 + 1;
            ac3[n4] = e2.T;
            final int[] ac4 = this.ac;
            final int n6 = n5 + 1;
            ac4[n5] = e2.U;
            final int[] ac5 = this.ac;
            final int n7 = n6 + 1;
            ac5[n6] = e2.V;
            final int[] ac6 = this.ac;
            final int n8 = n7 + 1;
            ac6[n7] = e2.W;
            if (e2.X != null) {
                final int size = e2.X.size();
                final int[] ac7 = this.ac;
                int n9 = n8 + 1;
                ac7[n8] = size;
                int n10;
                for (int i = 0; i < size; ++i, n9 = n10) {
                    final int[] ac8 = this.ac;
                    n10 = n9 + 1;
                    ac8[n9] = e2.X.get(i).y;
                }
                n2 = n9;
            }
            else {
                final int[] ac9 = this.ac;
                n2 = n8 + 1;
                ac9[n8] = 0;
            }
            e2 = e2.P;
        }
        this.t = a.t;
        this.u = a.u;
        this.mName = a.mName;
        this.y = a.y;
        this.z = a.z;
        this.A = a.A;
        this.B = a.B;
        this.C = a.C;
        this.D = a.D;
        this.E = a.E;
    }
    
    public final a a(final q q) {
        final a a = new a(q);
        int n = 0;
        int n9;
        for (int i = 0; i < this.ac.length; i = n9) {
            final e e = new e();
            final int[] ac = this.ac;
            final int n2 = i + 1;
            e.R = ac[i];
            if (q.DEBUG) {
                Log.v("FragmentManager", "Instantiate " + a + " op #" + n + " base fragment #" + this.ac[n2]);
            }
            final int[] ac2 = this.ac;
            final int n3 = n2 + 1;
            final int n4 = ac2[n2];
            if (n4 >= 0) {
                e.S = q.bE.get(n4);
            }
            else {
                e.S = null;
            }
            final int[] ac3 = this.ac;
            final int n5 = n3 + 1;
            e.T = ac3[n3];
            final int[] ac4 = this.ac;
            final int n6 = n5 + 1;
            e.U = ac4[n5];
            final int[] ac5 = this.ac;
            final int n7 = n6 + 1;
            e.V = ac5[n6];
            final int[] ac6 = this.ac;
            final int n8 = n7 + 1;
            e.W = ac6[n7];
            final int[] ac7 = this.ac;
            n9 = n8 + 1;
            final int n10 = ac7[n8];
            if (n10 > 0) {
                e.X = new ArrayList<Fragment>(n10);
                int n11;
                for (int j = 0; j < n10; ++j, n9 = n11) {
                    if (q.DEBUG) {
                        Log.v("FragmentManager", "Instantiate " + a + " set remove fragment #" + this.ac[n9]);
                    }
                    final ArrayList<Fragment> be = q.bE;
                    final int[] ac8 = this.ac;
                    n11 = n9 + 1;
                    e.X.add(be.get(ac8[n9]));
                }
            }
            a.a(e);
            ++n;
        }
        a.t = this.t;
        a.u = this.u;
        a.mName = this.mName;
        a.y = this.y;
        a.v = true;
        a.z = this.z;
        a.A = this.A;
        a.B = this.B;
        a.C = this.C;
        a.D = this.D;
        a.E = this.E;
        a.a(1);
        return a;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeIntArray(this.ac);
        parcel.writeInt(this.t);
        parcel.writeInt(this.u);
        parcel.writeString(this.mName);
        parcel.writeInt(this.y);
        parcel.writeInt(this.z);
        TextUtils.writeToParcel(this.A, parcel, 0);
        parcel.writeInt(this.B);
        TextUtils.writeToParcel(this.C, parcel, 0);
        parcel.writeStringList((List)this.D);
        parcel.writeStringList((List)this.E);
    }
}
