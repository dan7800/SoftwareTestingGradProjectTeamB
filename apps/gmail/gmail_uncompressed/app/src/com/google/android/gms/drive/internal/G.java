package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.drive.realtime.internal.*;

public abstract class g extends Binder implements f
{
    public g() {
        this.attachInterface((IInterface)this, "com.google.android.gms.drive.internal.IDriveServiceCallbacks");
    }
    
    public static f m(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
        if (queryLocalInterface != null && queryLocalInterface instanceof f) {
            return (f)queryLocalInterface;
        }
        return new h(binder);
    }
    
    public IBinder asBinder() {
        return (IBinder)this;
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int1 = parcel.readInt();
                OnDownloadProgressResponse onDownloadProgressResponse = null;
                if (int1 != 0) {
                    onDownloadProgressResponse = (OnDownloadProgressResponse)OnDownloadProgressResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onDownloadProgressResponse);
                parcel2.writeNoException();
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int2 = parcel.readInt();
                OnListEntriesResponse onListEntriesResponse = null;
                if (int2 != 0) {
                    onListEntriesResponse = (OnListEntriesResponse)OnListEntriesResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onListEntriesResponse);
                parcel2.writeNoException();
                return true;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int3 = parcel.readInt();
                OnDriveIdResponse onDriveIdResponse = null;
                if (int3 != 0) {
                    onDriveIdResponse = (OnDriveIdResponse)OnDriveIdResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onDriveIdResponse);
                parcel2.writeNoException();
                return true;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int4 = parcel.readInt();
                OnMetadataResponse onMetadataResponse = null;
                if (int4 != 0) {
                    onMetadataResponse = (OnMetadataResponse)OnMetadataResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onMetadataResponse);
                parcel2.writeNoException();
                return true;
            }
            case 5: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int5 = parcel.readInt();
                OnContentsResponse onContentsResponse = null;
                if (int5 != 0) {
                    onContentsResponse = (OnContentsResponse)OnContentsResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onContentsResponse);
                parcel2.writeNoException();
                return true;
            }
            case 6: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int6 = parcel.readInt();
                Status ab = null;
                if (int6 != 0) {
                    final w creator = Status.CREATOR;
                    ab = w.ab(parcel);
                }
                this.c(ab);
                parcel2.writeNoException();
                return true;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                this.onSuccess();
                parcel2.writeNoException();
                return true;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int7 = parcel.readInt();
                OnListParentsResponse onListParentsResponse = null;
                if (int7 != 0) {
                    onListParentsResponse = (OnListParentsResponse)OnListParentsResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onListParentsResponse);
                parcel2.writeNoException();
                return true;
            }
            case 9: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int8 = parcel.readInt();
                OnSyncMoreResponse onSyncMoreResponse = null;
                if (int8 != 0) {
                    onSyncMoreResponse = (OnSyncMoreResponse)OnSyncMoreResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onSyncMoreResponse);
                parcel2.writeNoException();
                return true;
            }
            case 10: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int9 = parcel.readInt();
                OnStorageStatsResponse onStorageStatsResponse = null;
                if (int9 != 0) {
                    onStorageStatsResponse = (OnStorageStatsResponse)OnStorageStatsResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onStorageStatsResponse);
                parcel2.writeNoException();
                return true;
            }
            case 11: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int10 = parcel.readInt();
                OnLoadRealtimeResponse onLoadRealtimeResponse = null;
                if (int10 != 0) {
                    onLoadRealtimeResponse = (OnLoadRealtimeResponse)OnLoadRealtimeResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onLoadRealtimeResponse, J.t(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 12: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int11 = parcel.readInt();
                OnResourceIdSetResponse onResourceIdSetResponse = null;
                if (int11 != 0) {
                    onResourceIdSetResponse = (OnResourceIdSetResponse)OnResourceIdSetResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onResourceIdSetResponse);
                parcel2.writeNoException();
                return true;
            }
            case 13: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                final int int12 = parcel.readInt();
                OnDrivePreferencesResponse onDrivePreferencesResponse = null;
                if (int12 != 0) {
                    onDrivePreferencesResponse = (OnDrivePreferencesResponse)OnDrivePreferencesResponse.CREATOR.createFromParcel(parcel);
                }
                this.a(onDrivePreferencesResponse);
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
