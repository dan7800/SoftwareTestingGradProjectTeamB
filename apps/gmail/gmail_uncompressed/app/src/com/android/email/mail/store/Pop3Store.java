package com.android.email.mail.store;

import com.android.email.mail.*;
import java.util.*;
import android.content.*;
import com.android.emailcommon.provider.*;
import android.os.*;
import com.android.emailcommon.mail.*;

public class Pop3Store extends b
{
    private static boolean QH;
    private static boolean QI;
    private static final Flag[] Qv;
    private final HashMap<String, Folder> QJ;
    private final Message[] QK;
    
    static {
        Pop3Store.QH = false;
        Pop3Store.QI = false;
        Qv = new Flag[] { Flag.WP };
    }
    
    private Pop3Store(final Context mContext, final Account ml) {
        this.QJ = new HashMap<String, Folder>();
        this.QK = new Message[1];
        this.mContext = mContext;
        this.Ml = ml;
        final HostAuth z = ml.Z(mContext);
        this.Qb = new com.android.email.mail.transport.b(mContext, "POP3", z);
        final String[] lq = z.lQ();
        this.Qc = lq[0];
        this.Qd = lq[1];
    }
    
    public static b newInstance(final Account account, final Context context) {
        return new Pop3Store(context, account);
    }
    
    @Override
    public final Folder[] iK() {
        Mailbox mailbox = Mailbox.d(this.mContext, this.Ml.Ln, 0);
        if (mailbox == null) {
            mailbox = Mailbox.b(this.mContext, this.Ml.Ln, 0);
        }
        if (mailbox.lF()) {
            mailbox.a(this.mContext, mailbox.lB());
        }
        else {
            mailbox.ac(this.mContext);
        }
        return new Folder[] { this.y(mailbox.Vv) };
    }
    
    @Override
    public final Bundle iL() {
        final e e = new e(this, "INBOX");
        if (this.Qb.isOpen()) {
            e.iY();
        }
        try {
            e.a(Folder$OpenMode.Xg);
            return e.iL();
        }
        finally {
            e.iY();
        }
    }
    
    @Override
    public final Folder y(final String s) {
        Folder folder = this.QJ.get(s);
        if (folder == null) {
            folder = new e(this, s);
            this.QJ.put(folder.getName(), folder);
        }
        return folder;
    }
}
