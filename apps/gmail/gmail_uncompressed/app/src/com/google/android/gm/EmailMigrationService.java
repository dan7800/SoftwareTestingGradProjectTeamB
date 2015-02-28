package com.google.android.gm;

import android.app.*;
import android.net.*;
import java.util.*;
import com.android.mail.utils.*;
import com.android.mail.a.*;
import android.database.*;
import java.io.*;
import android.content.pm.*;
import com.android.emailcommon.provider.*;
import com.android.email.service.*;
import android.os.*;
import android.accounts.*;
import com.android.mail.providers.*;
import android.content.*;

public class EmailMigrationService extends IntentService
{
    public static final String[] aXA;
    public static final String[] aXB;
    public static final String[] aXC;
    public static final String[] aXD;
    private static final String aXq;
    private String aXr;
    private String aXs;
    private String aXt;
    private String aXu;
    private Uri aXv;
    private Uri aXw;
    private HashSet<Long> aXx;
    private ArrayList<Account> aXy;
    private int aXz;
    private ContentResolver mContentResolver;
    
    static {
        aXq = "content://" + EmailContent.AUTHORITY;
        aXA = new String[] { "_id", "displayName", "emailAddress", "syncKey", "syncLookback", "syncInterval", "hostAuthKeyRecv", "hostAuthKeySend", "flags", "senderName", "ringtoneUri", "protocolVersion", "securitySyncKey", "signature", "policyKey", "pingDuration" };
        aXB = new String[] { "_id", "protocol", "address", "port", "flags", "login", "password", "domain", "certAlias" };
        aXC = new String[] { "_id", "displayName", "timeStamp", "subject", "flagRead", "flagLoaded", "flagFavorite", "flagAttachment", "flags", "syncServerId", "clientId", "messageId", "mailboxKey", "accountKey", "fromList", "toList", "ccList", "bccList", "replyToList", "syncServerTimeStamp", "meetingInfo", "snippet", "protocolSearchInfo", "threadTopic", "syncData", "flagSeen" };
        aXD = new String[] { "_id", "messageKey", "htmlContent", "textContent", "sourceMessageKey", "quotedTextStartPos" };
    }
    
    public EmailMigrationService() {
        super("EmailMigrationService");
        this.aXx = new HashSet<Long>();
        this.aXy = new ArrayList<Account>();
    }
    
    private void CG() {
        for (final Account account : this.aXy) {
            if (!this.o(account)) {
                E.c("EmailMigration", "Could not register Gmail Account: %d with the AccountManager", account.getId());
                this.aXx.remove(account.getId());
            }
            else {
                E.c("EmailMigration", "Registered Gmail Account: %d with the AccountManager", account.getId());
            }
        }
    }
    
    private void CH() {
        E.c("EmailMigration", "Deleting migrated Email Accounts.", new Object[0]);
        if (ag.Bh()) {
            E.c("EmailMigration", "Delete after migration is Enabled", new Object[0]);
            final Uri parse = Uri.parse(this.aXr + "/account");
            for (final Long n : this.aXx) {
                E.c("EmailMigration", "Deleting Email account, id: %d", n);
                this.mContentResolver.delete(ContentUris.withAppendedId(parse, (long)n), (String)null, (String[])null);
            }
        }
        else {
            E.c("EmailMigration", "Delete after migration is Disabled for pre L device", new Object[0]);
        }
    }
    
    private static void CI() {
        a.oq().a("email_migration", "migration_done", null, 0L);
        c.os().a("migration_timer", true, "email_migration", "migration_duration", null);
    }
    
    private e X(final long n) {
        E.c("EmailMigration", "Getting Body for Message id: %d", n);
        final Uri parse = Uri.parse(this.aXr + "/body");
        String[] array;
        if (this.aXz < 5) {
            E.c("EmailMigration", "Querying Body using pre-L content projection.", new Object[0]);
            array = EmailMigrationService.aXD;
        }
        else {
            E.c("EmailMigration", "Querying Body using latest Message content projection.", new Object[0]);
            array = e.XO;
        }
        E.c("EmailMigration", "Starting Body Query for Message: %d", n);
        final Cursor query = this.mContentResolver.query(parse, array, "messageKey =?", new String[] { Long.toString(n) }, (String)null);
        E.c("EmailMigration", "Done Body Query for Message: %d", n);
        if (query == null) {
            E.c("EmailMigration", "No Body for Message id: %d", n);
            return null;
        }
        final e e = new e();
        try {
            if (!query.moveToNext()) {
                E.c("EmailMigration", "Empty Cursor finding Body for Message id: %d", n);
                return null;
            }
            if (this.aXz < 5) {
                e.XU = com.android.emailcommon.provider.e.CONTENT_URI;
                e.Yq = query.getLong(1);
                e.Yy = query.getString(2);
                e.Yz = query.getString(3);
                e.YB = query.getLong(4);
                e.YA = query.getInt(5);
            }
            else {
                e.a((Context)this, query);
            }
            query.close();
            E.c("EmailMigration", "Done getting Body for Message id: %d", n);
            return e;
        }
        catch (IllegalStateException ex) {
            E.e("EmailMigration", ex, "Error - Exception thrown retrieving body for Message id: %d", n);
            return null;
        }
        finally {
            query.close();
        }
    }
    
