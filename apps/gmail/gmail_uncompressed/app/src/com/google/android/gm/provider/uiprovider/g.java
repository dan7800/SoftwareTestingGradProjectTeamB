package com.google.android.gm.provider.uiprovider;

import android.support.v4.f.*;
import android.database.*;
import com.google.common.collect.*;
import com.google.common.a.a.*;
import com.android.mail.utils.*;
import com.google.android.gm.provider.*;
import android.os.*;
import com.android.mail.providers.*;
import java.util.*;

public final class g extends i
{
    private static final String TAG;
    private static final Map<String, Integer> boD;
    private static final V<SenderInstructions> boE;
    private String YZ;
    private final int bdZ;
    private final int bea;
    private final int beb;
    private final int bec;
    private final int bed;
    private final int bee;
    private final int bef;
    private final int beg;
    private final int beh;
    private final int bej;
    private final int bem;
    private final int ben;
    private final Map<String, T> boA;
    private final f<Folder> boB;
    private final HashMap<String, String[]> boC;
    private final String bov;
    private final int bow;
    private final String box;
    private final Map<String, T> boy;
    private boolean boz;
    private final String mAccount;
    
    static {
        TAG = D.AU();
        boD = new y<String, Integer>().p(Gmail$CursorStatus.bez.toString(), 2).p(Gmail$CursorStatus.beA.toString(), 1).p(Gmail$CursorStatus.beD.toString(), 1).p(Gmail$CursorStatus.beC.toString(), 4).p(Gmail$CursorStatus.beB.toString(), 8).Zo();
        boE = new V<SenderInstructions>(new h());
    }
    
    public g(final Cursor cursor, final String mAccount, final String bov, final String[] array) {
        super(cursor, array);
        this.boy = new HashMap<String, T>();
        this.boz = false;
        this.boA = (Map<String, T>)Maps.aan();
        this.boB = new f<Folder>();
        this.boC = Maps.aan();
        this.mAccount = mAccount;
        this.bov = bov;
        this.bdZ = cursor.getColumnIndexOrThrow("_id");
        this.bea = cursor.getColumnIndexOrThrow("subject");
        this.beb = cursor.getColumnIndexOrThrow("snippet");
        this.bec = cursor.getColumnIndexOrThrow("fromAddress");
        this.bed = cursor.getColumnIndex("fromProtoBuf");
        this.bee = cursor.getColumnIndex("fromCompact");
        this.bef = cursor.getColumnIndex("date");
        this.beg = cursor.getColumnIndexOrThrow("personalLevel");
        this.beh = cursor.getColumnIndexOrThrow("numMessages");
        this.bej = cursor.getColumnIndexOrThrow("hasAttachments");
        this.ben = cursor.getColumnIndex("conversationLabels");
        this.bem = cursor.getColumnIndex("synced");
        this.bow = cursor.getColumnIndex("sortMessageId");
        this.box = GmailProvider.eo(this.mAccount).toString();
    }
    
    private void If() {
        if (!this.boz) {
            final Map<String, T> boA = this.boA;
            ag.cJ("loadLabels");
            Y.a(this.mAccount, super.getString(this.ben), boA, this.boy);
            ag.Bi();
            this.YZ = this.eb(this.beb);
            this.boz = true;
        }
    }
    
