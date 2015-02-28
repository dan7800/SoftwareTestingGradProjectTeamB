package com.android.mail.ui;

import android.content.*;
import android.database.*;
import android.view.*;
import android.widget.*;
import com.android.mail.providers.*;

final class cs extends SimpleCursorAdapter
{
    final /* synthetic */ MailboxSelectionActivity aLp;
    
    cs(final MailboxSelectionActivity aLp, final Context context, final Cursor cursor, final String[] array, final int[] array2) {
        this.aLp = aLp;
        super(context, 2130968723, cursor, array, array2, 0);
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        final View view2 = super.getView(n, view, viewGroup);
        final TextView textView = (TextView)view2.findViewById(2131558863);
        Account.ue();
        textView.setText((CharSequence)c.j((Cursor)this.getItem(n)).getDisplayName());
        return view2;
    }
}