    private void a(final long lq, final long n, final long yr) {
        E.c("EmailMigration", "Migrating messages for Email Account id: %d, Mailbox id: %d", lq, n);
        final Uri parse = Uri.parse(this.aXr + "/message");
        String[] array;
        if (this.aXz < 2) {
            E.c("EmailMigration", "Querying Message using pre-KKMR1 content projection.", new Object[0]);
            array = EmailMigrationService.aXC;
        }
        else {
            E.c("EmailMigration", "Querying Message using latest Message content projection.", new Object[0]);
            array = g.XO;
        }
        final Cursor query = this.mContentResolver.query(parse, array, "mailboxKey =?", new String[] { Long.toString(n) }, (String)null);
        if (query == null) {
            E.c("EmailMigration", "No messages for Email Mailbox id: %d", n);
            return;
        }
        g g = null;
        boolean vs;
        boolean ym;
        boolean vt;
        boolean yn;
        e x;
        ArrayList zf;
        final EmailContent$Attachment emailContent$Attachment;
        Uri parse2;
        InputStream openInputStream;
        Label_0278_Outer:Label_0301_Outer:Label_0337_Outer:Label_0360_Outer:Label_0611_Outer:Label_0746_Outer:
        while (true) {
            while (true) {
            Label_0892:
                while (true) {
                    Label_0882: {
                        while (true) {
                        Label_0876:
                            while (true) {
                            Label_0870:
                                while (true) {
                                Label_0864:
                                    while (true) {
                                        Label_0858: {
                                            try {
                                                while (query.moveToNext()) {
                                                    g = new g();
                                                    if (this.aXz >= 2) {
                                                        break Label_0882;
                                                    }
                                                    g.XU = com.android.emailcommon.provider.g.CONTENT_URI;
                                                    g.Ln = query.getLong(0);
                                                    g.Xy = query.getString(1);
                                                    g.YK = query.getLong(2);
                                                    g.YL = query.getString(3);
                                                    if (query.getInt(4) != 1) {
                                                        break Label_0858;
                                                    }
                                                    vs = true;
                                                    g.Vs = vs;
                                                    if (query.getInt(25) != 1) {
                                                        break Label_0864;
                                                    }
                                                    ym = true;
                                                    g.YM = ym;
                                                    g.Vu = query.getInt(5);
                                                    if (query.getInt(6) != 1) {
                                                        break Label_0870;
                                                    }
                                                    vt = true;
                                                    g.Vt = vt;
                                                    if (query.getInt(7) != 1) {
                                                        break Label_0876;
                                                    }
                                                    yn = true;
                                                    g.YN = yn;
                                                    g.dM = query.getInt(8);
                                                    g.Vv = query.getString(9);
                                                    g.YO = query.getLong(19);
                                                    g.YP = query.getInt(10);
                                                    g.YQ = query.getString(11);
                                                    g.YR = query.getLong(12);
                                                    g.YS = 0L;
                                                    g.Lq = query.getLong(13);
                                                    g.YT = query.getString(14);
                                                    g.YU = query.getString(15);
                                                    g.YV = query.getString(16);
                                                    g.YW = query.getString(17);
                                                    g.YX = query.getString(18);
                                                    g.YY = query.getString(20);
                                                    g.YZ = query.getString(21);
                                                    g.Za = query.getString(22);
                                                    g.Zb = query.getString(23);
                                                    g.Zc = query.getString(24);
                                                    g.Lq = lq;
                                                    g.YR = yr;
                                                    x = this.X(g.Ln);
                                                    if (x != null) {
                                                        g.Ze = x.Yy;
                                                        g.Zd = x.Yz;
                                                        g.YB = x.YB;
                                                        g.YA = x.YA;
                                                    }
                                                    zf = new ArrayList<EmailContent$Attachment>();
                                                    this.a(zf, g.Ln, lq);
                                                    if (zf.size() > 0) {
                                                        g.Zf = (ArrayList<EmailContent$Attachment>)zf;
                                                    }
                                                    g.Ln = -1L;
                                                    g.ac((Context)this);
                                                    if (zf.size() <= 0) {
                                                        continue Label_0278_Outer;
                                                    }
                                                    for (final EmailContent$Attachment emailContent$Attachment : zf) {
                                                        E.c("EmailMigration", "Migrating Attachment id: %d for Email Account id: %d", emailContent$Attachment.Ln, lq);
                                                        if (emailContent$Attachment.Yv == 3) {
                                                            break Label_0892;
                                                        }
                                                        E.c("EmailMigration", "This Attachment was not downloaded, nothing to migrate id: %d", emailContent$Attachment.Ln);
                                                    }
                                                }
                                                break;
                                            }
                                            finally {
                                                query.close();
                                            }
                                        }
                                        vs = false;
                                        continue Label_0301_Outer;
                                    }
                                    ym = false;
                                    continue Label_0337_Outer;
                                }
                                vt = false;
                                continue Label_0360_Outer;
                            }
                            yn = false;
                            continue Label_0611_Outer;
                        }
                    }
                    g.b(query);
                    continue Label_0746_Outer;
                }
                parse2 = Uri.parse(emailContent$Attachment.lL());
                openInputStream = null;
                try {
                    if (emailContent$Attachment.Yw == 1) {
                        emailContent$Attachment.Yw = 0;
                    }
                    openInputStream = this.mContentResolver.openInputStream(parse2);
                    if (openInputStream == null) {
                        E.f("EmailMigration", "Error getting an input stream to the Attachment file.", new Object[0]);
                        if (openInputStream != null) {
                            try {
                                openInputStream.close();
                                continue;
                            }
                            catch (IOException ex) {
                                E.e("EmailMigration", ex, "Error closing photo file stream", new Object[0]);
                                continue;
                            }
                            continue;
                        }
                        continue;
                    }
                    else {
                        com.android.emailcommon.b.a.a((Context)this, openInputStream, emailContent$Attachment);
                        Label_1000: {
                            if (openInputStream == null) {
                                break Label_1000;
                            }
                            try {
                                openInputStream.close();
                                E.c("EmailMigration", "Done migrating Attachment id: %d for Email Account id: %d", emailContent$Attachment.Ln, lq);
                            }
                            catch (IOException ex2) {
                                E.e("EmailMigration", ex2, "Error closing photo file stream", new Object[0]);
                            }
                        }
                    }
                }
                catch (FileNotFoundException ex3) {
                    E.e("EmailMigration", ex3, "Error - the Attachment file does not exist!", new Object[0]);
                    if (openInputStream != null) {
                        try {
                            openInputStream.close();
                            continue;
                        }
                        catch (IOException ex4) {
                            E.e("EmailMigration", ex4, "Error closing photo file stream", new Object[0]);
                            continue;
                        }
                        continue;
                    }
                    continue;
                }
                finally {
                    Label_1122: {
                        if (openInputStream == null) {
                            break Label_1122;
                        }
                        try {
                            openInputStream.close();
                        }
                        catch (IOException ex5) {
                            E.e("EmailMigration", ex5, "Error closing photo file stream", new Object[0]);
                        }
                    }
                }
                break;
            }
            break;
        }
        query.close();
        E.c("EmailMigration", "Done migrating messages for Email Account id: %d, Mailbox id: %d", lq, n);
    }
    
