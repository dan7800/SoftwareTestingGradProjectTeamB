package com.android.emailcommon;

import android.content.*;
import com.android.mail.utils.*;
import java.io.*;
import android.telephony.*;
import com.android.emailcommon.b.*;

public final class a
{
    private static String VJ;
    
    static {
        a.VJ = null;
    }
    
    public static String T(final Context context) {
        Label_0171: {
            synchronized (a.class) {
                if (a.VJ != null) {
                    break Label_0171;
                }
                if (context == null) {
                    throw new IllegalStateException("getDeviceId requires a Context");
                }
            }
            final File fileStreamPath = context.getFileStreamPath("deviceName");
            String vj = null;
            Label_0166: {
                if (fileStreamPath.exists()) {
                    if (fileStreamPath.canRead()) {
                        final BufferedReader bufferedReader = new BufferedReader(new FileReader(fileStreamPath), 128);
                        vj = bufferedReader.readLine();
                        bufferedReader.close();
                        if (vj != null) {
                            break Label_0166;
                        }
                        if (!fileStreamPath.delete()) {
                            E.f(b.mW, "Can't delete null deviceName file; try overwrite.", new Object[0]);
                        }
                    }
                    else {
                        E.e(b.mW, fileStreamPath.getAbsolutePath() + ": File exists, but can't read?  Trying to remove.", new Object[0]);
                        if (!fileStreamPath.delete()) {
                            E.e(b.mW, "Remove failed. Tring to overwrite.", new Object[0]);
                        }
                    }
                }
                final BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(fileStreamPath), 128);
                final String u = U(context);
                if (u != null) {
                    vj = "androidc" + u;
                }
                else {
                    vj = "android" + System.currentTimeMillis();
                }
                bufferedWriter.write(vj);
                bufferedWriter.close();
            }
            a.VJ = vj;
        }
        // monitorexit(a.class)
        return a.VJ;
    }
    
    private static String U(final Context context) {
        String deviceId;
        try {
            final TelephonyManager telephonyManager = (TelephonyManager)context.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            deviceId = telephonyManager.getDeviceId();
            if (deviceId == null) {
                return null;
            }
        }
        catch (Exception ex) {
            E.c(b.mW, "Error in TelephonyManager.getDeviceId(): " + ex.getMessage(), new Object[0]);
            return null;
        }
        return s.aH(deviceId);
    }
}
