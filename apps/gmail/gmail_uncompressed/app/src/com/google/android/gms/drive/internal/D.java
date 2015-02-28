package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.*;
import android.content.*;

public abstract class d extends Binder implements c
{
    public static c l(final IBinder binder) {
        if (binder == null) {
            return null;
        }
        final IInterface queryLocalInterface = binder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveService");
        if (queryLocalInterface != null && queryLocalInterface instanceof c) {
            return (c)queryLocalInterface;
        }
        return new e(binder);
    }
    
    public boolean onTransact(final int n, final Parcel parcel, final Parcel parcel2, final int n2) {
        switch (n) {
            default: {
                return super.onTransact(n, parcel, parcel2, n2);
            }
            case 1598968902: {
                parcel2.writeString("com.google.android.gms.drive.internal.IDriveService");
                return true;
            }
            case 1: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int1 = parcel.readInt();
                GetMetadataRequest getMetadataRequest = null;
                if (int1 != 0) {
                    getMetadataRequest = (GetMetadataRequest)GetMetadataRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(getMetadataRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 2: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int2 = parcel.readInt();
                QueryRequest queryRequest = null;
                if (int2 != 0) {
                    queryRequest = (QueryRequest)QueryRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(queryRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 3: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int3 = parcel.readInt();
                UpdateMetadataRequest updateMetadataRequest = null;
                if (int3 != 0) {
                    updateMetadataRequest = (UpdateMetadataRequest)UpdateMetadataRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(updateMetadataRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 4: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int4 = parcel.readInt();
                CreateContentsRequest createContentsRequest = null;
                if (int4 != 0) {
                    createContentsRequest = (CreateContentsRequest)CreateContentsRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(createContentsRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 5: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int5 = parcel.readInt();
                CreateFileRequest createFileRequest = null;
                if (int5 != 0) {
                    createFileRequest = (CreateFileRequest)CreateFileRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(createFileRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 6: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int6 = parcel.readInt();
                CreateFolderRequest createFolderRequest = null;
                if (int6 != 0) {
                    createFolderRequest = (CreateFolderRequest)CreateFolderRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(createFolderRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 7: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int7 = parcel.readInt();
                OpenContentsRequest openContentsRequest = null;
                if (int7 != 0) {
                    openContentsRequest = (OpenContentsRequest)OpenContentsRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(openContentsRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 8: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int8 = parcel.readInt();
                CloseContentsRequest closeContentsRequest = null;
                if (int8 != 0) {
                    closeContentsRequest = (CloseContentsRequest)CloseContentsRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(closeContentsRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 9: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                this.a(g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 10: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int9 = parcel.readInt();
                OpenFileIntentSenderRequest openFileIntentSenderRequest = null;
                if (int9 != 0) {
                    openFileIntentSenderRequest = (OpenFileIntentSenderRequest)OpenFileIntentSenderRequest.CREATOR.createFromParcel(parcel);
                }
                final IntentSender a = this.a(openFileIntentSenderRequest);
                parcel2.writeNoException();
                if (a != null) {
                    parcel2.writeInt(1);
                    a.writeToParcel(parcel2, 1);
                }
                else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            case 11: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int10 = parcel.readInt();
                CreateFileIntentSenderRequest createFileIntentSenderRequest = null;
                if (int10 != 0) {
                    createFileIntentSenderRequest = (CreateFileIntentSenderRequest)CreateFileIntentSenderRequest.CREATOR.createFromParcel(parcel);
                }
                final IntentSender a2 = this.a(createFileIntentSenderRequest);
                parcel2.writeNoException();
                if (a2 != null) {
                    parcel2.writeInt(1);
                    a2.writeToParcel(parcel2, 1);
                }
                else {
                    parcel2.writeInt(0);
                }
                return true;
            }
            case 12: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int11 = parcel.readInt();
                AuthorizeAccessRequest authorizeAccessRequest = null;
                if (int11 != 0) {
                    authorizeAccessRequest = (AuthorizeAccessRequest)AuthorizeAccessRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(authorizeAccessRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 13: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int12 = parcel.readInt();
                ListParentsRequest listParentsRequest = null;
                if (int12 != 0) {
                    listParentsRequest = (ListParentsRequest)ListParentsRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(listParentsRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 14: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int13 = parcel.readInt();
                AddEventListenerRequest addEventListenerRequest = null;
                if (int13 != 0) {
                    addEventListenerRequest = (AddEventListenerRequest)AddEventListenerRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(addEventListenerRequest, j.n(parcel.readStrongBinder()), parcel.readString(), g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 15: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int14 = parcel.readInt();
                RemoveEventListenerRequest removeEventListenerRequest = null;
                if (int14 != 0) {
                    removeEventListenerRequest = (RemoveEventListenerRequest)RemoveEventListenerRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(removeEventListenerRequest, j.n(parcel.readStrongBinder()), parcel.readString(), g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 16: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int15 = parcel.readInt();
                DisconnectRequest disconnectRequest = null;
                if (int15 != 0) {
                    disconnectRequest = (DisconnectRequest)DisconnectRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(disconnectRequest);
                parcel2.writeNoException();
                return true;
            }
            case 17: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int16 = parcel.readInt();
                TrashResourceRequest trashResourceRequest = null;
                if (int16 != 0) {
                    trashResourceRequest = (TrashResourceRequest)TrashResourceRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(trashResourceRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 18: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int17 = parcel.readInt();
                CloseContentsAndUpdateMetadataRequest closeContentsAndUpdateMetadataRequest = null;
                if (int17 != 0) {
                    closeContentsAndUpdateMetadataRequest = (CloseContentsAndUpdateMetadataRequest)CloseContentsAndUpdateMetadataRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(closeContentsAndUpdateMetadataRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 19: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int18 = parcel.readInt();
                QueryRequest queryRequest2 = null;
                if (int18 != 0) {
                    queryRequest2 = (QueryRequest)QueryRequest.CREATOR.createFromParcel(parcel);
                }
                this.b(queryRequest2, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 20: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                this.b(g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 21: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                this.c(g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 22: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                this.d(g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 23: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                this.e(g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 24: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int19 = parcel.readInt();
                DeleteResourceRequest deleteResourceRequest = null;
                if (int19 != 0) {
                    deleteResourceRequest = (DeleteResourceRequest)DeleteResourceRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(deleteResourceRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 27: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int20 = parcel.readInt();
                LoadRealtimeRequest loadRealtimeRequest = null;
                if (int20 != 0) {
                    loadRealtimeRequest = (LoadRealtimeRequest)LoadRealtimeRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(loadRealtimeRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 28: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int21 = parcel.readInt();
                SetResourceParentsRequest setResourceParentsRequest = null;
                if (int21 != 0) {
                    setResourceParentsRequest = (SetResourceParentsRequest)SetResourceParentsRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(setResourceParentsRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 29: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int22 = parcel.readInt();
                GetDriveIdFromUniqueIdentifierRequest getDriveIdFromUniqueIdentifierRequest = null;
                if (int22 != 0) {
                    getDriveIdFromUniqueIdentifierRequest = (GetDriveIdFromUniqueIdentifierRequest)GetDriveIdFromUniqueIdentifierRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(getDriveIdFromUniqueIdentifierRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 30: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int23 = parcel.readInt();
                CheckResourceIdsExistRequest checkResourceIdsExistRequest = null;
                if (int23 != 0) {
                    checkResourceIdsExistRequest = (CheckResourceIdsExistRequest)CheckResourceIdsExistRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(checkResourceIdsExistRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 31: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                this.f(g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 32: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                this.g(g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 33: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int24 = parcel.readInt();
                SetDrivePreferencesRequest setDrivePreferencesRequest = null;
                if (int24 != 0) {
                    setDrivePreferencesRequest = (SetDrivePreferencesRequest)SetDrivePreferencesRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(setDrivePreferencesRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            case 34: {
                parcel.enforceInterface("com.google.android.gms.drive.internal.IDriveService");
                final int int25 = parcel.readInt();
                RealtimeDocumentSyncRequest realtimeDocumentSyncRequest = null;
                if (int25 != 0) {
                    realtimeDocumentSyncRequest = (RealtimeDocumentSyncRequest)RealtimeDocumentSyncRequest.CREATOR.createFromParcel(parcel);
                }
                this.a(realtimeDocumentSyncRequest, g.m(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
        }
    }
}
