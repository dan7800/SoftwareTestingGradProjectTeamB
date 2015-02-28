package com.google.android.gm.photo;

import com.android.ex.photo.*;
import com.android.mail.g.*;
import android.view.*;
import com.google.android.gm.*;

public class GmailPhotoViewActivity extends b
{
    @Override
    public final com.android.ex.photo.k nF() {
        return new com.google.android.gm.photo.b(this);
    }
    
    @Override
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        return ay.dA(n) || super.onKeyDown(n, keyEvent);
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        if (ay.dA(n)) {
            this.openOptionsMenu();
            return true;
        }
        return super.onKeyUp(n, keyEvent);
    }
}
