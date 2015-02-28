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

final class N extends Handler
{
    final /* synthetic */ RecipientEditTextView aeX;
    
    N(final RecipientEditTextView aeX) {
        this.aeX = aeX;
    }
    
    public final void handleMessage(final Message message) {
        if (message.what == RecipientEditTextView.adY) {
            ((ListPopupWindow)message.obj).dismiss();
            return;
        }
        super.handleMessage(message);
    }
}
