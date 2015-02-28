package com.google.android.gms.games.event;

import android.os.*;
import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.games.*;

public interface Event extends Parcelable, e<Event>
{
    Uri NR();
    
    @Deprecated
    String NS();
    
    Player OG();
    
    String OM();
    
    String ON();
    
    String getDescription();
    
    String getName();
    
    long getValue();
    
    boolean isVisible();
}
