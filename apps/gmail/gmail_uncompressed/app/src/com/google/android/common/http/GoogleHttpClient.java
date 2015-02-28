package com.google.android.common.http;

import android.net.http.*;
import android.content.*;
import org.apache.http.conn.scheme.*;
import java.util.*;
import org.apache.http.client.methods.*;
import org.apache.http.protocol.*;
import android.os.*;
import android.net.*;
import android.util.*;
import org.apache.http.impl.client.*;
import org.apache.http.*;
import org.apache.http.client.*;
import java.net.*;
import org.apache.http.conn.*;
import org.apache.http.params.*;

public final class GoogleHttpClient implements HttpClient
{
    private final ContentResolver Hb;
    private final String aSj;
    private final AndroidHttpClient aVP;
    private final String aVQ;
    private final ThreadLocal<Boolean> aVR;
    
    public GoogleHttpClient(final Context context, final String aSj) {
        this.aVR = new ThreadLocal<Boolean>();
        final String string = aSj + " (" + Build.DEVICE + " " + Build.ID + ")" + "; gzip";
        this.aVP = AndroidHttpClient.newInstance(string, context);
        this.Hb = context.getContentResolver();
        this.aSj = aSj;
        this.aVQ = string;
        final SchemeRegistry schemeRegistry = this.getConnectionManager().getSchemeRegistry();
        for (final String s : schemeRegistry.getSchemeNames()) {
            final Scheme unregister = schemeRegistry.unregister(s);
            final SocketFactory socketFactory = unregister.getSocketFactory();
            c c;
            if (socketFactory instanceof LayeredSocketFactory) {
                c = new b(this, (LayeredSocketFactory)socketFactory, (byte)0);
            }
            else {
                c = new c(this, socketFactory, (byte)0);
            }
            schemeRegistry.register(new Scheme(s, (SocketFactory)c, unregister.getDefaultPort()));
        }
    }
    
