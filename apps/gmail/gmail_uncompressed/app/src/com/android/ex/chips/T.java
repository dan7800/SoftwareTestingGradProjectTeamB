package com.android.ex.chips;

import android.net.*;
import android.content.res.*;
import android.provider.*;

final class t extends v
{
    t(final String[] array, final Uri uri, final Uri uri2) {
        super(array, uri, uri2);
    }
    
    @Override
    public final CharSequence getTypeLabel(final Resources resources, final int n, final CharSequence charSequence) {
        return ContactsContract$CommonDataKinds$Phone.getTypeLabel(resources, n, charSequence);
    }
}