    private void a(final ArrayList<EmailContent$Attachment> list, final long n, final long lq) {
        E.c("EmailMigration", "Getting Attachments for Message id: %d", n);
        final Cursor query = this.mContentResolver.query(Uri.parse(this.aXr + "/attachment"), EmailContent$Attachment.XO, "messageKey =?", new String[] { Long.toString(n) }, (String)null);
        if (query == null) {
            E.c("EmailMigration", "No Attachments for Message id: %d", n);
            return;
        }
        try {
            while (query.moveToNext()) {
                final EmailContent$Attachment emailContent$Attachment = new EmailContent$Attachment();
                emailContent$Attachment.b(query);
                emailContent$Attachment.Lq = lq;
                list.add(emailContent$Attachment);
            }
        }
        finally {
            query.close();
        }
        query.close();
        E.c("EmailMigration", "Done getting Attachments for Message id: %d", n);
    }
    
    private boolean a(final HostAuth hostAuth) {
        if (hostAuth == null) {
            return true;
        }
        final long zm = hostAuth.Zm;
        if (zm <= 0L) {
            return true;
        }
        final Cursor query = this.mContentResolver.query(ContentUris.withAppendedId(this.aXw, zm), com.android.emailcommon.provider.c.Lm, (String)null, (String[])null, (String)null);
        if (query == null) {
            E.f("EmailMigration", "Error finding Credential id: %d", zm);
            return false;
        }
        final Credential zn = new Credential();
        try {
            if (!query.moveToFirst()) {
                E.f("EmailMigration", "Error - finding Credential id: %d, empty cursor", zm);
                return false;
            }
            zn.b(query);
            query.close();
            hostAuth.Zn = zn;
            return true;
        }
        finally {
            query.close();
        }
    }
    
    private int aU(final Context context) {
        int versionCode;
        try {
            versionCode = context.getPackageManager().getPackageInfo(this.aXu, 0).versionCode;
            E.c(E.TAG, "versionCode: %d", versionCode);
            if (versionCode < 500058) {
                E.b("EmailMigration", "Working with unsupported version of the Email provider", new Object[0]);
                return 0;
            }
        }
        catch (PackageManager$NameNotFoundException ex) {
            E.e(E.TAG, (Throwable)ex, "Error finding the version of the Email provider.....", new Object[0]);
            return 0;
        }
        if (versionCode < 500060) {
            E.b("EmailMigration", "Working with KK version of the Email provider", new Object[0]);
            return 1;
        }
        if (versionCode < 500064) {
            E.b("EmailMigration", "Working with KK MR1 version of the Email provider", new Object[0]);
            return 2;
        }
        if (versionCode < 6306090) {
            E.b("EmailMigration", "Working with KK MR2 version of the Email provider", new Object[0]);
            return 3;
        }
        if (versionCode < 7000000) {
            E.b("EmailMigration", "Working with Algol version of the Email provider", new Object[0]);
            return 4;
        }
        E.b("EmailMigration", "Working with L version of the Email provider", new Object[0]);
        return 5;
    }
    
