package com.google.android.gm.provider.uiprovider;

import java.util.*;
import android.net.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;

public final class e
{
    public final long bku;
    public final String blK;
    public final long blL;
    public final long bol;
    public final List<String> bos;
    public final String partId;
    
    private e(final String blK, final long bku, final long bol, final long blL, final String partId, final List<String> bos) {
        this.blK = blK;
        this.bku = bku;
        this.bol = bol;
        this.blL = blL;
        this.partId = partId;
        this.bos = bos;
    }
    
    public static e G(final Uri uri) {
        final List pathSegments = uri.getPathSegments();
        final String s = pathSegments.get(0);
        final List queryParameters = uri.getQueryParameters("contentType");
        final long long1 = Long.parseLong(pathSegments.get(2));
        final long long2 = Long.parseLong(pathSegments.get(3));
        String s3;
        if (pathSegments.size() >= 5) {
            final String s2 = pathSegments.get(4);
            if (s2.equals("empty")) {
                E.f(Attachment.mW, "Parsed message attachment uri with partId = \"empty\"", uri);
                s3 = s2;
            }
            else {
                s3 = s2;
            }
        }
        else {
            s3 = null;
        }
        return new e(s, long1, Long.parseLong(uri.getQueryParameter("serverMessageId")), long2, s3, queryParameters);
    }
}
