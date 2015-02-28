package com.google.android.gms.games;

import android.os.*;
import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.games.internal.player.*;

public interface Player extends Parcelable, e<Player>
{
    Uri NR();
    
    @Deprecated
    String NS();
    
    Uri NT();
    
    @Deprecated
    String NU();
    
    String Ok();
    
    long Ol();
    
    long Om();
    
    int On();
    
    boolean Oo();
    
    PlayerLevelInfo Op();
    
    MostRecentGameInfo Oq();
    
    String getDisplayName();
    
    String getTitle();
}
