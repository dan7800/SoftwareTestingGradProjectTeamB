package com.google.android.gm.ads;

import com.android.mail.ui.*;
import com.google.android.gm.provider.*;
import android.content.*;
import com.android.mail.providers.*;
import android.os.*;

public class AdToastBarOperation extends ToastBarOperation
{
    public static final Parcelable$ClassLoaderCreator<ToastBarOperation> CREATOR;
    private final Account Nc;
    private final Runnable aZQ;
    private final Runnable aZR;
    private final Advertisement aZp;
    private Context mContext;
    
    static {
        CREATOR = (Parcelable$ClassLoaderCreator)new p();
    }
    
    private AdToastBarOperation(final Parcel parcel, final ClassLoader classLoader) {
        super(parcel, classLoader);
        this.aZQ = new q(this);
        this.aZR = new r(this);
        this.aZp = (Advertisement)parcel.readParcelable(classLoader);
        this.Nc = (Account)parcel.readParcelable(classLoader);
    }
    
    public AdToastBarOperation(final Advertisement aZp, final Account nc) {
        super(1, 2131559022, 0, false, null);
        this.aZQ = new q(this);
        this.aZR = new r(this);
        this.aZp = aZp;
        this.Nc = nc;
    }
    
    @Override
    public final boolean Am() {
        return true;
    }
    
    @Override
    public final void ar(final Context mContext) {
        this.mContext = mContext;
        AsyncTask.execute(this.aZQ);
    }
    
    @Override
    public final String au(final Context context) {
        return context.getString(2131297186);
    }
    
    @Override
    public final void av(final Context mContext) {
        this.mContext = mContext;
        AsyncTask.execute(this.aZR);
    }
    
    @Override
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeParcelable((Parcelable)this.aZp, 0);
        parcel.writeParcelable((Parcelable)this.Nc, 0);
    }
}
