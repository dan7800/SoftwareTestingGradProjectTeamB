package com.android.mail.j;

import com.android.mail.ui.*;
import android.content.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import java.io.*;

public final class a extends M
{
    private static final String TAG;
    private final String axW;
    private final String axX;
    private final String axY;
    private final String axZ;
    private final String aya;
    
    static {
        TAG = D.AU();
    }
    
    public a(final Context context) {
        super(context);
        this.axW = this.cK(2131165192);
        this.axX = this.cK(2131165193);
        this.axY = this.cK(2131165190);
        this.axZ = this.cK(2131165191);
        this.aya = this.cK(2131165185);
    }
    
    public final void a(final String s, final String s2, final String s3, final String s4, final String s5, final String s6) {
        this.b(this.axX, s, s2, s3, s4, s5, s6);
    }
    
    public final void e(final String s, final int n) {
        if (this.Um) {
            throw new IllegalStateException("Should not call startPrintConversation twice");
        }
        this.reset();
        this.b(this.axW, this.aya, this.mContext.getString(2131296377), Conversation.e(this.mContext, null, s), this.mContext.getResources().getQuantityString(2131820563, n, new Object[] { n }));
        this.Um = true;
    }
    
    public final String ub() {
        if (!this.Um) {
            throw new IllegalStateException("must call startConversation first");
        }
        this.b(this.axY, this.mContext.getString(2131296676));
        this.Um = false;
        E.c(a.TAG, "rendered conversation of %d bytes, buffer capacity=%d", this.gJ.length() << 1, this.gJ.capacity() << 1);
        return this.xf();
    }
    
    public final String uc() {
        if (!this.Um) {
            throw new IllegalStateException("must call startConversation first");
        }
        this.b(this.axZ, new Object[0]);
        this.Um = false;
        E.c(a.TAG, "rendered conversation of %d bytes, buffer capacity=%d", this.gJ.length() << 1, this.gJ.capacity() << 1);
        return this.xf();
    }
}
