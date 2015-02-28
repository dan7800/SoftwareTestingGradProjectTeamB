package com.google.android.gm.provider;

import com.google.common.a.a.*;
import com.android.mail.utils.*;
import android.util.*;
import java.util.*;
import java.io.*;

public final class bv
{
    public static void a(final a a, final int n, final Collection<Long> collection) {
        for (int fa = a.fA(n), i = 0; i < fa; ++i) {
            collection.add(a.getLong(n, i));
        }
    }
    
    public static void b(final a a, final int n, final Collection<a> collection) {
        for (int fa = a.fA(n), i = 0; i < fa; ++i) {
            collection.add(a.ap(n, i));
        }
    }
    
    public static void c(final a a, final int n, final Collection<String> collection) {
        for (int fa = a.fA(n), i = 0; i < fa; ++i) {
            collection.add(a.getString(n, i));
        }
    }
    
    public static void g(final a a) {
        a fy;
        long long1;
        int int1;
        boolean b;
        boolean b2;
        boolean b3;
        int int2;
        ArrayList<Long> list;
        a fy2;
        a fy3;
        Label_0101_Outer:Label_0110_Outer:Label_0119_Outer:
        while (true) {
            E.d("Gmail", "ForwardSyncProto: operationid: %d", a.getLong(1));
            Label_0308: {
                while (true) {
                Label_0302:
                    while (true) {
                    Label_0296:
                        while (true) {
                            while (true) {
                                try {
                                    E.d("Gmail", "Proto: %s", new String(Base64.encode(a.toByteArray(), 2)));
                                    if (!a.bJ(2)) {
                                        break Label_0308;
                                    }
                                    fy = a.fy(2);
                                    long1 = fy.getLong(2);
                                    int1 = fy.getInt(1);
                                    if (int1 == 0) {
                                        b = true;
                                        if (int1 != 1) {
                                            break Label_0296;
                                        }
                                        b2 = true;
                                        if (int1 == 2) {
                                            b3 = true;
                                            E.d("Gmail", "ForwardSyncProto: ThreadLabelOrUnlabeled, conversationId: %d,labelAdded: %b labelRemoved: %b messagesExpunged: %b", long1, b, b2, b3);
                                            if (b || b2) {
                                                E.d("Gmail", "ForwardSyncProto: ThreadLabelOrUnLabel, labelId: %d", fy.getLong(3));
                                            }
                                            int2 = fy.getInt(4);
                                            list = new ArrayList<Long>();
                                            a(fy, 5, list);
                                            E.d("Gmail", "ForwardSyncProto: syncRationale: %d, messageIds: %s", int2, list);
                                            return;
                                        }
                                        break Label_0302;
                                    }
                                }
                                catch (IOException ex) {
                                    E.e("Gmail", ex, "Error reading proto", new Object[0]);
                                    continue Label_0101_Outer;
                                }
                                break;
                            }
                            b = false;
                            continue Label_0110_Outer;
                        }
                        b2 = false;
                        continue Label_0119_Outer;
                    }
                    b3 = false;
                    continue;
                }
            }
            if (a.bJ(3)) {
                fy2 = a.fy(3);
                E.d("Gmail", "ForwardSyncProto: LabelCreated, labelId: %d canonicalName: %sdisplayName: %s", fy2.getLong(1), fy2.getString(2), fy2.getString(3));
                return;
            }
            if (a.bJ(4)) {
                fy3 = a.fy(4);
                E.d("Gmail", "ForwardSyncProto: LabelRenamed, labelId: %d newCanonicalName: %s newDisplayName: %s", fy3.getLong(1), fy3.getString(2), fy3.getString(3));
                return;
            }
            if (a.bJ(5)) {
                E.d("Gmail", "ForwardSyncProto: LabelDeleted, labelId: %d", a.fy(5).getLong(1));
                return;
            }
            if (a.bJ(8)) {
                E.d("Gmail", "ForwardSyncProto: CheckConversation", new Object[0]);
                return;
            }
            if (a.bJ(9)) {
                E.d("Gmail", "ForwardSyncProto: PreferenceChanged", new Object[0]);
            }
        }
    }
}
