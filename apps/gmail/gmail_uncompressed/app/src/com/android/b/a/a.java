package com.android.b.a;

import android.os.*;
import android.util.*;
import android.text.*;
import android.content.*;
import android.provider.*;
import java.util.*;
import android.database.*;

public class a
{
    private static final String TAG;
    private final ContentResolver Hb;
    
    static {
        TAG = a.class.getSimpleName();
    }
    
    public a(final Context context) {
        this.Hb = context.getContentResolver();
    }
    
    private boolean a(final Collection<Long> collection, final Collection<Long> collection2, final String s) {
        final long currentTimeMillis = System.currentTimeMillis();
        if (Build$VERSION.SDK_INT >= 14) {
            if (collection2.isEmpty()) {
                if (Log.isLoggable(a.TAG, 3)) {
                    Log.d(a.TAG, "Given list for data IDs is null. Ignoring.");
                    return false;
                }
            }
            else {
                if (this.Hb.update(b.FEEDBACK_URI.buildUpon().appendPath(TextUtils.join((CharSequence)",", (Iterable)collection2)).appendQueryParameter("type", s).build(), new ContentValues(), (String)null, (String[])null) > 0) {
                    return true;
                }
                if (Log.isLoggable(a.TAG, 3)) {
                    Log.d(a.TAG, "update toward data rows " + collection2 + " failed");
                }
                return false;
            }
        }
        else if (collection.isEmpty()) {
            if (Log.isLoggable(a.TAG, 3)) {
                Log.d(a.TAG, "Given list for contact IDs is null. Ignoring.");
                return false;
            }
        }
        else {
            final StringBuilder sb = new StringBuilder();
            final ArrayList<String> list = new ArrayList<String>();
            final String[] array = new String[collection.size()];
            final Iterator<Long> iterator = collection.iterator();
            while (iterator.hasNext()) {
                list.add(String.valueOf((long)iterator.next()));
            }
            Arrays.fill(array, "?");
            sb.append("_id IN (").append(TextUtils.join((CharSequence)",", (Object[])array)).append(")");
            if (Log.isLoggable(a.TAG, 3)) {
                Log.d(a.TAG, "contactId where: " + sb.toString());
                Log.d(a.TAG, "contactId selection: " + list);
            }
            final ContentValues contentValues = new ContentValues();
            contentValues.put("last_time_contacted", currentTimeMillis);
            if (this.Hb.update(ContactsContract$Contacts.CONTENT_URI, contentValues, sb.toString(), (String[])list.toArray(new String[0])) > 0) {
                return true;
            }
            if (Log.isLoggable(a.TAG, 3)) {
                Log.d(a.TAG, "update toward raw contacts " + collection + " failed");
            }
        }
        return false;
    }
    
    public final boolean a(final Collection<String> collection) {
        if (Log.isLoggable(a.TAG, 3)) {
            Log.d(a.TAG, "updateWithAddress: " + Arrays.toString(collection.toArray()));
        }
        if (collection != null && !collection.isEmpty()) {
            final ArrayList list = new ArrayList();
            final StringBuilder sb = new StringBuilder();
            final String[] array = new String[collection.size()];
            list.addAll(collection);
            Arrays.fill(array, "?");
            sb.append("data1 IN (").append(TextUtils.join((CharSequence)",", (Object[])array)).append(")");
            final Cursor query = this.Hb.query(ContactsContract$CommonDataKinds$Email.CONTENT_URI, new String[] { "contact_id", "_id" }, sb.toString(), (String[])list.toArray(new String[0]), (String)null);
            if (query != null) {
                final HashSet set = new HashSet<Long>(query.getCount());
                final HashSet set2 = new HashSet<Long>(query.getCount());
                try {
                    query.move(-1);
                    while (query.moveToNext()) {
                        set.add(query.getLong(0));
                        set2.add(query.getLong(1));
                    }
                }
                finally {
                    query.close();
                }
                query.close();
                return this.a((Collection<Long>)set, (Collection<Long>)set2, "long_text");
            }
            Log.w(a.TAG, "Cursor for Email.CONTENT_URI became null.");
        }
        return false;
    }
}