    private HostAuth b(final Uri uri, final long n) {
        String[] array;
        if (this.aXz < 4) {
            E.c("EmailMigration", "Querying HostAuth using pre-Algol content projection.", new Object[0]);
            array = EmailMigrationService.aXB;
        }
        else {
            E.c("EmailMigration", "Querying HostAuth using latest content projection.", new Object[0]);
            array = HostAuth.XO;
        }
        final Cursor query = this.mContentResolver.query(ContentUris.withAppendedId(uri, n), array, (String)null, (String[])null, (String)null);
        if (query == null) {
            E.f("EmailMigration", "Error finding HostAuth id: %d", n);
            return null;
        }
        final HostAuth hostAuth = new HostAuth();
        try {
            if (!query.moveToFirst()) {
                E.f("EmailMigration", "Error - finding HostAuth id: %d, empty cursor", n);
                return null;
            }
            if (this.aXz < 4) {
                E.c("EmailMigration", "Restoring HostAuth using pre-Algol content projection.", new Object[0]);
                hostAuth.XU = HostAuth.CONTENT_URI;
                hostAuth.Ln = query.getLong(0);
                hostAuth.Zh = query.getString(1);
                hostAuth.WA = query.getString(2);
                hostAuth.Zi = query.getInt(3);
                hostAuth.dM = query.getInt(4);
                hostAuth.Zj = query.getString(5);
                hostAuth.Qd = query.getString(6);
                hostAuth.GZ = query.getString(7);
                hostAuth.Zk = query.getString(8);
                hostAuth.Zm = -1L;
            }
            else {
                E.c("EmailMigration", "Restoring HostAuth using full content projection.", new Object[0]);
                hostAuth.b(query);
            }
            return hostAuth;
        }
        finally {
            query.close();
        }
    }
    
    private void b(final long n, final long lq, final boolean b) {
        E.c("EmailMigration", "Migrating data from Email Account id: %d, to Gmail Account id: %d", n, lq);
        final Cursor query = this.mContentResolver.query(Uri.parse(this.aXr + "/mailbox"), Mailbox.XO, "accountKey=?", new String[] { Long.toString(n) }, (String)null);
        try {
            while (query.moveToNext()) {
                final Mailbox mailbox = new Mailbox();
                mailbox.b(query);
                mailbox.Lq = lq;
                final long ln = mailbox.Ln;
                mailbox.Ln = -1L;
                mailbox.Zx = 8;
                mailbox.ac((Context)this);
                final long ln2 = mailbox.Ln;
                E.c("EmailMigration", "Migrated Email Mailbox id: %d, to Gmail Mailbox id: %d for %s", ln, ln2, mailbox.Vv);
                if (b) {
                    this.a(lq, ln, ln2);
                }
            }
        }
        finally {
            query.close();
        }
        query.close();
        E.c("EmailMigration", "Data migrated from Email Account id: %d, to Gmail Account id: %d", n, lq);
    }
    
