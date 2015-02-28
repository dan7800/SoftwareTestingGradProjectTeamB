package com.google.android.gms.common.images;

import android.net.*;
import java.util.concurrent.*;
import com.google.android.gms.internal.*;
import java.util.*;
import android.content.*;
import android.os.*;

public final class ImageManager
{
    private static final Object bEq;
    private static HashSet<Uri> bEr;
    private final ExecutorService bEs;
    private final b bEt;
    private final O bEu;
    private final Map<e, ImageManager$ImageReceiver> bEv;
    private final Map<Uri, ImageManager$ImageReceiver> bEw;
    private final Map<Uri, Long> bEx;
    private final Context mContext;
    private final Handler mHandler;
    
    static {
        bEq = new Object();
        ImageManager.bEr = new HashSet<Uri>();
    }
}
