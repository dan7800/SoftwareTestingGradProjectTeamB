package com.google.android.gm;

import com.android.mail.utils.*;
import java.io.*;
import android.accounts.*;

final class b implements AccountManagerCallback<Account[]>
{
    final /* synthetic */ f aWD;
    final /* synthetic */ a aWE;
    
    b(final a awe, final f awd) {
        this.aWE = awe;
        this.aWD = awd;
    }
    
    public final void run(final AccountManagerFuture<Account[]> accountManagerFuture) {
        while (true) {
            try {
                final Account[] array = (Account[])accountManagerFuture.getResult();
                this.aWD.a(array);
            }
            catch (OperationCanceledException ex) {
                E.d(ay.mW, (Throwable)ex, "Unexpected exception trying to get accounts.", new Object[0]);
                final Account[] array = null;
                continue;
            }
            catch (IOException ex2) {
                E.d(ay.mW, ex2, "Unexpected exception trying to get accounts.", new Object[0]);
                final Account[] array = null;
                continue;
            }
            catch (AuthenticatorException ex3) {
                E.d(ay.mW, (Throwable)ex3, "Unexpected exception trying to get accounts.", new Object[0]);
                final Account[] array = null;
                continue;
            }
            break;
        }
    }
}
