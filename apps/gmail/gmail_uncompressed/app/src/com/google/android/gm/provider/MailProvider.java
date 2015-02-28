package com.google.android.gm.provider;

import android.net.*;
import android.util.*;
import java.security.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import android.text.*;
import android.accounts.*;
import java.io.*;
import com.google.android.gm.provider.uiprovider.*;
import java.util.*;
import android.os.*;
import android.content.*;
import com.google.common.collect.*;
import android.database.*;

public final class MailProvider extends ContentProvider implements OnAccountsUpdateListener
{
    private static final UriMatcher ajR;
    private static final Uri bkT;
    private static volatile MailProvider bkU;
    private static boolean bkY;
    private f bkV;
    private String bkW;
    private MailEngine bkX;
    private ContentResolver mContentResolver;
    private Handler mHandler;
    
    static {
        (ajR = new UriMatcher(-1)).addURI("gmail-ls", "accountquery/*", 24);
        MailProvider.ajR.addURI("gmail-ls", "*/conversations", 1);
        MailProvider.ajR.addURI("gmail-ls", "*/conversations/labels", 16);
        MailProvider.ajR.addURI("gmail-ls", "*/conversations/#/labels", 3);
        MailProvider.ajR.addURI("gmail-ls", "*/conversations/#/labels/*", 4);
        MailProvider.ajR.addURI("gmail-ls", "*/conversations/#/attachments", 21);
        MailProvider.ajR.addURI("gmail-ls", "*/conversations/#/messages", 5);
        MailProvider.ajR.addURI("gmail-ls", "*/messages", 6);
        MailProvider.ajR.addURI("gmail-ls", "*/messages/#", 7);
        MailProvider.ajR.addURI("gmail-ls", "*/messages/server/#", 8);
        MailProvider.ajR.addURI("gmail-ls", "*/messages/#/labels", 9);
        MailProvider.ajR.addURI("gmail-ls", "*/messages/#/labels/*", 10);
        MailProvider.ajR.addURI("gmail-ls", "*/messages/labels", 17);
        MailProvider.ajR.addURI("gmail-ls", "*/messages/#/attachments/*/*/*", 11);
        MailProvider.ajR.addURI("gmail-ls", "*/messages/#/attachments/*/*/*/download", 12);
        MailProvider.ajR.addURI("gmail-ls", "*/labels/lastTouched", 22);
        MailProvider.ajR.addURI("gmail-ls", "*/labels/*/#", 18);
        MailProvider.ajR.addURI("gmail-ls", "*/labels/*", 13);
        MailProvider.ajR.addURI("gmail-ls", "*/label/#", 19);
        MailProvider.ajR.addURI("gmail-ls", "*/settings", 14);
        MailProvider.ajR.addURI("gmail-ls", "*/unread/*", 15);
        MailProvider.ajR.addURI("gmail-ls", "*/status", 20);
        MailProvider.ajR.addURI("gmail-ls", "*/appdatasearch", 23);
        bkT = Uri.parse("content://gmail-ls/accountquery");
        MailProvider.bkY = false;
    }
    
    public MailProvider() {
        this.bkW = null;
    }
    
    private static Cursor F(final Uri uri) {
        final byte[] decode = Base64.decode((String)uri.getPathSegments().get(1), 0);
        byte[] j;
        try {
            j = z.j(decode);
            if (j == null) {
                E.f("Gmail", "Null decrypted bytes returned.  Returning null cursor", new Object[0]);
                return null;
            }
        }
        catch (GeneralSecurityException ex) {
            E.e("Gmail", ex, "Failure to decrypt account name.  Returning null cursor", new Object[0]);
            return null;
        }
        final String s = new String(j);
        final G g = new G(Gmail.bdW, 1);
        g.addRow((Object[])new String[] { s });
        return (Cursor)g;
    }
    
    static MailProvider Hg() {
        return MailProvider.bkU;
    }
    
    public static f Hh() {
        final MailProvider bkU = MailProvider.bkU;
        if (bkU != null) {
            return bkU.bkV;
        }
        return null;
    }
    
    private static long a(final MailEngine mailEngine, final long n, final ContentValues contentValues) {
        final ContentValues contentValues2 = new ContentValues(contentValues);
        final boolean booleanValue = contentValues2.getAsBoolean("save");
        contentValues2.remove("save");
        final long longValue = contentValues2.getAsLong("refMessageId");
        contentValues2.remove("refMessageId");
        return mailEngine.a(n, booleanValue, longValue, contentValues2, null);
    }
    
