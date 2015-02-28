package com.google.android.gm.ui;

import android.text.style.*;
import android.graphics.drawable.*;
import android.content.res.*;
import android.net.*;
import java.util.*;
import android.graphics.*;
import android.content.*;
import com.google.common.collect.*;
import com.android.mail.compose.*;
import android.text.*;

public class g extends ReplacementSpan
{
    private final int Fx;
    private int GN;
    private final float La;
    private final Rect aea;
    private final TextPaint alm;
    private final Paint$FontMetricsInt bpH;
    private final int bpI;
    private final int bpJ;
    private final int bpK;
    private final int bpL;
    private CharSequence bpM;
    private final int bpN;
    final /* synthetic */ e bpO;
    private final int mu;
    private final Drawable vh;
    
    public g(final e bpO) {
        this.bpO = bpO;
        this.alm = new TextPaint();
        this.aea = new Rect();
        this.bpH = new Paint$FontMetricsInt();
        final Resources resources = bpO.bcb.getResources();
        this.bpI = resources.getDimensionPixelSize(2131493206);
        this.bpJ = resources.getDimensionPixelSize(2131493207);
        this.Fx = resources.getDimensionPixelSize(2131493208);
        this.La = resources.getDimension(2131493205);
        this.mu = -657931;
        this.bpL = -14540254;
        this.bpK = -15641140;
        final String ip = this.Ip();
        int intValue;
        if ((this.bpO.bpC != null && this.bpO.bpC.endsWith("icon_11_image_list.png")) || ip.startsWith("image/")) {
            intValue = 2130837676;
        }
        else if ((this.bpO.bpC != null && this.bpO.bpC.endsWith("icon_11_video_list.png")) || ip.startsWith("video/")) {
            intValue = 2130837686;
        }
        else if (e.bpD.containsKey(ip)) {
            intValue = e.bpD.get(ip);
        }
        else {
            intValue = 2130837685;
        }
        this.vh = resources.getDrawable(intValue);
        this.bpN = this.vh.getIntrinsicWidth();
    }
    
    private String Ip() {
        if (!TextUtils.isEmpty((CharSequence)this.bpO.mimeType)) {
            return this.bpO.mimeType;
        }
        if (!TextUtils.isEmpty((CharSequence)this.bpO.bpC)) {
            final String lastPathSegment = Uri.parse(this.bpO.bpC).getLastPathSegment();
            if (lastPathSegment != null) {
                for (final Map.Entry<String, String> entry : e.bpE.entrySet()) {
                    if (lastPathSegment.equals(entry.getValue())) {
                        return entry.getKey();
                    }
                }
            }
        }
        return "";
    }
    
    private void a(final Paint$FontMetricsInt paint$FontMetricsInt, final Paint paint) {
        this.alm.set(paint);
        this.alm.setTextSize(this.La);
        this.alm.setTypeface(Typeface.DEFAULT_BOLD);
        if (paint$FontMetricsInt != null) {
            this.alm.getFontMetricsInt(paint$FontMetricsInt);
        }
    }
    
    public final e Iq() {
        return this.bpO;
    }
    
    public void draw(final Canvas canvas, final CharSequence charSequence, final int n, final int n2, final float n3, final int n4, final int n5, final int n6, final Paint paint) {
        this.a(this.bpH, paint);
        this.bpH.top = Math.min(this.bpH.top, this.bpH.ascent - this.bpI);
        this.bpH.bottom = Math.max(this.bpH.bottom, this.bpI);
        final int n7 = n5 + this.bpH.top;
        final int n8 = n5 + this.bpH.bottom;
        final int round = Math.round(n3);
        this.aea.set(round + this.bpJ, n7, round + this.GN - this.bpJ, n8);
        this.aea.inset(1, 1);
        this.alm.setColor(this.bpL);
        this.alm.setStyle(Paint$Style.STROKE);
        this.alm.setStrokeWidth(0.0f);
        canvas.drawRect(this.aea, (Paint)this.alm);
        this.alm.setColor(this.mu);
        this.alm.setStyle(Paint$Style.FILL);
        canvas.drawRect(this.aea, (Paint)this.alm);
        final int n9 = n7 + (n8 - n7 - this.vh.getIntrinsicHeight()) / 2;
        this.vh.setBounds(round + this.bpJ + this.bpI, n9, round + this.bpJ + this.bpI + this.bpN, n9 + this.vh.getIntrinsicHeight());
        this.vh.draw(canvas);
        this.alm.setColor(this.bpK);
        this.alm.setTextSize(this.La);
        this.alm.setTypeface(Typeface.DEFAULT_BOLD);
        canvas.drawText(this.bpM, 0, this.bpM.length(), (float)(round + this.bpJ + this.bpI + this.bpN + this.bpI), (float)n5, (Paint)this.alm);
    }
    
    public int getSize(final Paint paint, final CharSequence charSequence, final int n, final int n2, final Paint$FontMetricsInt paint$FontMetricsInt) {
        this.a(paint$FontMetricsInt, paint);
        if (paint$FontMetricsInt != null) {
            final int n3 = this.bpJ / 2;
            paint$FontMetricsInt.ascent = Math.min(paint$FontMetricsInt.top, paint$FontMetricsInt.ascent - this.bpI) - n3;
            paint$FontMetricsInt.descent = n3 + Math.max(paint$FontMetricsInt.bottom, this.bpI);
            paint$FontMetricsInt.top = paint$FontMetricsInt.ascent;
            paint$FontMetricsInt.bottom = paint$FontMetricsInt.descent;
        }
        this.bpM = TextUtils.ellipsize((CharSequence)this.bpO.name, this.alm, (float)this.Fx, TextUtils$TruncateAt.END);
        return this.GN = (int)this.alm.measureText(this.bpM, 0, this.bpM.length()) + this.bpI + this.bpN + 2 * this.bpI + 2 * this.bpJ;
    }
}
