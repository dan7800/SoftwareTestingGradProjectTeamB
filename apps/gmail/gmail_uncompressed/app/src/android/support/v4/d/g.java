package android.support.v4.d;

import android.net.*;
import android.print.*;
import android.os.*;
import android.content.*;
import android.graphics.*;
import android.util.*;
import java.io.*;

final class g extends AsyncTask<Uri, Boolean, Bitmap>
{
    final /* synthetic */ CancellationSignal fT;
    final /* synthetic */ PrintAttributes fU;
    final /* synthetic */ PrintAttributes fV;
    final /* synthetic */ PrintDocumentAdapter$LayoutResultCallback fW;
    final /* synthetic */ f fX;
    
    g(final f fx, final CancellationSignal ft, final PrintAttributes fu, final PrintAttributes fv, final PrintDocumentAdapter$LayoutResultCallback fw) {
        this.fX = fx;
        this.fT = ft;
        this.fU = fu;
        this.fV = fv;
        this.fW = fw;
    }
    
    private Bitmap aB() {
        try {
            return e.a(this.fX.fS, this.fX.fP);
        }
        catch (FileNotFoundException ex) {
            return null;
        }
    }
    
    protected final void onPreExecute() {
        this.fT.setOnCancelListener((CancellationSignal$OnCancelListener)new h(this));
    }
}
