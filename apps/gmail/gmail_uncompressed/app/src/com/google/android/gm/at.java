package com.google.android.gm;

import com.android.mail.utils.*;
import android.database.*;
import com.google.android.gm.provider.*;
import com.google.android.gms.appdatasearch.*;
import java.util.*;
import com.android.mail.providers.*;
import android.content.*;

public final class at extends G
{
    final /* synthetic */ as aYW;
    
    public at(final as ayw, final String[] array) {
        this.aYW = ayw;
        super(array);
    }
    
    public final at a(final String s, final Cursor cursor) {
        int n = 0;
        List<au> list = null;
        final HashSet<String> set = new HashSet<String>();
        int n3;
        List<au> list3;
        if (cursor != null) {
            final String string = Integer.toString(2130837709);
            while (cursor.moveToNext()) {
                final String string2 = cursor.getString(1);
                final String string3 = cursor.getString(2);
                final String string4 = cursor.getString(3);
                if (string4.endsWith(string)) {
                    if (set.contains(string2)) {
                        continue;
                    }
                    set.add(string2);
                    final Object[] array = new Object[4];
                    final int n2 = n + 1;
                    array[0] = n;
                    array[1] = string2;
                    array[2] = string3;
                    array[3] = string4;
                    this.addRow(array);
                    n = n2;
                }
                else {
                    if (list == null) {
                        list = new ArrayList<au>();
                    }
                    list.add(new au(string2, string3, string4));
                }
            }
            cursor.close();
            final List<au> list2 = list;
            n3 = n;
            list3 = list2;
        }
        else {
            n3 = 0;
            list3 = null;
        }
        final f hh = MailProvider.Hh();
        final String eh = GmailProvider.EH();
        if (eh != null) {
            final SuggestionResults k = hh.K(s, eh);
            if (k != null) {
                final Iterator<m> iterator = k.iterator();
                int n4 = n3;
                while (iterator.hasNext()) {
                    final m m = iterator.next();
                    final String query = m.getQuery();
                    int n6;
                    if (!set.contains(query)) {
                        String js = m.Js();
                        if (js == null) {
                            js = query;
                        }
                        set.add(query);
                        final Object[] array2 = new Object[4];
                        final int n5 = n4 + 1;
                        array2[0] = n4;
                        array2[1] = js;
                        array2[2] = query;
                        array2[3] = this.aYW.aYV;
                        this.addRow(array2);
                        n6 = n5;
                    }
                    else {
                        n6 = n4;
                    }
                    n4 = n6;
                }
                n3 = n4;
            }
        }
        if (list3 != null) {
            final Iterator<au> iterator2 = list3.iterator();
            int n7 = n3;
            while (iterator2.hasNext()) {
                final au au = iterator2.next();
                int n9;
                if (!set.contains(au.aYX)) {
                    set.add(au.aYX);
                    final Object[] array3 = new Object[4];
                    final int n8 = n7 + 1;
                    array3[0] = n7;
                    array3[1] = au.aYX;
                    array3[2] = au.aYY;
                    array3[3] = au.aYZ;
                    this.addRow(array3);
                    n9 = n8;
                }
                else {
                    n9 = n7;
                }
                n7 = n9;
            }
        }
        return this;
    }
}
