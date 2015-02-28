package com.google.android.gm.persistence;

import java.util.zip.*;
import com.android.mail.utils.*;
import android.content.*;
import com.android.mail.providers.*;
import com.android.mail.c.*;
import com.android.mail.i.*;
import com.google.android.gm.*;
import com.google.common.collect.*;
import com.google.android.gm.provider.*;
import java.util.*;
import org.json.*;
import android.os.*;
import android.app.backup.*;
import java.io.*;
import com.google.android.gm.preference.*;

public class GmailBackupAgent extends BackupAgent
{
    private static long a(final Map<String, Gmail$Settings> map, final List<SharedPreference> list, final List<c> list2, final Map<String, List<c>> map2, final Map<String, Map<String, List<c>>> map3) {
        final Adler32 adler32 = new Adler32();
        for (final Map.Entry<String, Gmail$Settings> entry : map.entrySet()) {
            a(adler32, entry.getKey());
            final Gmail$Settings gmail$Settings = entry.getValue();
            a(adler32, gmail$Settings.Ey());
            a(adler32, gmail$Settings.Ez());
            a(adler32, gmail$Settings.EA());
            a(adler32, gmail$Settings.EB());
        }
        for (final SharedPreference sharedPreference : list) {
            a(adler32, sharedPreference.getKey());
            a(adler32, sharedPreference.getValue());
        }
        for (final c c : list2) {
            a(adler32, c.getKey());
            a(adler32, c.getValue());
        }
        for (final Map.Entry<String, List<c>> entry2 : map2.entrySet()) {
            a(adler32, entry2.getKey());
            for (final c c2 : entry2.getValue()) {
                a(adler32, c2.getKey());
                a(adler32, c2.getValue());
            }
        }
        for (final Map.Entry<String, Map<String, List<c>>> entry3 : map3.entrySet()) {
            a(adler32, entry3.getKey());
            for (final Map.Entry<String, List<c>> entry4 : entry3.getValue().entrySet()) {
                a(adler32, entry4.getKey());
                for (final c c3 : entry4.getValue()) {
                    a(adler32, c3.getKey());
                    a(adler32, c3.getValue());
                }
            }
        }
        return adler32.getValue();
    }
    
