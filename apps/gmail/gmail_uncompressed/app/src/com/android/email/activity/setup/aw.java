package com.android.email.activity.setup;

import com.android.mail.ui.*;
import android.content.*;
import com.android.email.mail.a.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import java.io.*;
import com.android.emailcommon.mail.*;

final class aW extends cp<d>
{
    private final String NS;
    private final String PP;
    
    public aW(final Context context, final String ns, final String pp) {
        super(context);
        this.NS = ns;
        this.PP = pp;
    }
    
    private d iz() {
        try {
            final d b = new c().b(this.getContext(), this.NS, this.PP);
            E.c(com.android.emailcommon.b.mW, "authentication %s", b);
            return b;
        }
        catch (IOException ex) {}
        catch (MessagingException ex2) {
            goto Label_0046;
        }
        catch (AuthenticationFailedException ex3) {
            goto Label_0046;
        }
    }
}
