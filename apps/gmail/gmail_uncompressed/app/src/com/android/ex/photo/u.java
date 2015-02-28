package com.android.ex.photo;

import com.android.ex.photo.c.*;
import android.support.v4.content.*;
import android.graphics.drawable.*;
import android.database.*;
import android.widget.*;
import com.android.ex.photo.a.*;
import android.os.*;
import java.util.*;
import android.view.animation.*;
import android.net.*;
import android.support.v4.view.*;
import android.text.*;
import android.support.v4.app.*;
import android.util.*;
import android.app.*;
import com.android.ex.photo.util.*;
import android.content.*;
import android.content.res.*;
import android.view.*;

final class u implements L<c>
{
    final /* synthetic */ k ahp;
    
    private u(final k ahp) {
        this.ahp = ahp;
    }
    
    @Override
    public final j<c> a(final int n, final Bundle bundle) {
        final String string = bundle.getString("image_uri");
        switch (n) {
            default: {
                return null;
            }
            case 2: {
                return this.ahp.e(2, string);
            }
            case 1: {
                return this.ahp.e(1, string);
            }
        }
    }
    
    @Override
    public final void a(final j<c> j) {
    }
}