    private static Object a(final BackupDataInput backupDataInput) {
        final int dataSize = backupDataInput.getDataSize();
        final byte[] array = new byte[dataSize];
        backupDataInput.readEntityData(array, 0, dataSize);
        final ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(array));
        try {
            return objectInputStream.readObject();
        }
        catch (ClassNotFoundException ex) {
            E.e("GmailBackupAgent", ex, "Invalid restore data", new Object[0]);
            return null;
        }
    }
    
    private static void a(final Adler32 adler32, final long n) {
        adler32.update((int)(0xFFFFL & n));
        adler32.update((int)(n >>> 32));
    }
    
    private static void a(final Adler32 adler32, final Object o) {
        try {
            adler32.update(o.toString().getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException ex) {}
    }
    
    private static void a(final Adler32 adler32, final List<String> list) {
        final String[] array = list.toArray(new String[list.size()]);
        for (int length = array.length, i = 0; i < length; ++i) {
            a(adler32, array[i]);
            a(adler32, 124L);
        }
    }
    
    private static byte[] a(final a a) {
        final String string = a.lC().toString();
        E.b("GmailBackupAgent", "Writing backup data: %s", string);
        return string.getBytes("UTF-8");
    }
    
    private static Account[] ax(final Context context) {
        final b<Account> b = new b<Account>(context.getContentResolver().query(t.vh(), com.android.mail.providers.E.aCr, (String)null, (String[])null, (String)null), Account.aqh);
        try {
            return Account.b(b);
        }
        finally {
            b.close();
        }
    }
    
    private static a b(final BackupDataInput backupDataInput) {
        try {
            final int dataSize = backupDataInput.getDataSize();
            final byte[] array = new byte[dataSize];
            backupDataInput.readEntityData(array, 0, dataSize);
            return e(array);
        }
        catch (IOException ex) {
            E.e("GmailBackupAgent", ex, "Invalid restore data", new Object[0]);
            return new a(null, null, null, null, null);
        }
    }
    
    private static List<SharedPreference> bl(final Context context) {
        final List<SharedPreference> bo = com.google.android.gm.persistence.b.DD().bO(context);
        if (E.isLoggable("GmailBackupAgent", 2)) {
            final Iterator<SharedPreference> iterator = bo.iterator();
            while (iterator.hasNext()) {
                E.b("GmailBackupAgent", "Backup %s", iterator.next());
            }
        }
        return bo;
    }
    
    private static List<c> bm(final Context context) {
        final List<c> ty = g.ao(context).tY();
        final Iterator<c> iterator = ty.iterator();
        while (iterator.hasNext()) {
            E.b("GmailBackupAgent", "Backup %s", iterator.next());
        }
        return ty;
    }
    
    private static Map<String, List<c>> bn(final Context context) {
        final HashMap<String, List<c>> hashMap = new HashMap<String, List<c>>();
        for (final Account account : ax(context)) {
            hashMap.put(account.lw(), new com.android.mail.i.a(context, account.getAccountId()).tY());
        }
        return hashMap;
    }
    
    private static Map<String, Map<String, List<c>>> bo(final Context context) {
        final HashMap<String, Map<String, List<c>>> hashMap = new HashMap<String, Map<String, List<c>>>();
        for (final Account account : ax(context)) {
            final HashMap<String, List<c>> hashMap2 = new HashMap<String, List<c>>();
            final String lw = account.lw();
            final U c = Y.c(context, lw, false);
            for (int j = 0; j < c.size(); ++j) {
                final String canonicalName = c.dP(j).getCanonicalName();
                final j k = new j(context, account.getAccountId(), ay.i(context, lw, canonicalName), false);
                if (k.tZ()) {
                    hashMap2.put(canonicalName, k.tY());
                }
            }
            if (!hashMap2.isEmpty()) {
                hashMap.put(lw, hashMap2);
            }
        }
        return hashMap;
    }
    
    private static Map<String, Gmail$Settings> bp(final Context context) {
        final List<String> bq = bq(context);
        final LinkedHashMap<String, Gmail$Settings> aao = Maps.aao();
        for (final String s : bq) {
            aao.put(s, Gmail.Q(context, s));
        }
        if (E.isLoggable("GmailBackupAgent", 2)) {
            final Iterator<Map.Entry<String, Gmail$Settings>> iterator2 = aao.entrySet().iterator();
            while (iterator2.hasNext()) {
                E.b("GmailBackupAgent", "Backup %s", iterator2.next());
            }
        }
        return aao;
    }
    
    private static List<String> bq(final Context context) {
        final ArrayList<String> list = new ArrayList<String>();
        final String[] databaseList = context.databaseList();
        for (int length = databaseList.length, i = 0; i < length; ++i) {
            final String name = new File(databaseList[i]).getName();
            if (name.endsWith(".db") && name.startsWith("internal")) {
                list.add(name.substring(9, -3 + name.length()));
            }
        }
        return list;
    }
    
    public static void dataChanged(final String s) {
        E.b("GmailBackupAgent", "%s may have changed", s);
        BackupManager.dataChanged("com.google.android.gm");
    }
    
    private static a e(final byte[] array) {
        try {
            final String s = new String(array, "UTF-8");
            E.b("GmailBackupAgent", "Reading restore data: %s", s);
            return a.g(new JSONObject(s));
        }
        catch (JSONException ex) {
            E.e("GmailBackupAgent", (Throwable)ex, "Invalid restore data", new Object[0]);
            return new a(null, null, null, null, null);
        }
        catch (UnsupportedEncodingException ex2) {
            throw new RuntimeException("UTF-8 should never throw a UnsupportedEncodingException", ex2);
        }
        catch (Exception ex3) {
            E.e("GmailBackupAgent", ex3, "Invalid restore data", new Object[0]);
            return new a(null, null, null, null, null);
        }
    }
    
    public void onBackup(final ParcelFileDescriptor parcelFileDescriptor, final BackupDataOutput backupDataOutput, final ParcelFileDescriptor parcelFileDescriptor2) {
        while (true) {
            final Context applicationContext = this.getApplicationContext();
            final Map<String, Gmail$Settings> bp = bp(applicationContext);
            final List<SharedPreference> bl = bl(applicationContext);
            final List<c> bm = bm(applicationContext);
            final Map<String, List<c>> bn = bn(applicationContext);
            final Map<String, Map<String, List<c>>> bo = bo(applicationContext);
            final long a = a(bp, bl, bm, bn, bo);
            new DataOutputStream(new FileOutputStream(parcelFileDescriptor2.getFileDescriptor())).writeLong(a);
            final DataInputStream dataInputStream = new DataInputStream(new FileInputStream(parcelFileDescriptor.getFileDescriptor()));
            try {
                if (dataInputStream.readLong() == a) {
                    E.b("GmailBackupAgent", "No changes to backup", new Object[0]);
                    return;
                }
            }
            catch (IOException ex2) {
                E.e("GmailBackupAgent", "Failed to read old backup state", new Object[0]);
            }
            final a a2 = new a(bp, bl, bm, bn, bo);
            try {
                final byte[] a3 = a(a2);
                if (a3 != null) {
                    final int length = a3.length;
                    backupDataOutput.writeEntityHeader("backup_data_v3", length);
                    backupDataOutput.writeEntityData(a3, length);
                }
            }
            catch (JSONException ex) {
                throw new IOException("Failed to serialize settings", (Throwable)ex);
            }
        }
    }
    
    public void onFullBackup(final FullBackupDataOutput fullBackupDataOutput) {
        final Context applicationContext = this.getApplicationContext();
        final a a = new a(bp(applicationContext), bl(applicationContext), bm(applicationContext), bn(applicationContext), bo(applicationContext));
        final File file = new File(this.getFilesDir().getAbsolutePath(), "backup_data_file");
        try {
            final DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(new FileOutputStream(file)));
            dataOutputStream.writeInt(3);
            try {
                final byte[] a2 = a(a);
                dataOutputStream.writeInt(a2.length);
                dataOutputStream.write(a2);
                dataOutputStream.flush();
                this.fullBackupFile(file, fullBackupDataOutput);
            }
            catch (JSONException ex) {
                throw new IOException("Failed serialize object", (Throwable)ex);
            }
        }
        finally {
            file.delete();
        }
    }
    
    public void onRestore(final BackupDataInput backupDataInput, final int n, final ParcelFileDescriptor parcelFileDescriptor) {
        final Context applicationContext = this.getApplicationContext();
        final com.google.android.gm.persistence.b dd = com.google.android.gm.persistence.b.DD();
        Map<Object, V> map = null;
        List<SharedPreference> dz = null;
        while (true) {
            while (backupDataInput.readNextHeader()) {
                final String key = backupDataInput.getKey();
                if ("gmail_shared_preferences_v1".equals(key)) {
                    dz = (List<SharedPreference>)a(backupDataInput);
                }
                else {
                    if (!"gmail_sync_settings_v1".equals(key)) {
                        Object o;
                        Object o2;
                        Object o3;
                        List<c> list;
                        if ("backup_data_v2".equals(key)) {
                            final a b = b(backupDataInput);
                            final Map<String, Gmail$Settings> dy = b.Dy();
                            dz = b.Dz();
                            o = dy;
                            o2 = null;
                            o3 = null;
                            list = null;
                        }
                        else {
                            if (!"backup_data_v3".equals(key)) {
                                backupDataInput.skipEntityData();
                                E.e("GmailBackupAgent", "Unknown restore key: %s", backupDataInput.getKey());
                                continue;
                            }
                            final a b2 = b(backupDataInput);
                            final Map<String, Gmail$Settings> dy2 = b2.Dy();
                            final List<SharedPreference> dz2 = b2.Dz();
                            final List<c> da = b2.DA();
                            final Map<String, List<c>> db = b2.DB();
                            final Map<String, Map<String, List<c>>> dc = b2.DC();
                            o = dy2;
                            list = da;
                            o2 = dc;
                            o3 = db;
                            dz = dz2;
                        }
                        if (dz != null) {
                            dd.a(applicationContext, dz, "GmailBackupAgent");
                        }
                        if (o != null) {
                            for (final Map.Entry<Object, V> entry : ((Map<Object, V>)o).entrySet()) {
                                E.b("GmailBackupAgent", "Restore: %s: %s", entry.getKey(), entry.getValue());
                                Gmail.a(applicationContext, entry.getKey(), (Gmail$Settings)entry.getValue());
                            }
                        }
                        final g ao = g.ao(applicationContext);
                        if (list != null) {
                            ao.r(list);
                        }
                        final List<c> ty = ao.tY();
                        if (o3 != null) {
                            for (final Map.Entry<String, V> entry2 : ((Map<String, V>)o3).entrySet()) {
                                new i(applicationContext, entry2.getKey()).r((List<c>)entry2.getValue());
                            }
                        }
                        final Map<String, List<c>> bn = bn(applicationContext);
                        if (o2 != null) {
                            for (final Map.Entry<String, V> entry3 : ((Map<String, V>)o2).entrySet()) {
                                final String s = entry3.getKey();
                                for (final Map.Entry<String, V> entry4 : ((Map)entry3.getValue()).entrySet()) {
                                    new j(applicationContext, s, entry4.getKey(), false).r((List<c>)entry4.getValue());
                                }
                            }
                        }
                        final Map<String, Map<String, List<c>>> bo = bo(applicationContext);
                        final LinkedHashMap<String, Gmail$Settings> aao = Maps.aao();
                        for (final String s2 : bq(applicationContext)) {
                            aao.put(s2, Gmail.Q(applicationContext, s2));
                        }
                        new DataOutputStream(new FileOutputStream(parcelFileDescriptor.getFileDescriptor())).writeLong(a(aao, dd.bO(applicationContext), ty, bn, bo));
                        return;
                    }
                    map = (Map<Object, V>)a(backupDataInput);
                }
            }
            Object o = map;
            Object o2 = null;
            Object o3 = null;
            List<c> list = null;
            continue;
        }
    }
    
    public void onRestoreFile(final ParcelFileDescriptor parcelFileDescriptor, final long n, final File file, final int n2, final long n3, final long n4) {
        E.b("GmailBackupAgent", "onRestoreFile() invoked", new Object[0]);
        final DataInputStream dataInputStream = new DataInputStream(new FileInputStream(parcelFileDescriptor.getFileDescriptor()));
        final int int1 = dataInputStream.readInt();
        E.b("GmailBackupAgent", "Flattened data version %d", int1);
        if (int1 == 2) {
            final byte[] array = new byte[dataInputStream.readInt()];
            dataInputStream.readFully(array);
            final a e = e(array);
            final Map<String, Gmail$Settings> dy = e.Dy();
            final Context applicationContext = this.getApplicationContext();
            if (dy != null) {
                for (final Map.Entry<String, Gmail$Settings> entry : dy.entrySet()) {
                    final Gmail$Settings gmail$Settings = entry.getValue();
                    final String s = entry.getKey();
                    E.b("GmailBackupAgent", "Restore: %s: %s", s, gmail$Settings);
                    Gmail.a(applicationContext, s, gmail$Settings);
                }
            }
            final List<SharedPreference> dz = e.Dz();
            if (dz != null) {
                com.google.android.gm.persistence.b.DD().a(applicationContext, dz, "GmailBackupAgent");
            }
        }
        else {
            if (int1 != 3) {
                parcelFileDescriptor.close();
                throw new IOException("Invalid file schema");
            }
            final byte[] array2 = new byte[dataInputStream.readInt()];
            dataInputStream.readFully(array2);
            final a e2 = e(array2);
            final Map<String, Gmail$Settings> dy2 = e2.Dy();
            final Context applicationContext2 = this.getApplicationContext();
            if (dy2 != null) {
                for (final Map.Entry<String, Gmail$Settings> entry2 : dy2.entrySet()) {
                    final Gmail$Settings gmail$Settings2 = entry2.getValue();
                    final String s2 = entry2.getKey();
                    E.b("GmailBackupAgent", "Restore: %s: %s", s2, gmail$Settings2);
                    Gmail.a(applicationContext2, s2, gmail$Settings2);
                }
            }
            final List<SharedPreference> dz2 = e2.Dz();
            if (dz2 != null) {
                com.google.android.gm.persistence.b.DD().a(applicationContext2, dz2, "GmailBackupAgent");
            }
            final g ao = g.ao(applicationContext2);
            final List<c> da = e2.DA();
            if (e2.DA() != null) {
                ao.r(da);
            }
            if (e2.DB() != null) {
                for (final Map.Entry<String, List<c>> entry3 : e2.DB().entrySet()) {
                    new i(applicationContext2, entry3.getKey()).r(entry3.getValue());
                }
            }
            if (e2.DC() != null) {
                for (final Map.Entry<String, Map<String, List<c>>> entry4 : e2.DC().entrySet()) {
                    final String s3 = entry4.getKey();
                    for (final Map.Entry<String, List<c>> entry5 : entry4.getValue().entrySet()) {
                        new j(applicationContext2, s3, entry5.getKey(), false).r(entry5.getValue());
                    }
                }
            }
        }
    }
}
