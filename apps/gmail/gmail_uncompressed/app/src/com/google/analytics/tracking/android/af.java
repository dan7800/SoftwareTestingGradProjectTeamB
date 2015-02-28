package com.google.analytics.tracking.android;

import android.content.*;
import android.os.*;
import android.text.*;
import org.apache.http.message.*;
import org.apache.http.entity.*;
import java.net.*;
import java.io.*;
import java.util.*;
import org.apache.http.client.*;
import org.apache.http.*;
import android.net.*;

final class af implements l
{
    private final Context aSK;
    private final String aVt;
    private final P aVu;
    
    af(final P p2, final Context context) {
        this(p2, context, (byte)0);
    }
    
    private af(final P aVu, final Context context, final byte b) {
        this.aSK = context.getApplicationContext();
        this.aVt = String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", "2.0", Build$VERSION.RELEASE, ak.b(Locale.getDefault()), Build.MODEL, Build.ID);
        this.aVu = aVu;
    }
    
    private HttpEntityEnclosingRequest D(final String s, final String s2) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            Q.da("Empty hit, discarding.");
            return null;
        }
        final String string = s2 + "?" + s;
        BasicHttpEntityEnclosingRequest basicHttpEntityEnclosingRequest;
        if (string.length() < 2036) {
            basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", string);
        }
        else {
            basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("POST", s2);
            try {
                ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).setEntity((HttpEntity)new StringEntity(s));
            }
            catch (UnsupportedEncodingException ex) {
                Q.da("Encoding error, discarding hit");
                return null;
            }
        }
        ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).addHeader("User-Agent", this.aVt);
        return (HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest;
    }
    
    private static URL a(final N n) {
        if (TextUtils.isEmpty((CharSequence)n.Cd())) {
            return null;
        }
        try {
            return new URL(n.Cd());
        }
        catch (MalformedURLException ex) {
            try {
                return new URL("http://www.google-analytics.com/collect");
            }
            catch (MalformedURLException ex2) {
                return null;
            }
        }
    }
    
    private static void a(final boolean b, final HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        if (!b) {
            return;
        }
        final StringBuffer sb = new StringBuffer();
        final Header[] allHeaders = httpEntityEnclosingRequest.getAllHeaders();
        for (int length = allHeaders.length, i = 0; i < length; ++i) {
            sb.append(allHeaders[i].toString()).append("\n");
        }
        sb.append(httpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
        while (true) {
            if (httpEntityEnclosingRequest.getEntity() == null) {
                break Label_0154;
            }
            try {
                final InputStream content = httpEntityEnclosingRequest.getEntity().getContent();
                if (content != null) {
                    final int available = content.available();
                    if (available > 0) {
                        final byte[] array = new byte[available];
                        content.read(array);
                        sb.append("POST:\n");
                        sb.append(new String(array)).append("\n");
                    }
                }
                Q.cX(sb.toString());
            }
            catch (IOException ex) {
                Q.da("Error Writing hit to log...");
                continue;
            }
            break;
        }
    }
    
    @Override
    public final int B(final List<N> list) {
        final int min = Math.min(list.size(), 40);
        int i = 0;
        int n = 0;
        while (i < min) {
            final HttpClient ce = this.aVu.Ce();
            final N n2 = list.get(i);
            final URL a = a(n2);
            int n3;
            if (a == null) {
                if (Q.isDebugEnabled()) {
                    Q.da("No destination: discarding hit: " + n2.Ca());
                }
                else {
                    Q.da("No destination: discarding hit.");
                }
                n3 = n + 1;
            }
            else {
                final HttpHost httpHost = new HttpHost(a.getHost(), a.getPort(), a.getProtocol());
                final String path = a.getPath();
                String string;
                if (TextUtils.isEmpty((CharSequence)n2.Ca())) {
                    string = "";
                }
                else {
                    final long currentTimeMillis = System.currentTimeMillis();
                    final StringBuilder sb = new StringBuilder();
                    sb.append(n2.Ca());
                    if (n2.Cc() > 0L) {
                        final long n4 = currentTimeMillis - n2.Cc();
                        if (n4 >= 0L) {
                            sb.append("&qt=").append(n4);
                        }
                    }
                    sb.append("&z=").append(n2.Cb());
                    string = sb.toString();
                }
                final HttpEntityEnclosingRequest d = this.D(string, path);
                if (d == null) {
                    n3 = n + 1;
                }
                else {
                    d.addHeader("Host", httpHost.toHostString());
                    a(Q.isDebugEnabled(), d);
                    Label_0316: {
                        if (string.length() <= 8192) {
                            try {
                                final HttpResponse execute = ce.execute(httpHost, (HttpRequest)d);
                                if (execute.getStatusLine().getStatusCode() != 200) {
                                    Q.da("Bad response: " + execute.getStatusLine().getStatusCode());
                                    return n;
                                }
                                break Label_0316;
                            }
                            catch (ClientProtocolException ex2) {
                                Q.da("ClientProtocolException sending hit; discarding hit...");
                                break Label_0316;
                            }
                            catch (IOException ex) {
                                Q.da("Exception sending hit: " + ex.getClass().getSimpleName());
                                Q.da(ex.getMessage());
                                return n;
                            }
                            break;
                        }
                        Q.da("Hit too long (> 8192 bytes)--not sent");
                    }
                    n3 = n + 1;
                }
            }
            ++i;
            n = n3;
        }
        return n;
    }
    
    @Override
    public final boolean BD() {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)this.aSK.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            Q.cZ("...no network connectivity");
            return false;
        }
        return true;
    }
}
