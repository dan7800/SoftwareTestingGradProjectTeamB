package com.android.email.mail;

import android.content.*;
import java.io.*;
import org.xmlpull.v1.*;
import android.content.res.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.mail.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;

public abstract class a
{
    private static a a(final Context context, final int n, final Account account) {
        a a = null;
        try {
            final XmlResourceParser xml = context.getResources().getXml(n);
            final HostAuth y = account.Y(context);
            while (true) {
                final int next = xml.next();
                if (next == 1) {
                    goto Label_0113;
                }
                if (next != 2 || !"sender".equals(xml.getName())) {
                    continue;
                }
                final String attributeValue = xml.getAttributeValue((String)null, "scheme");
                if (y.Zh == null || !y.Zh.startsWith(attributeValue)) {
                    continue;
                }
                a = a(context, xml.getAttributeValue((String)null, "class"), account);
            }
        }
        catch (IOException ex) {}
        catch (XmlPullParserException ex2) {
            return a;
        }
    }
    
    private static a a(final Context context, final String s, final Account account) {
        Object invoke;
        try {
            invoke = Class.forName(s).getMethod("newInstance", Account.class, Context.class).invoke(null, account, context);
            if (!(invoke instanceof a)) {
                throw new MessagingException(account.Xy + ": " + s + " create incompatible object");
            }
        }
        catch (Exception ex) {
            E.c(b.mW, String.format("exception %s invoking method %s#newInstance(Account, Context) for %s", ex.toString(), s, account.Xy), new Object[0]);
            throw new MessagingException("can not instantiate Sender for " + account.Xy);
        }
        return (a)invoke;
    }
    
    public static a f(final Context context, final Account account) {
        a a;
        synchronized (a.class) {
            final Context applicationContext = context.getApplicationContext();
            a = a(applicationContext, 2131099674, account);
            if (a == null) {
                a = a(applicationContext, 2131099673, account);
            }
            if (a == null) {
                throw new MessagingException("Cannot find sender for account " + account.Xy);
            }
        }
        // monitorexit(a.class)
        return a;
    }
    
    public abstract void close();
    
    public abstract void o(final long p0);
    
    public abstract void open();
}
