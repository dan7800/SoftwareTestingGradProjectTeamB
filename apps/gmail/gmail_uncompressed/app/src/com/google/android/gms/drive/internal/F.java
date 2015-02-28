package com.google.android.gms.drive.internal;

import android.os.*;
import com.google.android.gms.drive.realtime.internal.*;
import com.google.android.gms.common.api.*;

public interface f extends IInterface
{
    void a(OnContentsResponse p0);
    
    void a(OnDownloadProgressResponse p0);
    
    void a(OnDriveIdResponse p0);
    
    void a(OnDrivePreferencesResponse p0);
    
    void a(OnListEntriesResponse p0);
    
    void a(OnListParentsResponse p0);
    
    void a(OnLoadRealtimeResponse p0, I p1);
    
    void a(OnMetadataResponse p0);
    
    void a(OnResourceIdSetResponse p0);
    
    void a(OnStorageStatsResponse p0);
    
    void a(OnSyncMoreResponse p0);
    
    void c(Status p0);
    
    void onSuccess();
}
