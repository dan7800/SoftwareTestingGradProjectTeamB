package com.google.android.gms.games.quest;

import android.os.*;
import com.google.android.gms.common.data.*;
import android.net.*;
import com.google.android.gms.games.*;
import java.util.*;

public interface Quest extends Parcelable, e<Quest>
{
    public static final int[] bPN = { 1, 2, 3, 4, 6, 5 };
    public static final String[] bPO = { Integer.toString(1), Integer.toString(2), Integer.toString(3) };
    
    Uri NR();
    
    @Deprecated
    String NS();
    
    long OJ();
    
    Game OR();
    
    String Qb();
    
    Uri Qc();
    
    @Deprecated
    String Qd();
    
    List<Milestone> Qe();
    
    long Qf();
    
    long Qg();
    
    long Qh();
    
    long Qi();
    
    String getDescription();
    
    String getName();
    
    int getState();
    
    int getType();
}