    private ConversationInfo kb() {
        ConversationInfo conversationInfo = null;
        SenderInstructions senderInstructions = null;
    Label_0170_Outer:
        while (true) {
            final byte[] blob = super.getBlob(this.bee);
            final int int1 = super.getInt(this.beh);
            conversationInfo = new ConversationInfo(int1);
            senderInstructions = g.boE.get();
            while (true) {
            Label_0289:
                while (true) {
                    try {
                        senderInstructions.reset();
                        if (blob != null && blob.length > 0) {
                            ag.cJ("parseCSI-ss");
                            s.a(blob, senderInstructions);
                            ag.Bi();
                            final String yz = this.YZ;
                            final boolean containsKey = this.boA.containsKey("^u");
                            conversationInfo.a(int1, senderInstructions.HN(), yz, yz, yz);
                            for (final by by : senderInstructions.HO()) {
                                if (by.bmZ == SenderInstructions$Visibility.bna) {
                                    if (!containsKey) {
                                        by.apC = false;
                                    }
                                    if (by.apC) {
                                        break Label_0289;
                                    }
                                    final boolean b = true;
                                    conversationInfo.a(new ParticipantInfo(by.name, by.aBF, by.priority, b));
                                }
                            }
                            break;
                        }
                    }
                    finally {
                        g.boE.V(senderInstructions);
                    }
                    final byte[] blob2 = super.getBlob(this.bed);
                    ag.cJ("parseCSI-proto");
                    a g = null;
                    if (blob2 != null) {
                        final int length = blob2.length;
                        g = null;
                        if (length > 0) {
                            g = s.g(blob2);
                        }
                    }
                    if (g != null) {
                        s.a(g, senderInstructions);
                        continue Label_0170_Outer;
                    }
                    s.a(this.eb(this.bec), senderInstructions);
                    continue Label_0170_Outer;
                }
                final boolean b = false;
                continue;
            }
        }
        g.boE.V(senderInstructions);
        return conversationInfo;
    }
    
    private long zC() {
        return super.getLong(this.bdZ);
    }
    
    @Override
    protected final void Ig() {
        super.Ig();
        this.boA.clear();
        this.boz = false;
    }
    
    public final byte[] getBlob(final int n) {
        E.f("Gmail", "UIConversationCursor.getBlob(%d): Unexpected column", n);
        return null;
    }
    
    public final Bundle getExtras() {
        final Bundle extras = super.getExtras();
        final Bundle bundle = new Bundle(extras);
        bundle.putInt("cursor_status", (int)g.boD.get(extras.getString("status")));
        bundle.putInt("cursor_total_count", -1);
        return bundle;
    }
    
    public final int getInt(final int n) {
        this.If();
        int int1 = 0;
        switch (n) {
            default: {
                E.f("Gmail", "UIConversationCursor.getInt(%d): Unexpected column", n);
                int1 = super.getInt(n);
                return int1;
            }
            case 16:
            case 21: {
                return int1;
            }
            case 7: {
                return super.getInt(this.bej);
            }
            case 8: {
                return super.getInt(this.beh);
            }
            case 9: {
                final boolean containsKey = this.boA.containsKey("^r");
                int1 = 0;
                if (containsKey) {
                    return 1;
                }
                return int1;
            }
            case 10: {
                if (this.boA.containsKey("^^failed")) {
                    return -1;
                }
                if (this.boA.containsKey("^^retry")) {
                    return 4;
                }
                if (this.boA.containsKey("^^out")) {
                    return 2;
                }
                final boolean containsKey2 = this.boA.containsKey("^f");
                int1 = 0;
                if (containsKey2) {
                    return 3;
                }
                return int1;
            }
            case 11: {
                final boolean containsKey3 = this.boA.containsKey("^io_im");
                int1 = 0;
                if (containsKey3) {
                    return 1;
                }
                return int1;
            }
            case 12: {
                final boolean containsKey4 = this.boA.containsKey("^u");
                int1 = 0;
                if (!containsKey4) {
                    return 1;
                }
                return int1;
            }
            case 13: {
                final boolean containsKey5 = this.boA.containsKey("^us");
                int1 = 0;
                if (!containsKey5) {
                    return 1;
                }
                return int1;
            }
            case 14: {
                final boolean containsKey6 = this.boA.containsKey("^t");
                int1 = 0;
                if (containsKey6) {
                    return 1;
                }
                return int1;
            }
            case 18: {
                final boolean containsKey7 = this.boA.containsKey("^s");
                int1 = 0;
                if (containsKey7) {
                    return 1;
                }
                return int1;
            }
            case 19: {
                final boolean containsKey8 = this.boA.containsKey("^p");
                int1 = 0;
                if (containsKey8) {
                    return 1;
                }
                return int1;
            }
            case 20: {
                final boolean containsKey9 = this.boA.containsKey("^g");
                int1 = 0;
                if (containsKey9) {
                    return 1;
                }
                return int1;
            }
            case 17: {
                final Gmail$PersonalLevel dn = Gmail$PersonalLevel.dN(super.getInt(this.beg));
                final Gmail$PersonalLevel bfb = Gmail$PersonalLevel.bfb;
                int1 = 0;
                if (dn == bfb) {
                    return int1;
                }
                if (dn == Gmail$PersonalLevel.bfd) {
                    return 2;
                }
                final Gmail$PersonalLevel bfc = Gmail$PersonalLevel.bfc;
                int1 = 0;
                if (dn == bfc) {
                    return 1;
                }
                return int1;
            }
            case 25: {
                final int int2 = super.getInt(this.bem);
                int1 = 0;
                if (int2 == 0) {
                    return 1;
                }
                return int1;
            }
        }
    }
    
