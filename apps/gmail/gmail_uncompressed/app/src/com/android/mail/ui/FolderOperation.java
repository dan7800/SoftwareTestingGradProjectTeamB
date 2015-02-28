package com.android.mail.ui;

import com.android.mail.providers.*;
import android.os.*;
import com.google.common.base.*;
import java.util.*;

public class FolderOperation implements Parcelable
{
    public static final Parcelable$Creator<FolderOperation> CREATOR;
    public static final Collection<FolderOperation> azq;
    public final boolean aKh;
    public final Folder aqp;
    
    static {
        azq = Collections.emptyList();
        CREATOR = (Parcelable$Creator)new bQ();
    }
    
    FolderOperation(final Parcel parcel) {
        this.aKh = (parcel.readByte() != 0);
        this.aqp = (Folder)parcel.readParcelable(this.getClass().getClassLoader());
    }
    
    public FolderOperation(final Folder aqp, final Boolean b) {
        this.aKh = b;
        this.aqp = aqp;
    }
    
    public static boolean a(final Collection<FolderOperation> collection, final Folder folder) {
        for (final FolderOperation folderOperation : collection) {
            if (e.b(folderOperation.aqp, folder) && !folderOperation.aKh) {
                return true;
            }
            if (folder.uU() && folderOperation.aqp.uR()) {
                return true;
            }
        }
        return false;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        boolean b;
        if (this.aKh) {
            b = true;
        }
        else {
            b = false;
        }
        parcel.writeByte((byte)(byte)(b ? 1 : 0));
        parcel.writeParcelable((Parcelable)this.aqp, 0);
    }
}