    private ArrayList<Account> bQ(final boolean b) {
        final Object[] array = { null };
        String s;
        if (b) {
            s = "true";
        }
        else {
            s = "false";
        }
        array[0] = s;
        E.c("EmailMigration", "Generating list of Accounts needing migration, migrateExchange: %s", array);
        final ArrayList<Account> list = new ArrayList<Account>();
        final Uri parse = Uri.parse(this.aXr + "/account");
        String[] array2;
        if (this.aXz < 3) {
            E.c("EmailMigration", "Querying Account using pre-KKMR2 content projection.", new Object[0]);
            array2 = EmailMigrationService.aXA;
        }
        else {
            E.c("EmailMigration", "Querying Account using latest content projection.", new Object[0]);
            array2 = Account.XO;
        }
        final Cursor query = this.mContentResolver.query(parse, array2, (String)null, (String[])null, (String)null);
        if (query == null) {
            E.c("EmailMigration", "No Accounts to migrate", new Object[0]);
            return list;
        }
        E.c("EmailMigration", "Found %d Accounts that could be migrated.", query.getCount());
        Account account = null;
        long xc;
        HostAuth b2 = null;
        Account account2;
        long xd;
        HostAuth b3;
        boolean b4;
        Label_0437_Outer:Label_0547_Outer:Label_0724_Outer:
        while (true) {
            while (true) {
                Label_1038: {
                    Label_0910: {
                    Label_0891:
                        while (true) {
                            Label_0865: {
                            Label_0780:
                                while (true) {
                                    Label_0757: {
                                        try {
                                            if (!query.moveToNext()) {
                                                break;
                                            }
                                            account = new Account();
                                            if (this.aXz >= 3) {
                                                break Label_0757;
                                            }
                                            E.c("EmailMigration", "Restoring Account with pre-KKMR2 content projection.", new Object[0]);
                                            account.Ln = query.getLong(0);
                                            account.XU = Account.CONTENT_URI;
                                            account.Xy = query.getString(1);
                                            account.NP = query.getString(2);
                                            account.Xz = query.getString(3);
                                            account.XA = query.getInt(4);
                                            account.XB = query.getInt(5);
                                            account.XC = query.getLong(6);
                                            account.XD = query.getLong(7);
                                            account.dM = query.getInt(8);
                                            account.XE = query.getString(9);
                                            account.XG = query.getString(11);
                                            account.XH = query.getString(12);
                                            account.XI = query.getString(13);
                                            account.XJ = query.getLong(14);
                                            account.XK = query.getLong(15);
                                            E.c("EmailMigration", "Restored Account with id: %d, HostAuthSend id: %d, HostAuthRecv id: %d", account.getId(), account.XD, account.XC);
                                            xc = account.XC;
                                            if (xc <= 0L) {
                                                break Label_0865;
                                            }
                                            b2 = this.b(this.aXv, xc);
                                            if (b2 != null) {
                                                break Label_0780;
                                            }
                                            E.f("EmailMigration", "Error restoring HostAuthRecv with id: %d", xc);
                                            if (account.XL == null) {
                                                break Label_0891;
                                            }
                                            E.c("EmailMigration", "HostAuthRecv Credential id: %d", account.XL.Zm);
                                            this.a(account.XL);
                                            if (account.XL.Zm > 0L && account.XL.Zn == null) {
                                                E.f("EmailMigration", "Error loading the OAuth Credentials for HostAuthRecv", new Object[0]);
                                            }
                                            if (account.XM == null) {
                                                break Label_0910;
                                            }
                                            E.c("EmailMigration", "HostAuthSend Credential id: %d", account.XM.Zm);
                                            this.a(account.XM);
                                            if (account.XM.Zm > 0L && account.XM.Zn == null) {
                                                E.f("EmailMigration", "Error loading the OAuth Credentials for HostAuthSend", new Object[0]);
                                            }
                                            break Label_1038;
                                            while (true) {
                                                E.f("EmailMigration", "Error restoring an Account, skipping.", new Object[0]);
                                                continue Label_0437_Outer;
                                                continue Label_0724_Outer;
                                            }
                                        }
                                        // iftrue(Label_0926:, account2 != null)
                                        finally {
                                            query.close();
                                        }
                                    }
                                    E.c("EmailMigration", "Restoring Account with latest content projection.", new Object[0]);
                                    account.b(query);
                                    continue Label_0547_Outer;
                                }
                                account.XL = b2;
                                xd = account.XD;
                                if (xd <= 0L) {
                                    continue Label_0724_Outer;
                                }
                                b3 = this.b(this.aXv, xd);
                                if (b3 == null && !account.XL.Zh.equals(this.aXs)) {
                                    E.f("EmailMigration", "Error restoring HostAuthSend with id: %d", xd);
                                    continue Label_0724_Outer;
                                }
                                account.XM = b3;
                                continue Label_0724_Outer;
                            }
                            E.c("EmailMigration", "HostAuthRecv not defined.", new Object[0]);
                            continue Label_0724_Outer;
                        }
                        E.f("EmailMigration", "Error loading the HostAuthRecv for this Account", new Object[0]);
                        account2 = null;
                        continue;
                    }
                    E.e("EmailMigration", "Could not load the HostAuthSend for this Account (Exchange?)", new Object[0]);
                    break Label_1038;
                    Label_0926: {
                        b4 = true;
                    }
                    if (!b && account2.XL.Zh.equals(this.aXs)) {
                        E.c("EmailMigration", "Not migrating an Exchange Account, id: %d", account2.getId());
                        b4 = false;
                    }
                    if (b4) {
                        E.c("EmailMigration", "Adding Account to migrate list, id: %d", account2.getId());
                        list.add(account2);
                        continue Label_0437_Outer;
                    }
                    continue Label_0437_Outer;
                }
                account2 = account;
                continue;
            }
        }
        query.close();
        return list;
    }
    
