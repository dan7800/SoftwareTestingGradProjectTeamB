package com.google.android.gms.common.api;

import android.os.*;

public interface f
{
    void connect();
    
    void disconnect();
    
    Looper getLooper();
    
    boolean isConnected();
}
