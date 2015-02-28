package com.android.email.provider;

import android.util.*;
import android.database.*;
import com.android.emailcommon.provider.*;
import org.apache.a.a.*;
import com.android.mail.utils.*;
import android.content.*;
import java.io.*;

public final class j extends CursorWrapper
{
    private final SparseArray<String> Se;
    private final SparseArray<String> Sf;
    private final int Sg;
    private final int Sh;
    
    public j(final Context context, final Cursor cursor, final String s, final String s2) {
        super(cursor);
        this.Sh = cursor.getColumnIndex(s);
        this.Sg = cursor.getColumnIndex(s2);
        final int count = cursor.getCount();
        this.Sf = (SparseArray<String>)new SparseArray(count);
        this.Se = (SparseArray<String>)new SparseArray(count);
        final ContentResolver contentResolver = context.getContentResolver();
    Label_0151_Outer:
        while (cursor.moveToNext()) {
            final int position = cursor.getPosition();
            final long long1 = cursor.getLong(cursor.getColumnIndex("_id"));
            InputStream inputStream;
            while (true) {
                try {
                    if (this.Sh == -1) {
                        break Label_0151;
                    }
                    final InputStream openInputStream = contentResolver.openInputStream(e.F(long1));
                    try {
                        final String i = a.i(openInputStream);
                        openInputStream.close();
                        this.Sf.put(position, (Object)t.cv(i));
                        try {
                            if (this.Sg != -1) {
                                final InputStream openInputStream2;
                                inputStream = (openInputStream2 = contentResolver.openInputStream(e.E(long1)));
                                final String s3 = a.i(openInputStream2);
                                final InputStream inputStream2 = inputStream;
                                inputStream2.close();
                                final j j = this;
                                final SparseArray<String> sparseArray = j.Se;
                                final int n = position;
                                final String s4 = s3;
                                sparseArray.put(n, (Object)s4);
                                continue Label_0151_Outer;
                            }
                            continue Label_0151_Outer;
                        }
                        catch (IOException ex) {
                            E.a(E.TAG, ex, "Did not find text body for message %d", long1);
                            continue Label_0151_Outer;
                        }
                    }
                    finally {
                        openInputStream.close();
                    }
                }
                catch (IOException ex2) {
                    E.a(E.TAG, ex2, "Did not find html body for message %d", long1);
                    continue;
                }
                break;
            }
            try {
                final InputStream openInputStream2 = inputStream;
                final String s3 = a.i(openInputStream2);
                final InputStream inputStream2 = inputStream;
                inputStream2.close();
                final j j = this;
                final SparseArray<String> sparseArray = j.Se;
                final int n = position;
                final String s4 = s3;
                sparseArray.put(n, (Object)s4);
                continue;
            }
            finally {
                inputStream.close();
            }
            break;
        }
        cursor.moveToPosition(-1);
    }
    
    public final String getString(final int n) {
        if (n == this.Sh) {
            return (String)this.Sf.get(this.getPosition());
        }
        if (n == this.Sg) {
            return (String)this.Se.get(this.getPosition());
        }
        return super.getString(n);
    }
    
    public final int getType(final int n) {
        if (n == this.Sh || n == this.Sg) {
            return 3;
        }
        return super.getType(n);
    }
}
