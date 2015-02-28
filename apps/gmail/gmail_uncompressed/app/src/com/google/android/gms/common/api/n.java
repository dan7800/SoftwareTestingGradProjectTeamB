package com.google.android.gms.common.api;

import com.google.android.gms.common.*;

public interface n
{
    a Kw();
    
     <C extends f> C a(h<C> p0);
    
     <A extends f, R extends t, T extends l<R, A>> T a(T p0);
    
    void a(p p0);
    
    void a(q p0);
    
     <A extends f, T extends l<? extends t, A>> T b(T p0);
    
    void b(p p0);
    
    void b(q p0);
    
    void connect();
    
    void disconnect();
    
    boolean isConnected();
    
    boolean isConnecting();
}
