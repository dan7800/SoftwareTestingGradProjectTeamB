package com.google.android.gm;

import com.google.common.base.*;
import android.accounts.*;

final class c implements b<Account, String>
{
    final /* synthetic */ a aWE;
    
    c(final a awe) {
        this.aWE = awe;
    }
    
    @Override
    public final String apply(final Account account) {
        return account.name;
    }
}
