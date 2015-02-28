package com.android.ex.chips;

import java.util.regex.*;
import android.app.*;
import android.content.res.*;
import android.text.method.*;
import android.util.*;
import android.graphics.*;
import android.text.util.*;
import android.text.*;
import android.graphics.drawable.*;
import com.android.ex.chips.a.*;
import android.view.inputmethod.*;
import android.content.*;
import java.util.*;
import android.view.accessibility.*;
import android.view.*;
import android.widget.*;
import android.os.*;

final class ad implements TextWatcher
{
    final /* synthetic */ RecipientEditTextView aeX;
    
    private ad(final RecipientEditTextView aeX) {
        this.aeX = aeX;
    }
    
    public final void afterTextChanged(final Editable editable) {
        int i = 0;
        if (TextUtils.isEmpty((CharSequence)editable)) {
            final Spannable ml = this.aeX.mL();
            for (b[] array = (b[])ml.getSpans(0, this.aeX.getText().length(), (Class)b.class); i < array.length; ++i) {
                ml.removeSpan((Object)array[i]);
            }
            if (this.aeX.aeA != null) {
                ml.removeSpan((Object)this.aeX.aeA);
            }
            this.aeX.mM();
        }
        else if (this.aeX.aeF <= 0 && (this.aeX.aeK == null || this.aeX.aeK.size() <= 0)) {
            if (this.aeX.aey != null) {
                if (this.aeX.g(this.aeX.aey)) {
                    return;
                }
                this.aeX.setCursorVisible(true);
                this.aeX.setSelection(this.aeX.getText().length());
                this.aeX.mM();
            }
            if (editable.length() > 1) {
                if (this.aeX.p((CharSequence)editable)) {
                    RecipientEditTextView.s(this.aeX);
                    return;
                }
                int n;
                if (this.aeX.getSelectionEnd() == 0) {
                    n = 0;
                }
                else {
                    n = -1 + this.aeX.getSelectionEnd();
                }
                final int n2 = -1 + this.aeX.length();
                char c;
                if (n != n2) {
                    c = editable.charAt(n);
                }
                else {
                    c = editable.charAt(n2);
                }
                if (c == ' ' && !this.aeX.mQ()) {
                    final String string = this.aeX.getText().toString();
                    final int tokenStart = this.aeX.aeq.findTokenStart((CharSequence)string, this.aeX.getSelectionEnd());
                    if (this.aeX.aM(string.substring(tokenStart, this.aeX.aeq.findTokenEnd((CharSequence)string, tokenStart)))) {
                        RecipientEditTextView.s(this.aeX);
                    }
                }
            }
        }
    }
    
    public final void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public final void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
        if (n2 - n3 == 1) {
            final int selectionStart = this.aeX.getSelectionStart();
            final b[] array = (b[])this.aeX.mL().getSpans(selectionStart, selectionStart, (Class)b.class);
            if (array.length > 0) {
                final Editable text = this.aeX.getText();
                final int tokenStart = this.aeX.aeq.findTokenStart((CharSequence)text, selectionStart);
                int length = 1 + this.aeX.aeq.findTokenEnd((CharSequence)text, tokenStart);
                if (length > text.length()) {
                    length = text.length();
                }
                text.delete(tokenStart, length);
                this.aeX.mL().removeSpan((Object)array[0]);
            }
        }
        else if (n3 > n2 && this.aeX.aey != null && this.aeX.g(this.aeX.aey) && this.aeX.p(charSequence)) {
            RecipientEditTextView.s(this.aeX);
        }
    }
}