    public final long getLong(final int n) {
        this.If();
        switch (n) {
            default: {
                E.f("Gmail", "UIConversationCursor.getLong(%d): Unexpected column", n);
                return super.getLong(n);
            }
            case 0: {
                return this.zC();
            }
            case 6: {
                return super.getLong(this.bef);
            }
            case 26: {
                return super.getLong(this.bow);
            }
        }
    }
    
    public final String getString(final int n) {
        if (n != 1 && n != 3 && n != 2) {
            this.If();
        }
        switch (n) {
            default: {
                E.f("Gmail", "UIConversationCursor.getString(%d): Unexpected column", n);
                return super.getString(n);
            }
            case 1: {
                return GmailProvider.j(this.mAccount, this.zC());
            }
            case 3: {
                return this.eb(this.bea);
            }
            case 4: {
                return this.YZ;
            }
            case 2: {
                return GmailProvider.k(this.mAccount, this.zC()).toString();
            }
            case 23: {
                return null;
            }
            case 22: {
                return this.bov;
            }
            case 24: {
                return this.box;
            }
        }
    }
    
    public final Bundle respond(final Bundle bundle) {
        final Bundle bundle2 = new Bundle(1);
        if (bundle.containsKey("setVisibility")) {
            final boolean boolean1 = bundle.getBoolean("setVisibility");
            if (boolean1) {
                final Bundle bundle3 = new Bundle(2);
                bundle3.putString("command", "setVisible");
                bundle3.putBoolean("visible", boolean1);
                String s;
                if ("ok".equals(super.respond(bundle3).getString("commandResponse"))) {
                    s = "ok";
                }
                else {
                    s = "failed";
                }
                bundle2.putString("setVisibility", s);
            }
        }
        if (bundle.containsKey("uiPositionChange")) {
            final int int1 = bundle.getInt("uiPositionChange");
            final Bundle bundle4 = new Bundle(2);
            bundle4.putString("command", "setUIPosition");
            bundle4.putInt("position", int1);
            String s2;
            if ("ok".equals(super.respond(bundle4).getString("commandResponse"))) {
                s2 = "ok";
            }
            else {
                s2 = "failed";
            }
            bundle2.putString("uiPositionChange", s2);
        }
        if (bundle.containsKey("conversationInfo")) {
            this.If();
            bundle2.putParcelable("conversationInfo", (Parcelable)this.kb());
        }
        if (bundle.containsKey("rawFolders")) {
            this.If();
            ag.cJ("getRawFolders");
            final List<Folder> a = GmailProvider.a(this.mAccount, this.boA, this.boB, this.boC);
            ag.Bi();
            bundle2.putParcelable("rawFolders", (Parcelable)FolderList.p(a));
        }
        return bundle2;
    }
}
