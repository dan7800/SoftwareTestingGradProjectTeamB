package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.drive.metadata.*;
import java.util.*;
import com.google.android.gms.internal.*;

public final class f
{
    private static Map<String, a<?>> bIk;
    
    static {
        f.bIk = new HashMap<String, a<?>>();
        b(V.bTw);
        b(V.bTW);
        b(V.bTN);
        b(V.bTU);
        b(V.bTX);
        b(V.bTH);
        b(V.bTI);
        b(V.bTF);
        b(V.bTK);
        b(V.bTS);
        b(V.bTx);
        b(V.bTP);
        b(V.bTz);
        b(V.bTG);
        b(V.bTA);
        b(V.bTB);
        b(V.bTC);
        b(V.bTM);
        b(V.bTJ);
        b(V.bTO);
        b(V.bTQ);
        b(V.bTR);
        b(V.bTT);
        b(V.bTY);
        b(V.bTZ);
        b(V.bTE);
        b(V.bTD);
        b(V.bTV);
        b(V.bTL);
        b(V.bTy);
        b(V.bUa);
        b(V.bUb);
        b(V.bUc);
        b(ah.bUd);
        b(ah.bUf);
        b(ah.bUg);
        b(ah.bUh);
        b(ah.bUe);
        b(ao.bUj);
        b(ao.bUk);
    }
    
    private static void b(final a<?> a) {
        if (f.bIk.containsKey(a.getName())) {
            throw new IllegalArgumentException("Duplicate field name registered: " + a.getName());
        }
        f.bIk.put(a.getName(), a);
    }
    
    public static a<?> gc(final String s) {
        return f.bIk.get(s);
    }
}