    private static aZ a(final MailEngine mailEngine, final Uri uri) {
        final long long1 = Long.parseLong(uri.getPathSegments().get(2));
        final String partId = uri.getPathSegments().get(4);
        final int cg = F.cg(uri.getPathSegments().get(5));
        final boolean booleanValue = Boolean.valueOf(uri.getPathSegments().get(6));
        final bm ax = mailEngine.ax(long1);
        if (ax == null) {
            E.e("Gmail", "Message not found", new Object[0]);
            return null;
        }
        final aZ az = new aZ();
        az.bkZ = ax;
        az.partId = partId;
        az.bla = cg;
        az.blb = booleanValue;
        return az;
    }
    
    public static Uri eZ(final String s) {
        try {
            return MailProvider.bkT.buildUpon().appendPath(Base64.encodeToString(z.i(s.getBytes()), 0)).build();
        }
        catch (GeneralSecurityException ex) {
            E.e("Gmail", ex, "Failure to encrypt account name.  Returning null Uri", new Object[0]);
            return null;
        }
    }
    
    private MailEngine eu(final String s) {
        if (this.bkW != null) {
            if (this.bkW.equals(s)) {
                return this.bkX;
            }
            throw new IllegalArgumentException("Must request bound account");
        }
        else {
            if (TextUtils.isEmpty((CharSequence)s)) {
                throw new IllegalArgumentException("account is empty");
            }
            return MailEngine.V(this.getContext(), s);
        }
    }
    
    public final int bulkInsert(final Uri uri, final ContentValues[] array) {
        final int match = MailProvider.ajR.match(uri);
        final String s = uri.getPathSegments().get(0);
        final String queryParameter = uri.getQueryParameter("suppressUINotifications");
        final boolean b = queryParameter != null && Boolean.valueOf(queryParameter);
        final MailEngine eu = this.eu(s);
        switch (match) {
            default: {
                throw new IllegalArgumentException(uri.toString());
            }
            case 16: {
                eu.b(array, b);
                return 0;
            }
            case 17: {
                eu.a(array, b);
                return 0;
            }
        }
    }
    
    public final int delete(final Uri uri, final String s, final String[] array) {
        int i = 0;
        final int match = MailProvider.ajR.match(uri);
        final String s2 = uri.getPathSegments().get(0);
        final MailEngine eu = this.eu(s2);
        MailIndexerService.eY(s2);
        int n = 0;
        switch (match) {
            default: {
                throw new IllegalArgumentException(uri.toString());
            }
            case 10: {
                if (!TextUtils.isEmpty((CharSequence)s)) {
                    throw new IllegalArgumentException("selection must be empty");
                }
                final long long1 = Long.parseLong(uri.getPathSegments().get(2));
                final String lastPathSegment = uri.getLastPathSegment();
                E.c("Gmail", "MailProvider.delete(): removing label %s from local message %d", lastPathSegment, long1);
                if (!Gmail.ef(lastPathSegment)) {
                    throw new IllegalArgumentException("label is not user-settable: " + lastPathSegment);
                }
                eu.a(long1, lastPathSegment, false);
                n = 1;
                break;
            }
            case 4: {
                final long long2 = Long.parseLong(uri.getPathSegments().get(2));
                final String lastPathSegment2 = uri.getLastPathSegment();
                if (!TextUtils.equals((CharSequence)s, (CharSequence)"maxMessageId") || array.length != 1) {
                    throw new IllegalArgumentException("selection must be 'maxMessageId', selection args must contain max message id");
                }
                final long long3 = Long.parseLong(array[0]);
                E.c("Gmail", "MailProvider.delete(): removing label %s from conversation %d", lastPathSegment2, long2);
                if (!Gmail.ef(lastPathSegment2)) {
                    throw new IllegalArgumentException("label is not user-settable: " + lastPathSegment2);
                }
                eu.a(long2, long3, lastPathSegment2, false);
                return 1;
            }
            case 7: {
                if (!TextUtils.isEmpty((CharSequence)s)) {
                    throw new IllegalArgumentException("selection must be empty");
                }
                final long long4 = Long.parseLong(uri.getLastPathSegment());
                E.c("Gmail", "MailProvider.delete(): removing local message %d", long4);
                return eu.aA(long4);
            }
            case 6: {
                if (!TextUtils.isEmpty((CharSequence)s)) {
                    throw new IllegalArgumentException("selection must be empty");
                }
                if (array == null) {
                    throw new IllegalArgumentException("selection Args must be specified");
                }
                final ArrayList<Long> list = new ArrayList<Long>();
                while (i < array.length) {
                    list.add(Long.parseLong(array[i]));
                    ++i;
                }
                return eu.H(list);
            }
            case 12: {
                final aZ a = a(eu, uri);
                n = 0;
                if (a != null) {
                    return eu.FX().c(a.bkZ.bku, a.bkZ.bkt, a.partId, a.bla, false);
                }
                break;
            }
        }
        return n;
    }
    
