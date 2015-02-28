package com.google.android.gms.games.multiplayer.realtime;

import com.google.android.gms.common.data.*;
import com.google.android.gms.games.multiplayer.*;
import android.os.*;

public interface Room extends Parcelable, e<Room>, f
{
    String PH();
    
    String PI();
    
    Bundle PJ();
    
    int PK();
    
    long Pj();
    
    int Pl();
    
    String getDescription();
    
    int getStatus();
}
