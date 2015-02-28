package com.google.android.gms.games.achievement;

import android.os.*;
import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.games.*;

public interface Achievement extends Parcelable, e<Achievement>
{
    Uri OA();
    
    @Deprecated
    String OB();
    
    Uri OC();
    
    @Deprecated
    String OD();
    
    int OE();
    
    String OF();
    
    Player OG();
    
    int OH();
    
    String OI();
    
    long OJ();
    
    long OK();
    
    String Oz();
    
    String getDescription();
    
    String getName();
    
    int getState();
    
    int getType();
}
