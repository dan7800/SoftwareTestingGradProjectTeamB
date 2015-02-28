package com.android.email.mail.store.imap;

import java.util.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;

public final class l
{
    public static String[] L(final String s) {
        final ArrayList<String> list = new ArrayList<String>();
        if (s != null) {
            final String[] split = s.split(",");
            final int length = split.length;
            int i = 0;
        Label_0061_Outer:
            while (i < length) {
                final String s2 = split[i];
                while (true) {
                    Label_0090: {
                        if (s2.indexOf(58) != -1) {
                            break Label_0090;
                        }
                        try {
                            Integer.parseInt(s2);
                            list.add(s2);
                            ++i;
                            continue Label_0061_Outer;
                        }
                        catch (NumberFormatException ex) {
                            E.c(b.mW, "Invalid UID value", ex);
                            continue;
                        }
                    }
                    final String[] m = M(s2);
                    for (int length2 = m.length, j = 0; j < length2; ++j) {
                        list.add(m[j]);
                    }
                    continue;
                }
            }
        }
        return list.toArray(new String[list.size()]);
    }
    
    private static String[] M(final String s) {
        final ArrayList<String> list = new ArrayList<String>();
        if (s != null) {
            try {
                final int index = s.indexOf(58);
                if (index > 0) {
                    int i = Integer.parseInt(s.substring(0, index));
                    final int int1 = Integer.parseInt(s.substring(index + 1));
                    if (i < int1) {
                        while (i <= int1) {
                            list.add(Integer.toString(i));
                            ++i;
                        }
                    }
                    else {
                        while (i >= int1) {
                            list.add(Integer.toString(i));
                            --i;
                        }
                    }
                }
            }
            catch (NumberFormatException ex) {
                E.c(b.mW, "Invalid range value", ex);
            }
        }
        return list.toArray(new String[list.size()]);
    }
}
