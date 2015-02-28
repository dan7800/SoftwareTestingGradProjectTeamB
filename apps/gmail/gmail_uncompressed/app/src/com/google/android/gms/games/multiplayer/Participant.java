package com.google.android.gms.games.multiplayer;

import android.os.*;
import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.games.*;

public interface Participant extends Parcelable, e<Participant>
{
    Uri NR();
    
    @Deprecated
    String NS();
    
    Uri NT();
    
    @Deprecated
    String NU();
    
    Player OG();
    
    String OP();
    
    boolean PB();
    
    String PC();
    
    ParticipantResult PD();
    
    int getCapabilities();
    
    String getDisplayName();
    
    int getStatus();
}
