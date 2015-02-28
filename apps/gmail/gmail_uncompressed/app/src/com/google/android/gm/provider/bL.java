package com.google.android.gm.provider;

import com.google.common.a.a.*;
import java.util.regex.*;
import com.android.mail.utils.*;
import java.util.zip.*;
import com.google.android.gm.provider.uiprovider.*;
import android.database.*;
import android.util.*;
import android.text.*;
import android.net.http.*;
import org.apache.http.util.*;
import android.os.*;
import org.apache.http.*;
import android.content.*;
import java.util.*;
import com.google.android.common.http.*;
import java.io.*;
import org.apache.http.entity.*;
import org.apache.http.client.methods.*;
import com.google.common.collect.*;

final class bl
{
    private final InputStream blI;
    private int blJ;
    
    public bl(final InputStream blI) {
        this.blJ = 0;
        this.blI = blI;
    }
    
    public final int HD() {
        return this.blJ;
    }
    
    public final a HE() {
        final a a = new a(null);
        final int a2 = c.a(com.google.android.gm.provider.a.a.bny, this.blI, a);
        if (a2 == -1) {
            return null;
        }
        final a a3 = new a(com.google.android.gm.provider.a.a.bny);
        try {
            a3.a(a2, a);
            return a3;
        }
        catch (IllegalArgumentException ex) {
            E.f(MailSync.TAG, "Response proto has an unexpected field", new Object[0]);
            return a3;
        }
    }
    
    public final void close() {
        this.blI.close();
    }
    
    public final void dV(final int blJ) {
        this.blJ = blJ;
    }
}