    private boolean k(final ArrayList<Account> list) {
        E.c("EmailMigration", "Migrating accounts", new Object[0]);
        final Iterator<Account> iterator = list.iterator();
        boolean b = false;
        while (iterator.hasNext()) {
            final Account account = iterator.next();
            final long id = account.getId();
            boolean b2;
            if (!this.p(account)) {
                a.oq().a("email_migration", "protocol", account.XL.Zh, 0L);
                a.oq().a("email_migration", "domain_name", com.google.android.gm.c.c.fu(com.google.android.gm.c.c.ft(account.lw())), 0L);
                E.c("EmailMigration", "Migrating Account, id: %d", account.getId());
                account.Ln = -1L;
                account.XH = null;
                account.Xz = null;
                int n;
                if (account.ac((Context)this) == null) {
                    E.f("EmailMigration", "Error saving Account after migration, id: %d", account.getId());
                    n = 0;
                }
                else {
                    n = 1;
                }
                if (n == 0) {
                    E.f("EmailMigration", "Could not migrate Email account, id: %d", id);
                    a.oq().a("email_migration", "migration_failure", null, 0L);
                    continue;
                }
                if (this.aXt.equals(account.XL.Zh)) {
                    E.c("EmailMigration", "Migrating account data for Email POP account, id: %d", id);
                    this.b(id, account.getId(), true);
                    a.oq().a("email_migration", "feature", "pop_delete", account.lA());
                }
                else if (this.aXs.equals(account.XL.Zh)) {
                    E.c("EmailMigration", "Migrating mailbox data for Email Exchange account, id: %d", id);
                    this.b(id, account.getId(), false);
                }
                b2 = true;
                this.aXy.add(account);
            }
            else {
                E.c("EmailMigration", "Email account id: %d, already exists, skipping", id);
                b2 = b;
            }
            this.aXx.add(id);
            b = b2;
        }
        return b;
    }
    
    private boolean o(final Account account) {
        E.c("EmailMigration", "Registering migrated Account with the AccountManager.", new Object[0]);
        boolean b;
        if (account.aa((Context)this).equals(this.aXs)) {
            E.c("EmailMigration", "This is an Exchange Account, enable calendar and contacts sync.", new Object[0]);
            b = true;
        }
        else {
            b = false;
        }
        final AccountManagerFuture<Bundle> a = n.a((Context)this, account, true, b, b, account.XL, null);
        while (true) {
            try {
                a.getResult();
                final int n = 1;
                if (n == 0) {
                    E.f("EmailMigration", "Failed to add Account to the AccountManager, id: %d", account.getId());
                    return false;
                }
            }
            catch (OperationCanceledException ex) {
                E.e("EmailMigration", (Throwable)ex, "Error - addAccount was canceled", new Object[0]);
                final int n = 0;
                continue;
            }
            catch (IOException ex2) {
                E.e("EmailMigration", ex2, "Error - addAccount failed: " + ex2, new Object[0]);
                final int n = 0;
                continue;
            }
            catch (AuthenticatorException ex3) {
                E.e("EmailMigration", (Throwable)ex3, "Error - addAccount failed: " + ex3, new Object[0]);
                final int n = 0;
                continue;
            }
            break;
        }
        E.c("EmailMigration", "Successfully added Account to AccountManager, id: %d", account.getId());
        return true;
    }
    
    private boolean p(final Account account) {
        E.c("EmailMigration", "Checking to see if Account already exists id: %d", account.getId());
        final String lw = account.lw();
        final Cursor query = this.mContentResolver.query(t.vh(), com.android.mail.providers.E.aCr, (String)null, (String[])null, (String)null);
        if (query == null) {
            return false;
        }
        try {
            while (query.moveToNext()) {
                com.android.mail.providers.Account.ue();
                if (lw.equals(com.android.mail.providers.c.j(query).lw())) {
                    E.c("EmailMigration", "Found a match, we don't need to migrate this Account.", new Object[0]);
                    return true;
                }
            }
            query.close();
            E.c("EmailMigration", "Could not find a match, we can migrate this Account.", new Object[0]);
            return false;
        }
        finally {
            query.close();
        }
    }
    
