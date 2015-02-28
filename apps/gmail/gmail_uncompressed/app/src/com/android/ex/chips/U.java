package com.android.ex.chips;

import android.net.*;
import android.content.res.*;
import android.provider.*;

final class u extends v
{
    u(final String[] array, final Uri uri, final Uri uri2) {
        super(array, uri, uri2);
    }
    
    @Override
    public final CharSequence getTypeLabel(final Resources resources, final int n, final CharSequence charSequence) {
        return ContactsContract$CommonDataKinds$Email.getTypeLabel(resources, n, charSequence);
    }
}
