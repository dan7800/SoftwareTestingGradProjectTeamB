package com.android.mail.providers;

import com.google.common.collect.*;
import android.os.*;
import java.util.*;

public class FolderList implements Parcelable
{
    public static final Parcelable$Creator<FolderList> CREATOR;
    private static final FolderList aAK;
    public final ImmutableList<Folder> aAL;
    
    static {
        aAK = new FolderList((Collection<Folder>)Collections.emptyList());
        CREATOR = (Parcelable$Creator)new n();
    }
    
    public FolderList(final Parcel parcel) {
        this.aAL = ImmutableList.J((Collection<? extends Folder>)parcel.createTypedArrayList((Parcelable$Creator)Folder.CREATOR));
    }
    
    private FolderList(final Collection<Folder> collection) {
        if (collection == null) {
            this.aAL = ImmutableList.Zr();
            return;
        }
        this.aAL = ImmutableList.J((Collection<? extends Folder>)collection);
    }
    
    public static FolderList d(final byte[] array) {
        if (array == null) {
            return FolderList.aAK;
        }
        final Parcel obtain = Parcel.obtain();
        obtain.unmarshall(array, 0, array.length);
        obtain.setDataPosition(0);
        final FolderList list = (FolderList)FolderList.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return list;
    }
    
    public static FolderList p(final Collection<Folder> collection) {
        return new FolderList(collection);
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this.aAL.equals(o);
    }
    
    @Override
    public int hashCode() {
        return this.aAL.hashCode();
    }
    
    public final byte[] uN() {
        final Parcel obtain = Parcel.obtain();
        this.writeToParcel(obtain, 0);
        final byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeTypedList((List)this.aAL);
    }
}
