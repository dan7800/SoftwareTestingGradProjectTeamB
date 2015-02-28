package com.google.android.gms.common.images;

import android.net.*;
import java.util.concurrent.*;
import com.google.android.gms.internal.*;
import java.util.*;
import android.content.*;
import android.os.*;

final class ImageManager$ImageReceiver extends ResultReceiver
{
    private final ArrayList<e> bEy;
    final /* synthetic */ ImageManager bEz;
    private final Uri eM;
    
    public final void onReceiveResult(final int n, final Bundle bundle) {
        this.bEz.bEs.execute(new c(this.bEz, this.eM, (ParcelFileDescriptor)bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
    }
}
