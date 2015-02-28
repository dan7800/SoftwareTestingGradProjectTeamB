package com.android.ex.chips;

import android.os.*;
import android.net.*;
import android.database.*;
import java.io.*;
import android.support.v4.f.*;
import android.content.*;

final class k extends AsyncTask<Void, Void, byte[]>
{
    final /* synthetic */ Uri acP;
    final /* synthetic */ ae acQ;
    final /* synthetic */ r acR;
    final /* synthetic */ j acS;
    
    k(final j acS, final Uri acP, final ae acQ, final r acR) {
        this.acS = acS;
        this.acP = acP;
        this.acQ = acQ;
        this.acR = acR;
    }
    
    private byte[] my() {
        final Cursor query = this.acS.mContentResolver.query(this.acP, l.Lm, (String)null, (String[])null, (String)null);
        Label_0075: {
            if (query == null) {
                break Label_0075;
            }
            try {
                if (query.moveToFirst()) {
                    return query.getBlob(0);
                }
                return null;
            }
            finally {
                query.close();
            }
            try {
                final InputStream openInputStream = this.acS.mContentResolver.openInputStream(this.acP);
                final byte[] blob = null;
                if (openInputStream != null) {
                    final byte[] array = new byte[16384];
                    final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        while (true) {
                            final int read = openInputStream.read(array);
                            if (read == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(array, 0, read);
                        }
                    }
                    finally {
                        openInputStream.close();
                    }
                    openInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                return blob;
            }
            catch (IOException ex) {
                return null;
            }
        }
    }
}
