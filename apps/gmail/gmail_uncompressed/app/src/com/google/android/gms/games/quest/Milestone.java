package com.google.android.gms.games.quest;

import android.os.*;
import com.google.android.gms.common.data.*;

public interface Milestone extends Parcelable, e<Milestone>
{
    String OM();
    
    String PW();
    
    long PX();
    
    long PY();
    
    byte[] PZ();
    
    int getState();
}
