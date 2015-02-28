package com.google.android.gms.people.accountswitcherview;

import com.google.android.gms.people.*;
import android.util.*;
import java.io.*;
import java.util.concurrent.*;
import java.util.*;
import android.content.*;
import android.os.*;
import android.content.res.*;
import android.graphics.*;
import android.widget.*;
import android.graphics.drawable.*;
import com.google.android.gms.common.api.*;

final class q extends AsyncTask<Void, Void, Bitmap>
{
    final int GN;
    final /* synthetic */ o chE;
    final p chF;
    final ParcelFileDescriptor chG;
    final Bitmap chH;
    
    q(final o chE, final p chF, final ParcelFileDescriptor chG, final Bitmap chH, final int gn) {
        this.chE = chE;
        this.chF = chF;
        this.chG = chG;
        this.chH = chH;
        this.GN = gn;
    }
    
    private Bitmap UV() {
        try {
            Bitmap bitmap = z.c(this.chG);
            Label_0074: {
                if (!this.chE.chA) {
                    break Label_0074;
                }
                if (bitmap == null) {
                    bitmap = this.chH;
                }
                Bitmap bitmap2 = h.f(bitmap);
                while (true) {
                    this.chE.chx.put(this.chF.acw, bitmap2);
                    if (this.chG == null) {
                        return bitmap2;
                    }
                    try {
                        this.chG.close();
                        return bitmap2;
                        // iftrue(Label_0088:, bitmap != null)
                        Block_6: {
                            break Block_6;
                            Label_0088: {
                                bitmap2 = o.a(bitmap, this.GN, this.chE.chB / this.chE.chC);
                            }
                            continue;
                        }
                        bitmap2 = this.chH;
                    }
                    catch (IOException ex) {
                        Log.d("OwnersImageManager", ex.getMessage());
                        return bitmap2;
                    }
                    break;
                }
            }
        }
        finally {
            Label_0152: {
                if (this.chG == null) {
                    break Label_0152;
                }
                try {
                    this.chG.close();
                }
                catch (IOException ex2) {
                    Log.d("OwnersImageManager", ex2.getMessage());
                }
            }
        }
    }
}