    public final String getType(final Uri uri) {
        switch (MailProvider.ajR.match(uri)) {
            default: {
                return null;
            }
            case 1: {
                return "com.google.android.gm/conversations";
            }
            case 11: {
                final aZ a = a(this.eu(uri.getPathSegments().get(0)), uri);
                if (a == null) {
                    return null;
                }
                return a.bkZ.ff(a.partId).getContentType();
            }
        }
    }
    
    public final Uri insert(final Uri uri, final ContentValues contentValues) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "MailProvider.insert: %s(%s)", E.A(uri), contentValues);
        }
        final int match = MailProvider.ajR.match(uri);
        final String s = uri.getPathSegments().get(0);
        final MailEngine eu = this.eu(s);
        MailIndexerService.eY(s);
        switch (match) {
            default: {
                throw new IllegalArgumentException(uri.toString());
            }
            case 9: {
                final long long1 = Long.parseLong(uri.getPathSegments().get(2));
                if (contentValues.size() != 1) {
                    throw new IllegalArgumentException(contentValues.toString());
                }
                if (!contentValues.containsKey("canonicalName")) {
                    throw new IllegalArgumentException("values must have 'canonicalName'");
                }
                final String asString = contentValues.getAsString("canonicalName");
                E.c("Gmail", "MailProvider.insert(): adding label %s to local message %d", asString, long1);
                if (!Gmail.ef(asString)) {
                    throw new IllegalArgumentException("label is not user-settable: " + asString);
                }
                eu.a(long1, asString, true);
                return Gmail.b(s, long1, asString);
            }
            case 6: {
                final long a = a(eu, 0L, contentValues);
                E.c("Gmail", "MailProvider.insert(): added local message %d", a);
                return Gmail.h(s, a);
            }
            case 3: {
                final long long2 = Long.parseLong(uri.getPathSegments().get(2));
                if (!contentValues.containsKey("canonicalName")) {
                    throw new IllegalArgumentException("values must have 'canonicalName'");
                }
                final String asString2 = contentValues.getAsString("canonicalName");
                if (!contentValues.containsKey("maxMessageId")) {
                    throw new IllegalArgumentException("values must have 'maxMessageId'");
                }
                final long longValue = contentValues.getAsLong("maxMessageId");
                if (contentValues.size() != 2) {
                    throw new IllegalArgumentException(contentValues.toString());
                }
                E.c("Gmail", "MailProvider.insert(): adding label %s to conversation %d,maxMessageId %d", asString2, long2, longValue);
                if (!Gmail.ef(asString2)) {
                    throw new IllegalArgumentException("label is not user-settable: " + asString2);
                }
                eu.a(long2, longValue, asString2, true);
                return Gmail.a(s, long2, asString2);
            }
        }
    }
    
    public final void onAccountsUpdated(final Account[] array) {
        if (this.bkV != null) {
            this.bkV.onAccountsUpdated(array);
        }
    }
    
    public final boolean onCreate() {
        MailProvider.bkU = this;
        if (!MailProvider.bkY) {
            this.bkV = f.bX(this.getContext());
        }
        final HandlerThread handlerThread = new HandlerThread("AccountManager Listener", 10);
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
        this.mContentResolver = this.getContext().getContentResolver();
        AccountManager.get(this.getContext()).addOnAccountsUpdatedListener((OnAccountsUpdateListener)this, this.mHandler, true);
        this.getContext().sendBroadcast(new Intent("com.google.android.gm.intent.ACTION_PROVIDER_CREATED"));
        return true;
    }
    
    public final ParcelFileDescriptor openFile(final Uri uri, final String s) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "MailProvider.openFile: %s", E.A(uri));
        }
        final int match = MailProvider.ajR.match(uri);
        final MailEngine eu = this.eu(uri.getPathSegments().get(0));
        switch (match) {
            default: {
                throw new IllegalArgumentException("Unsupported uri in openFile: " + uri.toString());
            }
            case 11: {
                final aZ a = a(eu, uri);
                if (a == null) {
                    throw new FileNotFoundException();
                }
                try {
                    return eu.FX().b(a.bkZ.bku, a.bkZ.bkt, a.partId, a.bla, a.blb);
                }
                catch (FileNotFoundException ex) {
                    final GmailAttachment ff = a.bkZ.ff(a.partId);
                    if (ff == null) {
                        throw new FileNotFoundException("Failed to open local attachment. Attachment not found");
                    }
                    return MailEngine.a(ff);
                }
                break;
            }
        }
    }
    
    public final Cursor query(final Uri uri, String[] array, String s, final String[] array2, final String s2) {
        if (E.isLoggable("Gmail", 3)) {
            E.c("Gmail", "MailProvider.query: %s(%s, %s)", E.A(uri), s, Arrays.toString(array2));
        }
        if (!TextUtils.isEmpty((CharSequence)s2)) {
            throw new IllegalArgumentException("sortOrder must be empty");
        }
        final int match = MailProvider.ajR.match(uri);
        Object o;
        if (match == 24) {
            o = F(uri);
        }
        else {
            final String bkW = uri.getPathSegments().get(0);
            while (true) {
                if (this.bkW != null && !bkW.equals(this.bkW)) {
                    while (true) {
                        while (true) {
                            final MailEngine eu;
                            Label_1027: {
                                Label_1013: {
                                    Label_0970: {
                                        Label_0892: {
                                            Label_0780: {
                                                Label_0608: {
                                                    Label_0590: {
                                                        Label_0572: {
                                                            Label_0538: {
                                                                Label_0479: {
                                                                    Label_0411: {
                                                                        Label_0331: {
                                                                            synchronized (this) {
                                                                                this.bkW = bkW;
                                                                                this.bkX = MailEngine.V(this.getContext(), this.bkW);
                                                                                // monitorexit(this)
                                                                                eu = this.eu(bkW);
                                                                                MailIndexerService.eY(bkW);
                                                                                switch (match) {
                                                                                    default: {
                                                                                        o = null;
                                                                                        final int n = 1;
                                                                                        if (o != null && n != 0) {
                                                                                            ((Cursor)o).setNotificationUri(this.mContentResolver, Gmail.dU(bkW));
                                                                                            return (Cursor)o;
                                                                                        }
                                                                                        return (Cursor)o;
                                                                                    }
                                                                                    case 23: {
                                                                                        break;
                                                                                    }
                                                                                    case 1: {
                                                                                        break Label_0331;
                                                                                    }
                                                                                    case 5: {
                                                                                        break Label_0411;
                                                                                    }
                                                                                    case 21: {
                                                                                        break Label_0479;
                                                                                    }
                                                                                    case 6: {
                                                                                        break Label_0538;
                                                                                    }
                                                                                    case 7: {
                                                                                        break Label_0572;
                                                                                    }
                                                                                    case 8: {
                                                                                        break Label_0590;
                                                                                    }
                                                                                    case 11: {
                                                                                        break Label_0608;
                                                                                    }
                                                                                    case 13: {
                                                                                        break Label_0780;
                                                                                    }
                                                                                    case 18: {
                                                                                        break Label_0892;
                                                                                    }
                                                                                    case 19: {
                                                                                        break Label_0970;
                                                                                    }
                                                                                    case 14: {
                                                                                        break Label_1013;
                                                                                    }
                                                                                    case 20: {
                                                                                        break Label_1027;
                                                                                    }
                                                                                }
                                                                            }
                                                                            o = eu.e(bkW, array2);
                                                                            final int n = 0;
                                                                            continue;
                                                                        }
                                                                        if (s == null || s.length() == 0) {
                                                                            s = "label:^i";
                                                                        }
                                                                        final String queryParameter = uri.getQueryParameter("limit");
                                                                        final boolean b = Binder.getCallingPid() != Process.myPid();
                                                                        Integer value;
                                                                        if (queryParameter != null) {
                                                                            value = Integer.valueOf(queryParameter);
                                                                        }
                                                                        else {
                                                                            value = null;
                                                                        }
                                                                        o = eu.a(s, array2, value, b);
                                                                        final int n = 1;
                                                                        continue;
                                                                    }
                                                                    o = eu.a(array, Long.parseLong(uri.getPathSegments().get(2)), "1".equals(uri.getQueryParameter("useCache")), "1".equals(uri.getQueryParameter("useMatrixCursor")));
                                                                    final int n = 1;
                                                                    continue;
                                                                }
                                                                final long long1 = Long.parseLong(uri.getPathSegments().get(2));
                                                                final Cursor b2 = eu.FX().b(long1, array);
                                                                b2.setNotificationUri(this.mContentResolver, Gmail.g(bkW, long1));
                                                                o = b2;
                                                                final int n = 0;
                                                                continue;
                                                            }
                                                            final Cursor c = eu.c(array, Long.parseLong(s));
                                                            c.setNotificationUri(this.mContentResolver, uri);
                                                            o = c;
                                                            final int n = 0;
                                                            continue;
                                                        }
                                                        o = eu.b(array, ContentUris.parseId(uri));
                                                        final int n = 1;
                                                        continue;
                                                    }
                                                    o = eu.c(array, ContentUris.parseId(uri));
                                                    final int n = 1;
                                                    continue;
                                                }
                                                final aZ a = a(eu, uri);
                                                if (a == null) {
                                                    break;
                                                }
                                                final GmailAttachment ff = a.bkZ.ff(a.partId);
                                                if (array == null) {
                                                    array = new String[] { "_display_name", "_size" };
                                                }
                                                o = new G(array);
                                                final MatrixCursor$RowBuilder row = ((MatrixCursor)o).newRow();
                                                for (final String s3 : array) {
                                                    if ("_display_name".equals(s3)) {
                                                        row.add((Object)ff.getName());
                                                    }
                                                    else if ("_size".equals(s3) && a.bla == 1) {
                                                        row.add((Object)ff.size);
                                                    }
                                                    else {
                                                        row.add((Object)null);
                                                    }
                                                }
                                                final int n = 1;
                                                continue;
                                            }
                                            final boolean b3 = Long.valueOf(uri.getPathSegments().get(2)) != 0L;
                                            final String queryParameter2 = uri.getQueryParameter("before");
                                            final String queryParameter3 = uri.getQueryParameter("limit");
                                            final aa bu = eu.B(array).F(uri.getQueryParameters("canonicalName")).bU(b3);
                                            if (queryParameter2 != null) {
                                                bu.g(Long.parseLong(queryParameter2), Integer.parseInt(queryParameter3));
                                            }
                                            o = bu.Fl();
                                            final int n = 1;
                                            continue;
                                        }
                                        o = eu.B(array).F(ImmutableList.aE(uri.getPathSegments().get(2))).bU(Long.valueOf(uri.getPathSegments().get(3)) != 0L).Fl();
                                        final int n = 1;
                                        continue;
                                    }
                                    o = eu.B(array).al(Long.valueOf(uri.getPathSegments().get(2))).Fl();
                                    final int n = 1;
                                    continue;
                                }
                                o = eu.C(array);
                                final int n = 1;
                                continue;
                            }
                            final Cursor gq = eu.Gq();
                            gq.setNotificationUri(this.mContentResolver, Gmail.dX(bkW));
                            o = gq;
                            final int n = 0;
                            continue;
                        }
                    }
                    return null;
                }
                continue;
            }
        }
        return (Cursor)o;
    }
    
    public final void shutdown() {
        MailEngine.FS();
    }
    
    public final int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("selection must be empty");
        }
        final int match = MailProvider.ajR.match(uri);
        final String s2 = uri.getPathSegments().get(0);
        final MailEngine eu = this.eu(s2);
        MailIndexerService.eY(s2);
        switch (match) {
            default: {
                throw new IllegalArgumentException(uri.toString());
            }
            case 7: {
                a(eu, ContentUris.parseId(uri), contentValues);
                return 1;
            }
            case 14: {
                if (eu.f(contentValues)) {
                    this.mContentResolver.notifyChange(Gmail.dU(s2), (ContentObserver)null);
                    return 1;
                }
                return 0;
            }
            case 22: {
                return eu.e(contentValues);
            }
        }
    }
}
