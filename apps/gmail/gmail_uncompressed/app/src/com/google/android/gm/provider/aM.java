package com.google.android.gm.provider;

import com.google.android.common.http.*;
import com.google.android.gm.c.*;
import com.google.android.gsf.*;
import org.apache.http.conn.params.*;
import android.content.pm.*;
import android.content.res.*;
import org.apache.http.params.*;
import android.app.*;
import com.google.android.gm.provider.uiprovider.*;
import java.io.*;
import android.text.*;
import org.apache.http.client.methods.*;
import android.net.*;
import java.util.*;
import com.google.common.collect.*;
import android.net.http.*;
import com.google.android.gms.common.*;
import org.apache.http.*;
import org.apache.http.client.*;
import android.os.*;
import org.apache.http.protocol.*;
import java.net.*;
import org.json.*;
import com.android.mail.a.*;
import com.google.android.mail.common.base.*;
import android.accounts.*;
import com.android.mail.utils.*;
import android.content.*;
import android.util.*;
import android.database.*;
import android.database.sqlite.*;
import com.google.android.gm.*;
import com.android.mail.providers.*;

final class am implements ag
{
    final /* synthetic */ MailEngine bjA;
    
    am(final MailEngine bjA) {
        this.bjA = bjA;
    }
    
    @Override
    public final void FK() {
        if (this.bjA.bdw.Ee()) {
            this.bjA.biz.GA();
        }
    }
    
    @Override
    public final void a(final ah ah) {
        if (this.bjA.bdw.ae(ah.FM()) != 0) {
            this.bjA.biC.put(ah.FL(), true);
        }
    }
    
    @Override
    public final void m(final Set<Long> set) {
        this.bjA.o(set);
    }
}
