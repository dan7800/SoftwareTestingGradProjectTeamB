package com.google.android.gms.games.internal.game;

import android.os.*;
import com.google.android.gms.common.data.*;
import android.net.*;

public interface GameBadge extends Parcelable, e<GameBadge>
{
    Uri NR();
    
    String getDescription();
    
    String getTitle();
    
    int getType();
}