    protected void onHandleIntent(final Intent p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_0        
        //     2: invokevirtual   com/google/android/gm/EmailMigrationService.getContentResolver:()Landroid/content/ContentResolver;
        //     5: putfield        com/google/android/gm/EmailMigrationService.mContentResolver:Landroid/content/ContentResolver;
        //     8: aload_0        
        //     9: aload_1        
        //    10: ldc_w           "eas_protocol"
        //    13: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //    16: putfield        com/google/android/gm/EmailMigrationService.aXs:Ljava/lang/String;
        //    19: aload_0        
        //    20: aload_1        
        //    21: ldc_w           "pop_protocol"
        //    24: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //    27: putfield        com/google/android/gm/EmailMigrationService.aXt:Ljava/lang/String;
        //    30: aload_0        
        //    31: aload_1        
        //    32: ldc_w           "old_email_package_name"
        //    35: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //    38: putfield        com/google/android/gm/EmailMigrationService.aXu:Ljava/lang/String;
        //    41: aload_0        
        //    42: aload_1        
        //    43: ldc_w           "migration_src_base_authority"
        //    46: invokevirtual   android/content/Intent.getStringExtra:(Ljava/lang/String;)Ljava/lang/String;
        //    49: putfield        com/google/android/gm/EmailMigrationService.aXr:Ljava/lang/String;
        //    52: aload_0        
        //    53: new             Ljava/lang/StringBuilder;
        //    56: dup            
        //    57: invokespecial   java/lang/StringBuilder.<init>:()V
        //    60: aload_0        
        //    61: getfield        com/google/android/gm/EmailMigrationService.aXr:Ljava/lang/String;
        //    64: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    67: ldc_w           "/hostauth"
        //    70: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    73: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    76: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //    79: putfield        com/google/android/gm/EmailMigrationService.aXv:Landroid/net/Uri;
        //    82: aload_0        
        //    83: new             Ljava/lang/StringBuilder;
        //    86: dup            
        //    87: invokespecial   java/lang/StringBuilder.<init>:()V
        //    90: aload_0        
        //    91: getfield        com/google/android/gm/EmailMigrationService.aXr:Ljava/lang/String;
        //    94: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    97: ldc_w           "/credential"
        //   100: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   103: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   106: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   109: putfield        com/google/android/gm/EmailMigrationService.aXw:Landroid/net/Uri;
        //   112: aload_0        
        //   113: aload_0        
        //   114: aload_0        
        //   115: invokespecial   com/google/android/gm/EmailMigrationService.aU:(Landroid/content/Context;)I
        //   118: putfield        com/google/android/gm/EmailMigrationService.aXz:I
        //   121: aload_0        
        //   122: invokestatic    com/android/emailcommon/provider/EmailContent.g:(Landroid/content/Context;)V
        //   125: aload_0        
        //   126: getfield        com/google/android/gm/EmailMigrationService.aXz:I
        //   129: ifne            146
        //   132: ldc             "EmailMigration"
        //   134: ldc_w           "We do not support migrating this version of the Email provider."
        //   137: iconst_0       
        //   138: anewarray       Ljava/lang/Object;
        //   141: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   144: pop            
        //   145: return         
        //   146: aload_0        
        //   147: getfield        com/google/android/gm/EmailMigrationService.aXr:Ljava/lang/String;
        //   150: getstatic       com/google/android/gm/EmailMigrationService.aXq:Ljava/lang/String;
        //   153: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   156: ifeq            173
        //   159: ldc             "EmailMigration"
        //   161: ldc_w           "Nothing to migrate, src & dest URIs are the same."
        //   164: iconst_0       
        //   165: anewarray       Ljava/lang/Object;
        //   168: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   171: pop            
        //   172: return         
        //   173: aload_0        
        //   174: invokestatic    com/android/mail/i/g.ao:(Landroid/content/Context;)Lcom/android/mail/i/g;
        //   177: astore_2       
        //   178: aload_2        
        //   179: invokevirtual   com/android/mail/i/g.tT:()I
        //   182: istore_3       
        //   183: iload_3        
        //   184: iconst_2       
        //   185: if_icmpne       202
        //   188: ldc             "EmailMigration"
        //   190: ldc_w           "Migration already completed"
        //   193: iconst_0       
        //   194: anewarray       Ljava/lang/Object;
        //   197: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   200: pop            
        //   201: return         
        //   202: iload_3        
        //   203: iconst_1       
        //   204: if_icmpne       278
        //   207: iconst_1       
        //   208: istore          4
        //   210: aload_0        
        //   211: getfield        com/google/android/gm/EmailMigrationService.aXz:I
        //   214: iconst_5       
        //   215: if_icmpne       284
        //   218: iconst_1       
        //   219: istore          5
        //   221: iload           5
        //   223: ifeq            290
        //   226: aload_0        
        //   227: aload_0        
        //   228: getfield        com/google/android/gm/EmailMigrationService.aXs:Ljava/lang/String;
        //   231: invokestatic    com/android/email/service/n.j:(Landroid/content/Context;Ljava/lang/String;)Z
        //   234: istore          7
        //   236: iload           7
        //   238: ifne            254
        //   241: ldc             "EmailMigration"
        //   243: ldc_w           "No Exchange migration because Exchange is disabled."
        //   246: iconst_0       
        //   247: anewarray       Ljava/lang/Object;
        //   250: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   253: pop            
        //   254: iload           4
        //   256: ifeq            309
        //   259: iload           7
        //   261: ifne            309
        //   264: ldc             "EmailMigration"
        //   266: ldc_w           "Already migrated imap/pop, can't migrate exchange"
        //   269: iconst_0       
        //   270: anewarray       Ljava/lang/Object;
        //   273: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   276: pop            
        //   277: return         
        //   278: iconst_0       
        //   279: istore          4
        //   281: goto            210
        //   284: iconst_0       
        //   285: istore          5
        //   287: goto            221
        //   290: ldc             "EmailMigration"
        //   292: ldc_w           "No Exchange migration, not the right Email provider version."
        //   295: iconst_0       
        //   296: anewarray       Ljava/lang/Object;
        //   299: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   302: pop            
        //   303: iconst_0       
        //   304: istore          7
        //   306: goto            254
        //   309: iload           7
        //   311: ifeq            353
        //   314: iconst_2       
        //   315: istore          8
        //   317: aload_0        
        //   318: iload           7
        //   320: invokespecial   com/google/android/gm/EmailMigrationService.bQ:(Z)Ljava/util/ArrayList;
        //   323: astore          9
        //   325: aload           9
        //   327: invokevirtual   java/util/ArrayList.size:()I
        //   330: ifgt            359
        //   333: ldc             "EmailMigration"
        //   335: ldc_w           "There is nothing to migrate."
        //   338: iconst_0       
        //   339: anewarray       Ljava/lang/Object;
        //   342: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   345: pop            
        //   346: aload_2        
        //   347: iload           8
        //   349: invokevirtual   com/android/mail/i/g.cw:(I)V
        //   352: return         
        //   353: iconst_1       
        //   354: istore          8
        //   356: goto            317
        //   359: invokestatic    com/android/mail/a/c.os:()Lcom/android/mail/a/c;
        //   362: ldc_w           "migration_timer"
        //   365: invokevirtual   com/android/mail/a/c.bb:(Ljava/lang/String;)V
        //   368: new             Landroid/support/v4/app/ab;
        //   371: dup            
        //   372: aload_0        
        //   373: invokespecial   android/support/v4/app/ab.<init>:(Landroid/content/Context;)V
        //   376: aload_0        
        //   377: invokevirtual   com/google/android/gm/EmailMigrationService.getResources:()Landroid/content/res/Resources;
        //   380: ldc_w           2131297244
        //   383: invokevirtual   android/content/res/Resources.getString:(I)Ljava/lang/String;
        //   386: invokevirtual   android/support/v4/app/ab.b:(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;
        //   389: aload_0        
        //   390: invokevirtual   com/google/android/gm/EmailMigrationService.getResources:()Landroid/content/res/Resources;
        //   393: ldc_w           2131297245
        //   396: invokevirtual   android/content/res/Resources.getString:(I)Ljava/lang/String;
        //   399: invokevirtual   android/support/v4/app/ab.c:(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;
        //   402: ldc_w           2130903041
        //   405: invokevirtual   android/support/v4/app/ab.h:(I)Landroid/support/v4/app/ab;
        //   408: invokestatic    java/lang/System.currentTimeMillis:()J
        //   411: invokevirtual   android/support/v4/app/ab.a:(J)Landroid/support/v4/app/ab;
        //   414: invokevirtual   android/support/v4/app/ab.build:()Landroid/app/Notification;
        //   417: astore          13
        //   419: aload           13
        //   421: bipush          32
        //   423: aload           13
        //   425: getfield        android/app/Notification.flags:I
        //   428: ior            
        //   429: putfield        android/app/Notification.flags:I
        //   432: aload_0        
        //   433: iconst_m1      
        //   434: aload           13
        //   436: invokevirtual   com/google/android/gm/EmailMigrationService.startForeground:(ILandroid/app/Notification;)V
        //   439: invokestatic    com/android/emailcommon/b/m.mh:()V
        //   442: aload_0        
        //   443: aload           9
        //   445: invokespecial   com/google/android/gm/EmailMigrationService.k:(Ljava/util/ArrayList;)Z
        //   448: istore          14
        //   450: iload           14
        //   452: istore          11
        //   454: aload_0        
        //   455: invokespecial   com/google/android/gm/EmailMigrationService.CG:()V
        //   458: aload_0        
        //   459: invokespecial   com/google/android/gm/EmailMigrationService.CH:()V
        //   462: aload_2        
        //   463: iload           8
        //   465: invokevirtual   com/android/mail/i/g.cw:(I)V
        //   468: invokestatic    com/android/emailcommon/b/m.mi:()V
        //   471: iload           11
        //   473: ifeq            496
        //   476: invokestatic    com/google/android/gm/EmailMigrationService.CI:()V
        //   479: ldc             "EmailMigration"
        //   481: ldc_w           "Forcing account reconcile after migration"
        //   484: iconst_0       
        //   485: anewarray       Ljava/lang/Object;
        //   488: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   491: pop            
        //   492: aload_0        
        //   493: invokestatic    com/android/email/provider/b.F:(Landroid/content/Context;)V
        //   496: aload_0        
        //   497: iconst_1       
        //   498: invokevirtual   com/google/android/gm/EmailMigrationService.stopForeground:(Z)V
        //   501: return         
        //   502: astore          10
        //   504: iconst_0       
        //   505: istore          11
        //   507: invokestatic    com/android/emailcommon/b/m.mi:()V
        //   510: iload           11
        //   512: ifeq            535
        //   515: invokestatic    com/google/android/gm/EmailMigrationService.CI:()V
        //   518: ldc             "EmailMigration"
        //   520: ldc_w           "Forcing account reconcile after migration"
        //   523: iconst_0       
        //   524: anewarray       Ljava/lang/Object;
        //   527: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   530: pop            
        //   531: aload_0        
        //   532: invokestatic    com/android/email/provider/b.F:(Landroid/content/Context;)V
        //   535: aload_0        
        //   536: iconst_1       
        //   537: invokevirtual   com/google/android/gm/EmailMigrationService.stopForeground:(Z)V
        //   540: aload           10
        //   542: athrow         
        //   543: astore          10
        //   545: goto            507
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  368    450    502    507    Any
        //  454    468    543    548    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0496:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
}
