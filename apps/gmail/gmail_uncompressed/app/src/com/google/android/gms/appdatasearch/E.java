package com.google.android.gms.appdatasearch;

import java.util.*;

public final class e
{
    private static final String[] buM;
    private static final Map<String, Integer> buN;
    
    static {
        int i = 0;
        buM = new String[] { "text1", "text2", "icon", "intent_action", "intent_data", "intent_data_id", "intent_extra_data", "suggest_large_icon", "intent_activity" };
        buN = new HashMap<String, Integer>(e.buM.length);
        while (i < e.buM.length) {
            e.buN.put(e.buM[i], i);
            ++i;
        }
    }
    
    public static String em(final int n) {
        if (n < 0 || n >= e.buM.length) {
            return null;
        }
        return e.buM[n];
    }
}
