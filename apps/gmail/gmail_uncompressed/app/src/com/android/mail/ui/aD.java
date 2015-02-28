package com.android.mail.ui;

import android.content.*;
import android.database.*;
import com.android.mail.providers.*;
import android.net.*;
import com.android.mail.utils.*;
import java.util.*;

public final class ad extends bW
{
    public ad(final Context context, final Cursor cursor, final Set<String> set) {
        super(context, cursor, set, 2130968730);
    }
    
    public static Cursor a(final Cursor cursor, final Set<Integer> set, final Set<String> set2, final boolean b) {
        final int length = E.aCv.length;
        final G g = new G(E.aCv);
        final Object[] array = new Object[length];
        if (cursor.moveToFirst()) {
        Label_0090_Outer:
            while (true) {
                final int int1 = cursor.getInt(15);
            Label_0090:
                while (true) {
                    if (set != null) {
                        final Iterator<Integer> iterator = set.iterator();
                        while (iterator.hasNext()) {
                            if (Folder.O(int1, iterator.next())) {
                                final boolean b2 = true;
                                break Label_0090;
                            }
                        }
                    }
                    Label_0489: {
                        break Label_0489;
                        final boolean b2;
                        if (set2 != null) {
                            b2 |= (b ^ set2.contains(new p(Uri.parse(cursor.getString(2))).AR().toString()));
                        }
                        if (!b2 && (Folder.O(int1, 2) || Folder.O(int1, 1))) {
                            array[0] = cursor.getLong(0);
                            array[1] = cursor.getString(1);
                            array[2] = cursor.getString(2);
                            array[3] = cursor.getString(3);
                            array[4] = cursor.getInt(4);
                            array[5] = cursor.getInt(5);
                            array[6] = cursor.getInt(6);
                            array[7] = cursor.getString(7);
                            array[8] = cursor.getString(8);
                            array[9] = cursor.getInt(9);
                            array[10] = cursor.getInt(10);
                            array[11] = cursor.getInt(11);
                            array[12] = cursor.getString(12);
                            array[13] = cursor.getInt(13);
                            array[14] = cursor.getInt(14);
                            array[15] = int1;
                            array[16] = cursor.getInt(16);
                            array[18] = cursor.getString(18);
                            array[19] = cursor.getString(19);
                            array[20] = cursor.getString(20);
                            array[21] = cursor.getString(21);
                            array[22] = cursor.getLong(22);
                            array[23] = cursor.getString(23);
                            g.addRow(array);
                        }
                        if (!cursor.moveToNext()) {
                            break;
                        }
                        continue Label_0090_Outer;
                    }
                    boolean b2 = false;
                    continue Label_0090;
                }
            }
        }
        return (Cursor)g;
    }
    
    public static Cursor k(final Cursor cursor) {
        return a(cursor, null, null, true);
    }
}
