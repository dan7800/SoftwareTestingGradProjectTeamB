package com.android.emailcommon.b;

import javax.net.ssl.*;
import java.security.*;
import com.android.emailcommon.provider.*;
import android.database.*;
import java.security.cert.*;
import android.content.*;
import java.io.*;

final class q implements X509TrustManager
{
    private PublicKey abE;
    private final Context mContext;
    private final HostAuth mHostAuth;
    
    q(final Context mContext, final HostAuth mHostAuth) {
        this.mContext = mContext;
        this.mHostAuth = mHostAuth;
        final Cursor query = mContext.getContentResolver().query(HostAuth.CONTENT_URI, new String[] { "serverCert" }, "_id=?", new String[] { Long.toString(mHostAuth.Ln) }, (String)null);
        if (query == null) {
            return;
        }
        try {
            if (query.moveToNext()) {
                this.mHostAuth.Zl = query.getBlob(0);
            }
        }
        finally {
            query.close();
        }
    }
    
    @Override
    public final void checkClientTrusted(final X509Certificate[] array, final String s) {
        throw new CertificateException("We don't check client certificates");
    }
    
    @Override
    public final void checkServerTrusted(final X509Certificate[] array, final String s) {
        if (array.length == 0) {
            throw new CertificateException("No certificates?");
        }
        final X509Certificate x509Certificate = array[0];
        Label_0098: {
            if (this.mHostAuth.Zl == null) {
                break Label_0098;
            }
            while (true) {
                if (this.abE != null) {
                    break Label_0074;
                }
                final ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(this.mHostAuth.Zl);
                this.abE = CertificateFactory.getInstance("X509").generateCertificate(byteArrayInputStream).getPublicKey();
                try {
                    byteArrayInputStream.close();
                    if (!this.abE.equals(x509Certificate.getPublicKey())) {
                        throw new CertificateException("PublicKey has changed since initial connection!");
                    }
                    return;
                    final byte[] encoded = x509Certificate.getEncoded();
                    this.mHostAuth.Zl = encoded;
                    final ContentValues contentValues = new ContentValues();
                    contentValues.put("serverCert", encoded);
                    this.mContext.getContentResolver().update(ContentUris.withAppendedId(HostAuth.CONTENT_URI, this.mHostAuth.Ln), contentValues, (String)null, (String[])null);
                }
                catch (IOException ex) {
                    continue;
                }
                break;
            }
        }
    }
    
    @Override
    public final X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
