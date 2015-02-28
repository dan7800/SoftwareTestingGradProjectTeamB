package com.android.mail.providers;

import android.net.*;
import com.android.mail.c.*;
import com.android.mail.utils.*;
import android.database.*;
import android.text.*;
import com.android.mail.browse.*;
import android.os.*;
import com.google.common.collect.*;
import android.content.*;
import java.util.*;

public final class i
{
    private long Ln;
    private String YL;
    private int asT;
    private int azA;
    private int azB;
    private boolean azC;
    private boolean azD;
    private boolean azE;
    private Uri azF;
    private ConversationInfo azG;
    private Uri azH;
    private boolean azI;
    private String azJ;
    private long azK;
    private long azt;
    private boolean azu;
    private Uri azv;
    private boolean azw;
    private boolean azx;
    private boolean azy;
    private FolderList azz;
    private int do;
    private Uri eM;
    
    public final i a(final ConversationInfo azG) {
        if (azG == null) {
            throw new IllegalArgumentException("Can't set null ConversationInfo");
        }
        this.azG = azG;
        return this;
    }
    
    public final i bM(final String yl) {
        this.YL = yl;
        return this;
    }
    
    public final i bh(final boolean azy) {
        this.azy = azy;
        return this;
    }
    
    public final Conversation uM() {
        if (this.azG == null) {
            E.c(Conversation.mW, "Null conversationInfo in Builder", new Object[0]);
            this.azG = new ConversationInfo();
        }
        final long ln = this.Ln;
        final Uri em = this.eM;
        final String yl = this.YL;
        final long azt = this.azt;
        final boolean azu = this.azu;
        final Uri azv = this.azv;
        final int asT = this.asT;
        final int do1 = this.do;
        final boolean azw = this.azw;
        final boolean azx = this.azx;
        final boolean azy = this.azy;
        final FolderList azz = this.azz;
        final int azA = this.azA;
        final int azB = this.azB;
        final boolean azC = this.azC;
        final boolean azD = this.azD;
        final boolean azE = this.azE;
        final Uri azF = this.azF;
        final ConversationInfo azG = this.azG;
        final Uri azH = this.azH;
        final boolean azI = this.azI;
        final String azJ = this.azJ;
        return new Conversation(ln, em, yl, azt, azu, azv, asT, do1, azw, azx, azy, azz, azA, azB, azC, azD, azE, azF, azG, azH, azI, this.azK, (byte)0);
    }
}
