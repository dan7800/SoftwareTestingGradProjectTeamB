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

final class ak implements Observer
{
    final /* synthetic */ MailEngine bjA;
    private boolean bjy;
    private boolean bjz;
    
    ak(final MailEngine bjA) {
        this.bjA = bjA;
        this.bjy = false;
        this.bjz = false;
    }
    
    @Override
    public final void update(final Observable observable, final Object o) {
        int n;
        if (this.bjy != this.bjA.bdw.Ef() || this.bjz != this.bjA.bdw.Ee()) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            this.bjz = this.bjA.bdw.Ee();
            this.bjy = this.bjA.bdw.Ef();
            this.bjA.Gh();
        }
    }
}
