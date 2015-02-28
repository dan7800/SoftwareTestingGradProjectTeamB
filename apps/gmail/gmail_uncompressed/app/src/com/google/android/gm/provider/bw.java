package com.google.android.gm.provider;

import android.content.*;
import com.google.common.collect.*;
import android.content.res.*;
import java.util.*;

abstract class bw
{
    public static String[] a(final Context context, final String... array) {
        final Resources resources = context.getResources();
        final ArrayList<String> n = Lists.n(resources.getString(2131297147), resources.getString(2131297148), resources.getString(2131297149), resources.getString(2131297150), resources.getString(2131297151), resources.getString(2131297152), resources.getString(2131297153), resources.getString(2131297154), resources.getString(2131297155), resources.getString(2131297156), resources.getString(2131297157), resources.getString(2131297158), resources.getString(2131297159), resources.getString(2131297160), resources.getString(2131297161), resources.getString(2131297162), resources.getString(2131297163), resources.getString(2131297164));
        n.addAll((Collection<?>)Arrays.asList(array));
        return n.toArray(new String[n.size()]);
    }
    
    public static String[] a(final Context context, final String[] array, final String s, String... a) {
        int n = 0;
        Label_0012: {
            if (array == null || array.length == 0) {
                n = 1;
            }
            else {
                int n2 = 0;
                while (true) {
                    final int length = array.length;
                    n = 0;
                    if (n2 >= length) {
                        break Label_0012;
                    }
                    if (s.equals(array[n2])) {
                        break;
                    }
                    ++n2;
                }
                n = 1;
            }
        }
        if (n != 0) {
            a = a(context, a);
        }
        return a;
    }
}
