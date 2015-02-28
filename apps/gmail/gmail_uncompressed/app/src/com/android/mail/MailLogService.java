package com.android.mail;

import android.app.*;
import com.android.mail.utils.*;
import java.io.*;
import android.content.*;
import android.os.*;
import android.util.*;
import java.util.*;

public class MailLogService extends Service
{
    public static boolean ajX;
    private static final Map<String, g> ajY;
    protected static final String mW;
    
    static {
        MailLogService.ajX = false;
        mW = D.AU();
        ajY = new HashMap<String, g>();
    }
    
    public static void a(final String s, final String s2, final Object... array) {
        if (!MailLogService.ajX || !E.isLoggable(MailLogService.mW, 3)) {
            return;
        }
        final String format = String.format(s2, array);
        g g;
        if (MailLogService.ajY.containsKey(s)) {
            g = MailLogService.ajY.get(s);
        }
        else {
            g = new g((byte)0);
            MailLogService.ajY.put(s, g);
        }
        g.aZ(format);
    }
    
    public static boolean op() {
        return E.isLoggable(MailLogService.mW, 3);
    }
    
    protected void dump(final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        if (!MailLogService.ajX) {
            return;
        }
        printWriter.print("**** MailLogService ***\n");
        for (final String s : MailLogService.ajY.keySet()) {
            printWriter.append("Logging for tag: \"");
            printWriter.append(s);
            printWriter.append("\"\n");
            printWriter.append(MailLogService.ajY.get(s).toString());
        }
        super.dump(fileDescriptor, printWriter, array);
    }
    
    public IBinder onBind(final Intent intent) {
        return null;
    }
}
