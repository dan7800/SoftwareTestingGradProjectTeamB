package com.google.android.gms.common.data;

import java.util.*;
import com.google.android.gms.common.internal.*;

public class d
{
    private final String[] bDU;
    private final ArrayList<HashMap<String, Object>> bEd;
    private final String bEe;
    private final HashMap<Object, Integer> bEf;
    private boolean bEg;
    private String bEh;
    
    private d(final String[] array, final String bEe) {
        this.bDU = G.ae(array);
        this.bEd = new ArrayList<HashMap<String, Object>>();
        this.bEe = bEe;
        this.bEf = new HashMap<Object, Integer>();
        this.bEg = false;
        this.bEh = null;
    }
}
