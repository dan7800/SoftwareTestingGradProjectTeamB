package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.realtime.internal.*;
import com.google.android.gms.common.api.*;

final class h implements f
{
    private IBinder bzr;
    
    h(final IBinder bzr) {
        this.bzr = bzr;
    }
    
    @Override
    public final void a(final OnContentsResponse onContentsResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onContentsResponse != null) {
                obtain.writeInt(1);
                onContentsResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(5, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnDownloadProgressResponse onDownloadProgressResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onDownloadProgressResponse != null) {
                obtain.writeInt(1);
                onDownloadProgressResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(1, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnDriveIdResponse onDriveIdResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onDriveIdResponse != null) {
                obtain.writeInt(1);
                onDriveIdResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(3, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnDrivePreferencesResponse onDrivePreferencesResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onDrivePreferencesResponse != null) {
                obtain.writeInt(1);
                onDrivePreferencesResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(13, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnListEntriesResponse onListEntriesResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onListEntriesResponse != null) {
                obtain.writeInt(1);
                onListEntriesResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnListParentsResponse onListParentsResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onListParentsResponse != null) {
                obtain.writeInt(1);
                onListParentsResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(8, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnLoadRealtimeResponse onLoadRealtimeResponse, final I i) {
        while (true) {
            final Parcel obtain = Parcel.obtain();
            final Parcel obtain2 = Parcel.obtain();
            while (true) {
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
                    if (onLoadRealtimeResponse != null) {
                        obtain.writeInt(1);
                        onLoadRealtimeResponse.writeToParcel(obtain, 0);
                    }
                    else {
                        obtain.writeInt(0);
                    }
                    if (i != null) {
                        final IBinder binder = i.asBinder();
                        obtain.writeStrongBinder(binder);
                        this.bzr.transact(11, obtain, obtain2, 0);
                        obtain2.readException();
                        return;
                    }
                }
                finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
                final IBinder binder = null;
                continue;
            }
        }
    }
    
    @Override
    public final void a(final OnMetadataResponse onMetadataResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onMetadataResponse != null) {
                obtain.writeInt(1);
                onMetadataResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnResourceIdSetResponse onResourceIdSetResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onResourceIdSetResponse != null) {
                obtain.writeInt(1);
                onResourceIdSetResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(12, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnStorageStatsResponse onStorageStatsResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onStorageStatsResponse != null) {
                obtain.writeInt(1);
                onStorageStatsResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(10, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void a(final OnSyncMoreResponse onSyncMoreResponse) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (onSyncMoreResponse != null) {
                obtain.writeInt(1);
                onSyncMoreResponse.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(9, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    public final IBinder asBinder() {
        return this.bzr;
    }
    
    @Override
    public final void c(final Status status) {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            if (status != null) {
                obtain.writeInt(1);
                status.writeToParcel(obtain, 0);
            }
            else {
                obtain.writeInt(0);
            }
            this.bzr.transact(6, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
    
    @Override
    public final void onSuccess() {
        final Parcel obtain = Parcel.obtain();
        final Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.drive.internal.IDriveServiceCallbacks");
            this.bzr.transact(7, obtain, obtain2, 0);
            obtain2.readException();
        }
        finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
