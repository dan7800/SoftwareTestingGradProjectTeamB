package com.google.android.gm;

import android.os.*;
import com.android.mail.utils.*;
import java.io.*;
import android.accounts.*;

final class e implements AccountManagerCallback<Bundle>
{
    final /* synthetic */ h aWI;
    
    e(final h awi) {
        this.aWI = awi;
    }
    
    public final void run(final AccountManagerFuture<Bundle> accountManagerFuture) {
        while (true) {
            try {
                accountManagerFuture.getResult();
                final boolean b = true;
                this.aWI.bN(b);
            }
            catch (OperationCanceledException ex) {
                E.b(ay.mW, "promptForCredentials(): User Canceled", new Object[0]);
                final boolean b = false;
                continue;
            }
            catch (IOException ex2) {
                E.b(ay.mW, "promptForCredentials(): IO Error", new Object[0]);
                final boolean b = false;
                continue;
            }
            catch (AuthenticatorException ex3) {
                E.b(ay.mW, "promptForCredentials(): Not Authenticated", new Object[0]);
                final boolean b = false;
                continue;
            }
            break;
        }
    }
}
