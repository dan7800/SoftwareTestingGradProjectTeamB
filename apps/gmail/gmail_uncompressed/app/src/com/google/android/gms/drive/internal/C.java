package com.google.android.gms.drive.internal;

import android.os.*;
import android.content.*;
import com.google.android.gms.drive.*;

public interface c extends IInterface
{
    IntentSender a(CreateFileIntentSenderRequest p0);
    
    IntentSender a(OpenFileIntentSenderRequest p0);
    
    void a(RealtimeDocumentSyncRequest p0, f p1);
    
    void a(AddEventListenerRequest p0, i p1, String p2, f p3);
    
    void a(AuthorizeAccessRequest p0, f p1);
    
    void a(CheckResourceIdsExistRequest p0, f p1);
    
    void a(CloseContentsAndUpdateMetadataRequest p0, f p1);
    
    void a(CloseContentsRequest p0, f p1);
    
    void a(CreateContentsRequest p0, f p1);
    
    void a(CreateFileRequest p0, f p1);
    
    void a(CreateFolderRequest p0, f p1);
    
    void a(DeleteResourceRequest p0, f p1);
    
    void a(DisconnectRequest p0);
    
    void a(GetDriveIdFromUniqueIdentifierRequest p0, f p1);
    
    void a(GetMetadataRequest p0, f p1);
    
    void a(ListParentsRequest p0, f p1);
    
    void a(LoadRealtimeRequest p0, f p1);
    
    void a(OpenContentsRequest p0, f p1);
    
    void a(QueryRequest p0, f p1);
    
    void a(RemoveEventListenerRequest p0, i p1, String p2, f p3);
    
    void a(SetDrivePreferencesRequest p0, f p1);
    
    void a(SetResourceParentsRequest p0, f p1);
    
    void a(TrashResourceRequest p0, f p1);
    
    void a(UpdateMetadataRequest p0, f p1);
    
    void a(f p0);
    
    void b(QueryRequest p0, f p1);
    
    void b(f p0);
    
    void c(f p0);
    
    void d(f p0);
    
    void e(f p0);
    
    void f(f p0);
    
    void g(f p0);
}
