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
import java.net.*;
import android.annotation.*;
import java.util.*;
import com.google.common.collect.*;
import java.io.*;
import android.os.*;
import android.support.v4.app.*;
import com.android.ex.chips.*;
import android.widget.*;
import android.text.*;
import com.android.mail.ui.*;
import android.app.*;
import android.content.*;
import android.view.*;
import com.android.mail.providers.*;
import com.google.android.mail.common.html.parser.*;
import com.android.mail.utils.*;

final class h implements View$OnKeyListener
{
    final /* synthetic */ g awi;
    
    h(final g awi) {
        this.awi = awi;
    }
    
    public final boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
        if (keyEvent.hasModifiers(4096) && n == 66 && keyEvent.getAction() == 1) {
            this.awi.sx();
            return true;
        }
        return false;
    }
}
