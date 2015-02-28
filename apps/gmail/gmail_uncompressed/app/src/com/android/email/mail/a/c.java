package com.android.email.mail.a;

import org.apache.http.client.*;
import org.apache.http.params.*;
import org.apache.http.impl.client.*;
import com.android.mail.utils.*;
import org.json.*;
import org.apache.http.client.methods.*;
import com.android.emailcommon.mail.*;
import android.content.*;
import com.android.email.activity.setup.*;
import org.apache.http.message.*;
import org.apache.http.client.entity.*;
import java.util.*;
import org.apache.http.*;
import java.io.*;
import com.android.emailcommon.*;

public final class c
{
    private static final String TAG;
    final HttpClient Qm;
    
    static {
        TAG = b.mW;
    }
    
    public c() {
        final BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 20000);
        HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, 30000);
        HttpConnectionParams.setSocketBufferSize((HttpParams)basicHttpParams, 8192);
        this.Qm = (HttpClient)new DefaultHttpClient((HttpParams)basicHttpParams);
    }
    
    private static d a(final HttpResponse httpResponse) {
        final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpResponse.getEntity().getContent(), "UTF-8"));
        final StringBuilder sb = new StringBuilder();
        while (true) {
            final String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb.append(line).append("\n");
        }
        try {
            final JSONObject jsonObject = new JSONObject(sb.toString());
            final String string = jsonObject.getString("access_token");
            final String string2 = jsonObject.getString("expires_in");
            Label_0137: {
                if (!jsonObject.has("refresh_token")) {
                    break Label_0137;
                }
                String string3 = jsonObject.getString("refresh_token");
                try {
                    return new d(string, string3, Integer.valueOf(string2));
                    string3 = null;
                }
                catch (NumberFormatException ex) {
                    E.e(c.TAG, ex, "Invalid expiration %s", string2);
                    throw new MessagingException("Invalid number format", ex);
                }
            }
        }
        catch (JSONException ex2) {
            E.e(c.TAG, (Throwable)ex2, "Invalid JSON", new Object[0]);
            throw new MessagingException("Invalid JSON", (Throwable)ex2);
        }
    }
    
    private d a(final HttpPost httpPost) {
        final HttpResponse execute = this.Qm.execute((HttpUriRequest)httpPost);
        final int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode == 200) {
            return a(execute);
        }
        if (statusCode == 403 || statusCode == 401 || statusCode == 400) {
            E.f(c.TAG, "HTTP Authentication error getting oauth tokens %d", statusCode);
            throw new AuthenticationFailedException("Auth error getting auth token");
        }
        E.f(c.TAG, "HTTP Error %d getting oauth tokens", statusCode);
        throw new MessagingException("HTTPError " + statusCode + " getting oauth token");
    }
    
    public final d b(final Context context, final String s, final String s2) {
        final VendorPolicyLoader$OAuthProvider d = N.d(context, s);
        if (d == null) {
            E.f(c.TAG, "invalid provider %s", s);
            throw new AuthenticationFailedException("Invalid provider" + s);
        }
        final HttpPost httpPost = new HttpPost(d.tokenEndpoint);
        httpPost.setHeader("Content-Type", "application/x-www-form-urlencoded");
        final ArrayList<BasicNameValuePair> list = new ArrayList<BasicNameValuePair>();
        list.add(new BasicNameValuePair("code", s2));
        list.add(new BasicNameValuePair("client_id", d.clientId));
        list.add(new BasicNameValuePair("client_secret", d.clientSecret));
        list.add(new BasicNameValuePair("redirect_uri", d.redirectUri));
        list.add(new BasicNameValuePair("grant_type", "authorization_code"));
        try {
            httpPost.setEntity((HttpEntity)new UrlEncodedFormEntity((List)list));
            return this.a(httpPost);
        }
        catch (UnsupportedEncodingException ex) {
            E.e(c.TAG, ex, "unsupported encoding", new Object[0]);
            throw new AuthenticationFailedException("Unsupported encoding", ex);
        }
    }
    
    public final d c(final Context context, final String s, final String s2) {
        final VendorPolicyLoader$OAuthProvider d = N.d(context, s);
        if (d == null) {
            E.f(c.TAG, "invalid provider %s", s);
            throw new AuthenticationFailedException("Invalid provider" + s);
        }
        final HttpPost httpPost = new HttpPost(d.refreshEndpoint);
        httpPost.setHeader("Content-Type", "application/x-www-form-urlencoded");
        final ArrayList<BasicNameValuePair> list = new ArrayList<BasicNameValuePair>();
        list.add(new BasicNameValuePair("refresh_token", s2));
        list.add(new BasicNameValuePair("client_id", d.clientId));
        list.add(new BasicNameValuePair("client_secret", d.clientSecret));
        list.add(new BasicNameValuePair("grant_type", "refresh_token"));
        try {
            httpPost.setEntity((HttpEntity)new UrlEncodedFormEntity((List)list));
            return this.a(httpPost);
        }
        catch (UnsupportedEncodingException ex) {
            E.e(c.TAG, ex, "unsupported encoding", new Object[0]);
            throw new AuthenticationFailedException("Unsuported encoding", ex);
        }
    }
}
