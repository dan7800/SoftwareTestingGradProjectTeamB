package com.google.android.gms.internal;

import android.webkit.*;
import android.net.*;
import android.util.*;
import android.content.*;
import android.view.*;

public final class v extends WebView implements DownloadListener
{
    private final w bST;
    private final Object bSU;
    private final ap bSV;
    private bd bSW;
    private boolean bSX;
    private boolean bSY;
    
    private boolean isDestroyed() {
        synchronized (this.bSU) {
            return this.bSY;
        }
    }
    
    public final void destroy() {
        synchronized (this.bSU) {
            super.destroy();
            this.bSY = true;
        }
    }
    
    public final void evaluateJavascript(final String s, final ValueCallback<String> valueCallback) {
        synchronized (this.bSU) {
            if (this.isDestroyed()) {
                t.gk("The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue((Object)null);
                }
                return;
            }
            super.evaluateJavascript(s, (ValueCallback)valueCallback);
        }
    }
    
    public final void onDownloadStart(final String s, final String s2, final String s3, final String s4, final long n) {
        try {
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(s), s4);
            this.getContext().startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            final String string = "Couldn't find an Activity to view url/mimetype: " + s + " / " + s4;
            if (t.eF(3)) {
                Log.d("Ads", string);
            }
        }
    }
    
    protected final void onMeasure(final int n, final int n2) {
        int n3;
        int mode;
        int size = 0;
        int mode2 = 0;
        int size2 = 0;
        float density;
        int n4;
        Label_0100_Outer:Label_0077_Outer:
        while (true) {
            n3 = Integer.MAX_VALUE;
            while (true) {
                Label_0277: {
                    Label_0273: {
                        Label_0267: {
                            synchronized (this.bSU) {
                                if (this.isInEditMode() || this.bSX) {
                                    super.onMeasure(n, n2);
                                    return;
                                }
                                mode = View$MeasureSpec.getMode(n);
                                size = View$MeasureSpec.getSize(n);
                                mode2 = View$MeasureSpec.getMode(n2);
                                size2 = View$MeasureSpec.getSize(n2);
                                if (mode != Integer.MIN_VALUE && mode != 1073741824) {
                                    break Label_0267;
                                }
                                break Label_0273;
                                // iftrue(Label_0214:, this.getVisibility() == 8)
                                // iftrue(Label_0232:, this.bSW.widthPixels <= n4 && this.bSW.heightPixels <= n3)
                                Label_0214: {
                                    while (true) {
                                        while (true) {
                                            this.setVisibility(4);
                                            break Label_0214;
                                            density = this.bST.getResources().getDisplayMetrics().density;
                                            t.gk("Not enough space to show ad. Needs " + (int)(this.bSW.widthPixels / density) + "x" + (int)(this.bSW.heightPixels / density) + " dp, but only has " + (int)(size / density) + "x" + (int)(size2 / density) + " dp.");
                                            continue Label_0100_Outer;
                                        }
                                        continue Label_0077_Outer;
                                    }
                                }
                                this.setMeasuredDimension(0, 0);
                                return;
                            }
                            Label_0232: {
                                if (this.getVisibility() != 8) {
                                    this.setVisibility(0);
                                }
                            }
                            this.setMeasuredDimension(this.bSW.widthPixels, this.bSW.heightPixels);
                            return;
                        }
                        n4 = n3;
                        break Label_0277;
                    }
                    n4 = size;
                }
                if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                    n3 = size2;
                    continue;
                }
                continue;
            }
        }
    }
    
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        if (this.bSV != null) {
            this.bSV.Re();
        }
        return super.onTouchEvent(motionEvent);
    }
}
