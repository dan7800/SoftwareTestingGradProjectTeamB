package com.android.mail.ui;

import com.android.mail.providers.*;
import android.content.*;
import android.util.*;
import com.android.mail.utils.*;
import android.view.*;
import java.util.*;
import android.widget.*;
import com.android.mail.c.*;
import android.graphics.*;
import android.database.*;

final class cA implements View$OnClickListener
{
    public final ImageView aKf;
    final /* synthetic */ MiniDrawerView aMf;
    public final Folder ajS;
    
    public cA(final MiniDrawerView aMf, final Folder ajS, final ImageView aKf) {
        this.aMf = aMf;
        this.ajS = ajS;
        this.aKf = aKf;
        Folder.a(this.ajS, this.aKf);
        this.aKf.setOnClickListener((View$OnClickListener)this);
    }
    
    public final void onClick(final View view) {
        this.aMf.aMd.b(this.ajS, "mini-drawer");
    }
}
