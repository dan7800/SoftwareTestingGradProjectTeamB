package com.google.android.gm.provider;

import javax.crypto.spec.*;
import javax.crypto.*;
import java.security.*;
import com.google.android.gm.*;
import com.android.mail.utils.*;

public final class z
{
    private static byte[] bdD;
    
    static {
        z.bdD = null;
    }
    
    private static byte[] DX() {
        synchronized (z.class) {
            if (z.bdD == null) {
                final KeyGenerator instance = KeyGenerator.getInstance("AES");
                instance.init(128, new SecureRandom());
                z.bdD = instance.generateKey().getEncoded();
            }
            return z.bdD;
        }
    }
    
    public static byte[] i(final byte[] array) {
        final SecretKeySpec secretKeySpec = new SecretKeySpec(DX(), "AES");
        final Cipher instance = Cipher.getInstance("AES");
        instance.init(1, secretKeySpec);
        return instance.doFinal(array);
    }
    
    public static byte[] j(final byte[] array) {
        final byte[] bdD = z.bdD;
        if (bdD == null) {
            E.f(ay.mW, "Encryption key not set.Caller attempting to decrypt data across process runs", new Object[0]);
            return null;
        }
        final SecretKeySpec secretKeySpec = new SecretKeySpec(bdD, "AES");
        final Cipher instance = Cipher.getInstance("AES");
        instance.init(2, secretKeySpec);
        return instance.doFinal(array);
    }
}