    private HttpResponse a(final HttpUriRequest httpUriRequest, final HttpContext httpContext) {
    Label_0112_Outer:
        while (true) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            while (true) {
                HttpResponse execute = null;
                try {
                    this.aVR.set(null);
                    final int myUid;
                    final long uidTxBytes;
                    final long uidRxBytes;
                    HttpEntity entity = null;
                    Label_0215: {
                        if (!com.google.android.gsf.c.a(this.Hb, "http_stats", false)) {
                            break Label_0215;
                        }
                        myUid = Process.myUid();
                        uidTxBytes = TrafficStats.getUidTxBytes(myUid);
                        uidRxBytes = TrafficStats.getUidRxBytes(myUid);
                        execute = this.aVP.execute(httpUriRequest, httpContext);
                        if (execute == null) {
                            entity = null;
                            break Label_0215;
                        }
                        Label_0203: {
                            break Label_0203;
                            while (true) {
                                HttpResponse execute2 = null;
                                final int statusCode = execute2.getStatusLine().getStatusCode();
                                try {
                                    final long n = SystemClock.elapsedRealtime() - elapsedRealtime;
                                    int n2;
                                    if (this.aVR.get() == null && statusCode >= 0) {
                                        n2 = 1;
                                    }
                                    else {
                                        n2 = 0;
                                    }
                                    EventLog.writeEvent(203002, new Object[] { n, statusCode, this.aSj, n2 });
                                    return execute2;
                                    execute2 = this.aVP.execute(httpUriRequest, httpContext);
                                    continue Label_0112_Outer;
                                    entity = execute.getEntity();
                                }
                                catch (Exception ex) {
                                    Log.e("GoogleHttpClient", "Error recording stats", (Throwable)ex);
                                    return execute2;
                                }
                            }
                        }
                    }
                    if (entity != null) {
                        final long elapsedRealtime2 = SystemClock.elapsedRealtime();
                        execute.setEntity((HttpEntity)new e(entity, this.aSj, myUid, uidTxBytes, uidRxBytes, elapsedRealtime2 - elapsedRealtime, elapsedRealtime2));
                    }
                }
                finally {
                    try {
                        final long n3 = SystemClock.elapsedRealtime() - elapsedRealtime;
                        if (this.aVR.get() != null) {}
                        EventLog.writeEvent(203002, new Object[] { n3, -1, this.aSj, 0 });
                    }
                    catch (Exception ex2) {
                        Log.e("GoogleHttpClient", "Error recording stats", (Throwable)ex2);
                    }
                }
                HttpResponse execute2 = execute;
                continue;
            }
        }
    }
    
    private static RequestWrapper a(final HttpUriRequest httpUriRequest) {
        try {
            Object o;
            if (httpUriRequest instanceof HttpEntityEnclosingRequest) {
                o = new EntityEnclosingRequestWrapper((HttpEntityEnclosingRequest)httpUriRequest);
            }
            else {
                o = new RequestWrapper((HttpRequest)httpUriRequest);
            }
            ((RequestWrapper)o).resetHeaders();
            return (RequestWrapper)o;
        }
        catch (ProtocolException ex) {
            throw new ClientProtocolException((Throwable)ex);
        }
    }
    
    public final void close() {
        this.aVP.close();
    }
    
    public final void dn(final String s) {
        this.aVP.enableCurlLogging(s, 2);
    }
    
    public final <T> T execute(final HttpHost httpHost, final HttpRequest httpRequest, final ResponseHandler<? extends T> responseHandler) {
        return (T)this.aVP.execute(httpHost, httpRequest, (ResponseHandler)responseHandler);
    }
    
    public final <T> T execute(final HttpHost httpHost, final HttpRequest httpRequest, final ResponseHandler<? extends T> responseHandler, final HttpContext httpContext) {
        return (T)this.aVP.execute(httpHost, httpRequest, (ResponseHandler)responseHandler, httpContext);
    }
    
    public final <T> T execute(final HttpUriRequest httpUriRequest, final ResponseHandler<? extends T> responseHandler) {
        return (T)this.aVP.execute(httpUriRequest, (ResponseHandler)responseHandler);
    }
    
    public final <T> T execute(final HttpUriRequest httpUriRequest, final ResponseHandler<? extends T> responseHandler, final HttpContext httpContext) {
        return (T)this.aVP.execute(httpUriRequest, (ResponseHandler)responseHandler, httpContext);
    }
    
    public final HttpResponse execute(final HttpHost httpHost, final HttpRequest httpRequest) {
        return this.aVP.execute(httpHost, httpRequest);
    }
    
    public final HttpResponse execute(final HttpHost httpHost, final HttpRequest httpRequest, final HttpContext httpContext) {
        return this.aVP.execute(httpHost, httpRequest, httpContext);
    }
    
    public final HttpResponse execute(final HttpUriRequest httpUriRequest) {
        return this.execute(httpUriRequest, (HttpContext)null);
    }
    
    public final HttpResponse execute(final HttpUriRequest httpUriRequest, final HttpContext httpContext) {
        final String string = httpUriRequest.getURI().toString();
        final j do1 = UrlRules.a(this.Hb).do(string);
        final String apply = do1.apply(string);
        if (apply == null) {
            Log.w("GoogleHttpClient", "Blocked by " + do1.mName + ": " + string);
            throw new GoogleHttpClient$BlockedRequestException(do1);
        }
        if (apply == string) {
            return this.a(httpUriRequest, httpContext);
        }
        try {
            final URI uri = new URI(apply);
            final RequestWrapper a = a(httpUriRequest);
            a.setURI(uri);
            return this.a((HttpUriRequest)a, httpContext);
        }
        catch (URISyntaxException ex) {
            throw new RuntimeException("Bad URL from rule: " + do1.mName, ex);
        }
    }
    
    public final ClientConnectionManager getConnectionManager() {
        return this.aVP.getConnectionManager();
    }
    
    public final HttpParams getParams() {
        return this.aVP.getParams();
    }
}
