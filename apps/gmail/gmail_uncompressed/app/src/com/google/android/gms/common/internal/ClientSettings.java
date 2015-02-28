package com.google.android.gms.common.internal;

import android.view.*;
import java.util.*;

public final class ClientSettings
{
    private final View bCq;
    private final ClientSettings$ParcelableClientSettings bEK;
    
    public ClientSettings(final String s, final Collection<String> collection, final int n, final View bCq, final String s2) {
        this.bEK = new ClientSettings$ParcelableClientSettings(s, collection, n, s2);
        this.bCq = bCq;
    }
    
    public final String KT() {
        return this.bEK.KT();
    }
    
    public final List<String> KU() {
        return this.bEK.KU();
    }
    
    public final String KV() {
        return this.bEK.KV();
    }
}
