package com.android.mail.compose;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.inputmethod.*;

public class EnterSubject extends EditText
{
    public EnterSubject(final Context context) {
        super(context);
    }
    
    public EnterSubject(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public EnterSubject(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public InputConnection onCreateInputConnection(final EditorInfo editorInfo) {
        final InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        final int n = 0xFF & editorInfo.imeOptions;
        if ((n & 0x5) != 0x0) {
            editorInfo.imeOptions ^= n;
            editorInfo.imeOptions |= 0x5;
        }
        if ((0x40000000 & editorInfo.imeOptions) != 0x0) {
            editorInfo.imeOptions &= 0xBFFFFFFF;
        }
        return onCreateInputConnection;
    }
}
