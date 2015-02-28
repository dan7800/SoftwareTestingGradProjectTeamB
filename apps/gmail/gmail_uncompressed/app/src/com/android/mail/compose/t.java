package com.android.mail.compose;

import android.database.*;
import android.support.v7.app.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.*;
import android.graphics.*;
import android.net.*;
import com.android.b.*;
import android.text.util.*;
import android.content.res.*;
import com.android.emailcommon.mail.*;
import android.view.inputmethod.*;
import android.text.*;
import java.net.*;
import android.annotation.*;
import java.util.*;
import com.google.common.collect.*;
import java.io.*;
import android.os.*;
import android.support.v4.app.*;
import com.android.ex.chips.*;
import android.widget.*;
import com.android.mail.ui.*;
import android.app.*;
import android.content.*;
import android.view.*;
import com.android.mail.providers.*;
import com.google.android.mail.common.html.parser.*;
import com.android.mail.utils.*;

final class t implements TextWatcher
{
    final /* synthetic */ g awi;
    private HashMap<String, Integer> awv;
    private RecipientEditTextView aww;
    private TextWatcher awx;
    
    public t(final g awi, final RecipientEditTextView aww, final TextWatcher awx) {
        this.awi = awi;
        this.awv = new HashMap<String, Integer>();
        this.aww = aww;
        this.awx = awx;
    }
    
    public final void afterTextChanged(final Editable editable) {
        final g awi = this.awi;
        final ArrayList l = k(g.A(this.aww));
        final int size = l.size();
        final Iterator<Map.Entry<String, Integer>> iterator = this.awv.entrySet().iterator();
        int n = 0;
        while (iterator.hasNext()) {
            n += iterator.next().getValue();
        }
        int n2 = 0;
        Label_0088: {
            if (size != n) {
                n2 = 1;
            }
            else {
                final Iterator<String> iterator2 = l.iterator();
                Block_6: {
                    while (true) {
                        final boolean hasNext = iterator2.hasNext();
                        n2 = 0;
                        if (!hasNext) {
                            break Label_0088;
                        }
                        final String s = iterator2.next();
                        if (!this.awv.containsKey(s)) {
                            break;
                        }
                        final int n3 = -1 + this.awv.get(s);
                        if (n3 < 0) {
                            break Block_6;
                        }
                        this.awv.put(s, n3);
                    }
                    n2 = 1;
                    break Label_0088;
                }
                n2 = 1;
            }
        }
        if (n2 != 0) {
            this.awx.afterTextChanged(editable);
        }
    }
    
    public final void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
        final g awi = this.awi;
        for (final String s : k(g.A(this.aww))) {
            if (!this.awv.containsKey(s)) {
                this.awv.put(s, 1);
            }
            else {
                this.awv.put(s, 1 + this.awv.get(s));
            }
        }
    }
    
    public final void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
}
