package com.android.mail.ui;

import com.google.common.collect.*;
import android.net.*;
import android.support.v4.widget.*;
import android.content.res.*;
import android.content.*;
import com.google.common.base.*;
import com.android.mail.*;
import android.database.*;
import java.util.*;
import android.app.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import java.io.*;
import android.os.*;
import android.widget.*;
import com.android.mail.browse.*;

public final class u implements br
{
    final /* synthetic */ a aEa;
    private final int aEr;
    private final Collection<Conversation> aEs;
    private boolean aEt;
    private final boolean aEu;
    private be aEv;
    
    public u(final a aEa, final int aEr, final Collection<Conversation> collection, final boolean aEu) {
        this.aEa = aEa;
        this.aEr = aEr;
        this.aEs = (Collection<Conversation>)ImmutableList.J((Collection<?>)collection);
        this.aEu = aEu;
    }
    
    private boolean wK() {
        boolean b = true;
        synchronized (this) {
            if (!this.aEt) {
                this.aEt = true;
                b = false;
            }
            return b;
        }
    }
    
    @Override
    public final void a(final be aEv) {
        this.aEv = aEv;
    }
    
    @Override
    public final void wJ() {
        if (!this.wK()) {
            final boolean cy = this.aEa.Nc.cy(16384);
            if (E.isLoggable(a.mW, 3)) {
                E.c(a.mW, "ConversationAction.performAction():\nmTarget=%s\nCurrent=%s", Conversation.o(this.aEs), this.aEa.aCW);
            }
            if (this.aEa.aDh == null) {
                E.f(a.mW, "null ConversationCursor in ConversationAction.performAction():\nmTarget=%s\nCurrent=%s", Conversation.o(this.aEs), this.aEa.aCW);
                return;
            }
            boolean b = false;
            Label_0172: {
                if (this.aEr == 2131559030) {
                    E.c(a.mW, "Archiving", new Object[0]);
                    this.aEa.aDh.b(this.aEs, this.aEv);
                    b = cy;
                }
                else {
                    if (this.aEr == 2131559032) {
                        E.c(a.mW, "Deleting", new Object[0]);
                        this.aEa.aDh.a(this.aEs, this.aEv);
                        if (this.aEa.aqp.cy(2048)) {
                            b = false;
                            break Label_0172;
                        }
                    }
                    else {
                        if (this.aEr == 2131559041) {
                            E.c(a.mW, "Muting", new Object[0]);
                            if (this.aEa.aqp.cy(256)) {
                                final Iterator<Conversation> iterator = this.aEs.iterator();
                                while (iterator.hasNext()) {
                                    iterator.next().azn = true;
                                }
                            }
                            this.aEa.aDh.c(this.aEs, this.aEv);
                            b = cy;
                            break Label_0172;
                        }
                        if (this.aEr == 2131559044) {
                            E.c(a.mW, "Reporting spam", new Object[0]);
                            this.aEa.aDh.d(this.aEs, this.aEv);
                            b = cy;
                            break Label_0172;
                        }
                        if (this.aEr == 2131559045) {
                            E.c(a.mW, "Marking not spam", new Object[0]);
                            this.aEa.aDh.e(this.aEs, this.aEv);
                            b = cy;
                            break Label_0172;
                        }
                        if (this.aEr == 2131559046) {
                            E.c(a.mW, "Reporting phishing", new Object[0]);
                            this.aEa.aDh.f(this.aEs, this.aEv);
                            b = cy;
                            break Label_0172;
                        }
                        if (this.aEr == 2131559054) {
                            E.c(a.mW, "Removing star", new Object[0]);
                            this.aEa.aDh.a(this.aEs, "starred", false);
                            b = cy;
                            break Label_0172;
                        }
                        if (this.aEr == 2131559040) {
                            E.c(a.mW, "Marking not-important", new Object[0]);
                            if (this.aEa.aqp != null && this.aEa.aqp.uW()) {
                                final Iterator<Conversation> iterator2 = this.aEs.iterator();
                                while (iterator2.hasNext()) {
                                    iterator2.next().azn = true;
                                }
                            }
                            this.aEa.aDh.a(this.aEs, "priority", 0);
                            b = cy;
                            break Label_0172;
                        }
                        if (this.aEr == 2131559033) {
                            E.c(a.mW, "Discarding draft messages", new Object[0]);
                            if (this.aEa.aqp != null && this.aEa.aqp.uV()) {
                                final Iterator<Conversation> iterator3 = this.aEs.iterator();
                                while (iterator3.hasNext()) {
                                    iterator3.next().azn = true;
                                }
                            }
                            this.aEa.aDh.g(this.aEs);
                            b = false;
                            break Label_0172;
                        }
                        if (this.aEr == 2131559034) {
                            E.c(a.mW, "Discarding failed messages in Outbox", new Object[0]);
                            this.aEa.aDh.h(this.aEs);
                            b = false;
                            break Label_0172;
                        }
                    }
                    b = cy;
                }
            }
            if (b && this.aEs.size() > 0) {
                this.aEa.mHandler.postDelayed((Runnable)new v(this), (long)this.aEa.aDG);
            }
            this.aEa.ww();
            if (this.aEu) {
                this.aEa.atH.clear();
            }
        }
    }
}
