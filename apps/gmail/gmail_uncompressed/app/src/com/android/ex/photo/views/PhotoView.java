package com.android.ex.photo.views;

import android.content.*;
import android.util.*;
import com.android.ex.photo.*;
import android.support.v4.view.*;
import android.content.res.*;
import android.graphics.drawable.*;
import android.graphics.*;
import android.view.*;

public class PhotoView extends View implements GestureDetector$OnDoubleTapListener, GestureDetector$OnGestureListener, ScaleGestureDetector$OnScaleGestureListener
{
    private static int aiJ;
    private static boolean aiK;
    private static int aiL;
    private static Bitmap aiM;
    private static Bitmap aiN;
    private static Paint aiO;
    private static Paint aiP;
    private Drawable Aj;
    private boolean agW;
    private Matrix aiQ;
    private Matrix aiR;
    private int aiS;
    private boolean aiT;
    private byte[] aiU;
    private boolean aiV;
    private boolean aiW;
    private Rect aiX;
    private int aiY;
    private float aiZ;
    private float aig;
    private q aja;
    private ScaleGestureDetector ajb;
    private View$OnClickListener ajc;
    private boolean ajd;
    private boolean aje;
    private boolean ajf;
    private boolean ajg;
    private b ajh;
    private float aji;
    private d ajj;
    private c ajk;
    private a ajl;
    private RectF ajm;
    private RectF ajn;
    private RectF ajo;
    private float[] ajp;
    private boolean ajq;
    private boolean ajr;
    private float hQ;
    private float hR;
    private float lQ;
    private Matrix mMatrix;
    
    public PhotoView(final Context context) {
        super(context);
        this.mMatrix = new Matrix();
        this.aiR = new Matrix();
        this.aiS = -1;
        this.aiX = new Rect();
        this.aje = true;
        this.ajm = new RectF();
        this.ajn = new RectF();
        this.ajo = new RectF();
        this.ajp = new float[9];
        this.nD();
    }
    
    public PhotoView(final Context context, final AttributeSet set) {
        super(context, set);
        this.mMatrix = new Matrix();
        this.aiR = new Matrix();
        this.aiS = -1;
        this.aiX = new Rect();
        this.aje = true;
        this.ajm = new RectF();
        this.ajn = new RectF();
        this.ajo = new RectF();
        this.ajp = new float[9];
        this.nD();
    }
    
    public PhotoView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mMatrix = new Matrix();
        this.aiR = new Matrix();
        this.aiS = -1;
        this.aiX = new Rect();
        this.aje = true;
        this.ajm = new RectF();
        this.ajn = new RectF();
        this.ajo = new RectF();
        this.ajp = new float[9];
        this.nD();
    }
    
    private void an(final boolean b) {
        if (this.Aj == null || !this.aiT) {
            return;
        }
        final int intrinsicWidth = this.Aj.getIntrinsicWidth();
        final int intrinsicHeight = this.Aj.getIntrinsicHeight();
        final int width = this.getWidth();
        final int height = this.getHeight();
        boolean b2;
        if ((intrinsicWidth < 0 || width == intrinsicWidth) && (intrinsicHeight < 0 || height == intrinsicHeight)) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        this.Aj.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        if (b || (this.aji == 0.0f && this.Aj != null && this.aiT)) {
            final int intrinsicWidth2 = this.Aj.getIntrinsicWidth();
            final int intrinsicHeight2 = this.Aj.getIntrinsicHeight();
            int n;
            if (this.aiW) {
                n = PhotoView.aiL;
            }
            else {
                n = this.getWidth();
            }
            int n2;
            if (this.aiW) {
                n2 = PhotoView.aiL;
            }
            else {
                n2 = this.getHeight();
            }
            boolean b3 = false;
            Label_0179: {
                if (intrinsicWidth2 >= 0) {
                    b3 = false;
                    if (n != intrinsicWidth2) {
                        break Label_0179;
                    }
                }
                if (intrinsicHeight2 >= 0) {
                    b3 = false;
                    if (n2 != intrinsicHeight2) {
                        break Label_0179;
                    }
                }
                b3 = true;
            }
            if (b3 && !this.aiW) {
                this.mMatrix.reset();
            }
            else {
                this.ajm.set(0.0f, 0.0f, (float)intrinsicWidth2, (float)intrinsicHeight2);
                if (this.aiW) {
                    this.ajn.set(this.aiX);
                }
                else {
                    this.ajn.set(0.0f, 0.0f, (float)n, (float)n2);
                }
                final RectF rectF = new RectF(n / 2 - intrinsicWidth2 * this.aiZ / 2.0f, n2 / 2 - intrinsicHeight2 * this.aiZ / 2.0f, n / 2 + intrinsicWidth2 * this.aiZ / 2.0f, n2 / 2 + intrinsicHeight2 * this.aiZ / 2.0f);
                if (this.ajn.contains(rectF)) {
                    this.mMatrix.setRectToRect(this.ajm, rectF, Matrix$ScaleToFit.CENTER);
                }
                else {
                    this.mMatrix.setRectToRect(this.ajm, this.ajn, Matrix$ScaleToFit.CENTER);
                }
            }
            this.aiR.set(this.mMatrix);
            final int intrinsicWidth3 = this.Aj.getIntrinsicWidth();
            final int intrinsicHeight3 = this.Aj.getIntrinsicHeight();
            int n3;
            if (this.aiW) {
                n3 = this.om();
            }
            else {
                n3 = this.getWidth();
            }
            int n4;
            if (this.aiW) {
                n4 = this.om();
            }
            else {
                n4 = this.getHeight();
            }
            if (intrinsicWidth3 < n3 && intrinsicHeight3 < n4 && !this.aiW) {
                this.aji = 1.0f;
            }
            else {
                this.aji = this.getScale();
            }
            this.aig = Math.max(4.0f * this.aji, 4.0f);
        }
        if (b2 || this.mMatrix.isIdentity()) {
            this.aiQ = null;
            return;
        }
        this.aiQ = this.mMatrix;
    }
    
    private float getScale() {
        this.mMatrix.getValues(this.ajp);
        return this.ajp[0];
    }
    
    private boolean i(final MotionEvent motionEvent) {
        boolean b;
        if (this.aje && this.ajd && this.ajq) {
            if (!this.ajf) {
                final float scale = this.getScale();
                float n;
                float n3;
                float n4;
                if (scale > this.aji) {
                    n = this.aji;
                    final float n2 = n / scale;
                    n3 = (this.getWidth() / 2 - n2 * this.ajo.centerX()) / (1.0f - n2);
                    n4 = (this.getHeight() / 2 - n2 * this.ajo.centerY()) / (1.0f - n2);
                }
                else {
                    n = Math.min(this.aig, Math.max(this.aji, scale * 2.0f));
                    final float n5 = n / scale;
                    final float n6 = (this.getWidth() - this.ajo.width()) / n5;
                    final float n7 = (this.getHeight() - this.ajo.height()) / n5;
                    float n8;
                    if (this.ajo.width() <= n6 * 2.0f) {
                        n8 = this.ajo.centerX();
                    }
                    else {
                        n8 = Math.min(Math.max(n6 + this.ajo.left, motionEvent.getX()), this.ajo.right - n6);
                    }
                    if (this.ajo.height() <= n7 * 2.0f) {
                        final float centerY = this.ajo.centerY();
                        n3 = n8;
                        n4 = centerY;
                    }
                    else {
                        final float min = Math.min(Math.max(n7 + this.ajo.top, motionEvent.getY()), this.ajo.bottom - n7);
                        n3 = n8;
                        n4 = min;
                    }
                }
                this.ajh.b(scale, n, n3, n4);
                b = true;
            }
            else {
                b = false;
            }
            this.ajf = false;
        }
        else {
            b = false;
        }
        this.ajq = false;
        return b;
    }
    
    private int j(final float n, final float n2) {
        this.ajo.set(this.ajm);
        this.mMatrix.mapRect(this.ajo);
        float n3;
        if (this.aiW) {
            n3 = this.aiX.left;
        }
        else {
            n3 = 0.0f;
        }
        float n4;
        if (this.aiW) {
            n4 = this.aiX.right;
        }
        else {
            n4 = this.getWidth();
        }
        final float left = this.ajo.left;
        final float right = this.ajo.right;
        float n5;
        if (this.aiW) {
            n5 = Math.max(n3 - this.ajo.right, Math.min(n4 - this.ajo.left, n));
        }
        else if (right - left < n4 - n3) {
            n5 = n3 + (n4 - n3 - (left + right)) / 2.0f;
        }
        else {
            n5 = Math.max(n4 - right, Math.min(n3 - left, n));
        }
        final boolean aiW = this.aiW;
        float n6 = 0.0f;
        if (aiW) {
            n6 = this.aiX.top;
        }
        float n7;
        if (this.aiW) {
            n7 = this.aiX.bottom;
        }
        else {
            n7 = this.getHeight();
        }
        final float top = this.ajo.top;
        final float bottom = this.ajo.bottom;
        float n8;
        if (this.aiW) {
            n8 = Math.max(n6 - this.ajo.bottom, Math.min(n7 - this.ajo.top, n2));
        }
        else if (bottom - top < n7 - n6) {
            n8 = n6 + (n7 - n6 - (top + bottom)) / 2.0f;
        }
        else {
            n8 = Math.max(n7 - bottom, Math.min(n6 - top, n2));
        }
        this.mMatrix.postTranslate(n5, n8);
        this.invalidate();
        boolean b;
        if (n5 == n) {
            b = true;
        }
        else {
            b = false;
        }
        boolean b2;
        if (n8 == n2) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        if (b && b2) {
            return 3;
        }
        if (b) {
            return 1;
        }
        if (b2) {
            return 2;
        }
        return 0;
    }
    
    private void nD() {
        final Context context = this.getContext();
        if (!PhotoView.aiK) {
            PhotoView.aiK = true;
            final Resources resources = context.getApplicationContext().getResources();
            PhotoView.aiL = resources.getDimensionPixelSize(A.ahF);
            (PhotoView.aiO = new Paint()).setAntiAlias(true);
            PhotoView.aiO.setColor(resources.getColor(z.ahC));
            PhotoView.aiO.setStyle(Paint$Style.FILL);
            (PhotoView.aiP = new Paint()).setAntiAlias(true);
            PhotoView.aiP.setColor(resources.getColor(z.ahD));
            PhotoView.aiP.setStyle(Paint$Style.STROKE);
            PhotoView.aiP.setStrokeWidth(resources.getDimension(A.ahE));
            final int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
            PhotoView.aiJ = scaledTouchSlop * scaledTouchSlop;
        }
        this.aja = new q(context, (GestureDetector$OnGestureListener)this);
        this.ajb = new ScaleGestureDetector(context, (ScaleGestureDetector$OnScaleGestureListener)this);
        this.ajr = V.g(this.ajb);
        this.ajh = new b(this);
        this.ajj = new d(this);
        this.ajk = new c(this);
        this.ajl = new a(this);
    }
    
    private int om() {
        if (this.aiY > 0) {
            return this.aiY;
        }
        return PhotoView.aiL;
    }
    
    private void on() {
        this.ajo.set(this.ajm);
        this.mMatrix.mapRect(this.ajo);
        float n;
        if (this.aiW) {
            n = this.aiX.left;
        }
        else {
            n = 0.0f;
        }
        float n2;
        if (this.aiW) {
            n2 = this.aiX.right;
        }
        else {
            n2 = this.getWidth();
        }
        final float left = this.ajo.left;
        final float right = this.ajo.right;
        float n3;
        if (right - left < n2 - n) {
            n3 = n + (n2 - n - (left + right)) / 2.0f;
        }
        else if (left > n) {
            n3 = n - left;
        }
        else if (right < n2) {
            n3 = n2 - right;
        }
        else {
            n3 = 0.0f;
        }
        float n4;
        if (this.aiW) {
            n4 = this.aiX.top;
        }
        else {
            n4 = 0.0f;
        }
        float n5;
        if (this.aiW) {
            n5 = this.aiX.bottom;
        }
        else {
            n5 = this.getHeight();
        }
        final float top = this.ajo.top;
        final float bottom = this.ajo.bottom;
        float n6;
        if (bottom - top < n5 - n4) {
            n6 = n4 + (n5 - n4 - (bottom + top)) / 2.0f;
        }
        else if (top > n4) {
            n6 = n4 - top;
        }
        else {
            final float n7 = fcmpg(bottom, n5);
            n6 = 0.0f;
            if (n7 < 0) {
                n6 = n5 - bottom;
            }
        }
        if (Math.abs(n3) > 20.0f || Math.abs(n6) > 20.0f) {
            this.ajk.k(n3, n6);
            return;
        }
        this.mMatrix.postTranslate(n3, n6);
        this.invalidate();
    }
    
    private void scale(final float n, final float n2, final float n3) {
        this.mMatrix.postRotate(-this.lQ, (float)(this.getWidth() / 2), (float)(this.getHeight() / 2));
        final float n4 = Math.min(Math.max(n, this.aji), 1.5f * this.aig) / this.getScale();
        this.mMatrix.postScale(n4, n4, n2, n3);
        this.mMatrix.postRotate(this.lQ, (float)(this.getWidth() / 2), (float)(this.getHeight() / 2));
        this.invalidate();
    }
    
    public final void al(final boolean ajd) {
        if (!(this.ajd = ajd)) {
            this.ol();
        }
    }
    
    public final void am(final boolean agW) {
        if (agW != this.agW) {
            this.agW = agW;
            this.requestLayout();
            this.invalidate();
        }
    }
    
    public final void clear() {
        this.aja = null;
        this.ajb = null;
        this.Aj = null;
        this.ajh.stop();
        this.ajh = null;
        this.ajj.stop();
        this.ajj = null;
        this.ajk.stop();
        this.ajk = null;
        this.ajl.stop();
        this.ajl = null;
        this.setOnClickListener(null);
        this.ajc = null;
        this.ajq = false;
    }
    
    public final void f(final Drawable aj) {
        boolean b = false;
        if (aj != null) {
            final Drawable aj2 = this.Aj;
            b = false;
            if (aj != aj2) {
                if (this.Aj != null) {
                    this.Aj.setCallback((Drawable$Callback)null);
                }
                this.Aj = aj;
                this.aji = 0.0f;
                this.Aj.setCallback((Drawable$Callback)this);
                b = true;
            }
        }
        this.an(b);
        this.invalidate();
    }
    
    public void invalidateDrawable(final Drawable drawable) {
        if (this.Aj == drawable) {
            this.invalidate();
            return;
        }
        super.invalidateDrawable(drawable);
    }
    
    public final boolean oa() {
        return this.Aj != null;
    }
    
    public final boolean oi() {
        if (this.ajd) {
            if (this.ajj.ajx) {
                return true;
            }
            this.mMatrix.getValues(this.ajp);
            this.ajo.set(this.ajm);
            this.mMatrix.mapRect(this.ajo);
            final float n = this.getWidth();
            final float n2 = this.ajp[2];
            final float n3 = this.ajo.right - this.ajo.left;
            if (this.ajd && n3 > n && n2 != 0.0f) {
                return n < n3 + n2 || true;
            }
        }
        return false;
    }
    
    public final boolean oj() {
        if (this.ajd) {
            if (this.ajj.ajx) {
                return true;
            }
            this.mMatrix.getValues(this.ajp);
            this.ajo.set(this.ajm);
            this.mMatrix.mapRect(this.ajo);
            final float n = this.getWidth();
            final float n2 = this.ajp[2];
            final float n3 = this.ajo.right - this.ajo.left;
            if (this.ajd && n3 > n) {
                if (n2 == 0.0f) {
                    return true;
                }
                if (n < n2 + n3) {
                    return true;
                }
            }
        }
        return false;
    }
    
    public final void ok() {
        final boolean b = this.Aj instanceof BitmapDrawable;
        boolean b2 = !b;
        if (this.Aj != null && b) {
            if (((BitmapDrawable)this.Aj).getBitmap() == null) {
                return;
            }
            this.aji = 0.0f;
            this.Aj = null;
            b2 = false;
        }
        final Drawable aj = this.Aj;
        this.an(b2);
        this.invalidate();
    }
    
    public final void ol() {
        this.mMatrix.set(this.aiR);
        this.invalidate();
    }
    
    public boolean onDoubleTap(final MotionEvent motionEvent) {
        this.ajq = true;
        return !this.ajr && this.i(motionEvent);
    }
    
    public boolean onDoubleTapEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0: {
                if (this.ajr) {
                    this.hQ = motionEvent.getX();
                    this.hR = motionEvent.getY();
                    return false;
                }
                break;
            }
            case 1: {
                if (this.ajr) {
                    return this.i(motionEvent);
                }
                break;
            }
            case 2: {
                if (!this.ajr || !this.ajq) {
                    break;
                }
                final int n = (int)(motionEvent.getX() - this.hQ);
                final int n2 = (int)(motionEvent.getY() - this.hR);
                if (n * n + n2 * n2 > PhotoView.aiJ) {
                    return this.ajq = false;
                }
                break;
            }
        }
        return false;
    }
    
    public boolean onDown(final MotionEvent motionEvent) {
        if (this.ajd) {
            this.ajj.stop();
            this.ajk.stop();
        }
        return true;
    }
    
    protected void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        if (this.Aj != null) {
            final int saveCount = canvas.getSaveCount();
            canvas.save();
            if (this.aiQ != null) {
                canvas.concat(this.aiQ);
            }
            this.Aj.draw(canvas);
            canvas.restoreToCount(saveCount);
            if (this.aiU != null) {
                Bitmap bitmap;
                if (this.aiV) {
                    bitmap = PhotoView.aiM;
                }
                else {
                    bitmap = PhotoView.aiN;
                }
                canvas.drawBitmap(bitmap, (float)((this.getWidth() - bitmap.getWidth()) / 2), (float)((this.getHeight() - bitmap.getHeight()) / 2), (Paint)null);
            }
            this.ajo.set(this.Aj.getBounds());
            if (this.aiQ != null) {
                this.aiQ.mapRect(this.ajo);
            }
            if (this.aiW) {
                final int saveCount2 = canvas.getSaveCount();
                canvas.drawRect(0.0f, 0.0f, (float)this.getWidth(), (float)this.getHeight(), PhotoView.aiO);
                canvas.save();
                canvas.clipRect(this.aiX);
                if (this.aiQ != null) {
                    canvas.concat(this.aiQ);
                }
                this.Aj.draw(canvas);
                canvas.restoreToCount(saveCount2);
                canvas.drawRect(this.aiX, PhotoView.aiP);
            }
        }
    }
    
    public boolean onFling(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float n, final float n2) {
        if (this.ajd && !this.ajh.ajx) {
            this.ajj.k(n, n2);
        }
        return true;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        this.aiT = true;
        final int width = this.getWidth();
        final int height = this.getHeight();
        if (this.aiW) {
            this.aiY = Math.min(PhotoView.aiL, Math.min(width, height));
            final int n5 = (width - this.aiY) / 2;
            final int n6 = (height - this.aiY) / 2;
            this.aiX.set(n5, n6, n5 + this.aiY, n6 + this.aiY);
        }
        this.an(b);
    }
    
    public void onLongPress(final MotionEvent motionEvent) {
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.aiS != -1) {
            super.onMeasure(n, View$MeasureSpec.makeMeasureSpec(this.aiS, Integer.MIN_VALUE));
            this.setMeasuredDimension(this.getMeasuredWidth(), this.aiS);
            return;
        }
        super.onMeasure(n, n2);
    }
    
    public boolean onScale(final ScaleGestureDetector scaleGestureDetector) {
        if (this.ajd) {
            this.ajg = false;
            this.scale(this.getScale() * scaleGestureDetector.getScaleFactor(), scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
        }
        return true;
    }
    
    public boolean onScaleBegin(final ScaleGestureDetector scaleGestureDetector) {
        if (this.ajd) {
            this.ajh.stop();
            this.ajg = true;
        }
        return true;
    }
    
    public void onScaleEnd(final ScaleGestureDetector scaleGestureDetector) {
        final float scale = this.getScale();
        if (scale > this.aig) {
            final float n = 1.0f / (1.0f - this.aig / scale);
            final float n2 = 1.0f - n;
            final float n3 = this.getWidth() / 2;
            final float n4 = this.getHeight() / 2;
            final float n5 = n2 * this.ajo.left;
            final float n6 = n2 * this.ajo.top;
            final float n7 = n * this.getWidth() + n2 * this.ajo.right;
            final float n8 = n * this.getHeight() + n2 * this.ajo.bottom;
            float min;
            if (n7 > n5) {
                min = (n7 + n5) / 2.0f;
            }
            else {
                min = Math.min(Math.max(n7, n3), n5);
            }
            float min2;
            if (n8 > n6) {
                min2 = (n8 + n6) / 2.0f;
            }
            else {
                min2 = Math.min(Math.max(n8, n4), n6);
            }
            this.ajh.b(scale, this.aig, min, min2);
        }
        if (this.ajd && this.ajg) {
            this.ajf = true;
            this.ol();
        }
    }
    
    public boolean onScroll(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float n, final float n2) {
        if (this.ajd && !this.ajh.ajx) {
            this.j(-n, -n2);
        }
        return true;
    }
    
    public void onShowPress(final MotionEvent motionEvent) {
    }
    
    public boolean onSingleTapConfirmed(final MotionEvent motionEvent) {
        if (this.ajc != null && !this.ajg) {
            this.ajc.onClick((View)this);
        }
        this.ajg = false;
        return true;
    }
    
    public boolean onSingleTapUp(final MotionEvent motionEvent) {
        return false;
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        if (this.ajb != null && this.aja != null) {
            this.ajb.onTouchEvent(motionEvent);
            this.aja.onTouchEvent(motionEvent);
            switch (motionEvent.getAction()) {
                default: {
                    return true;
                }
                case 1:
                case 3: {
                    if (!this.ajj.ajx) {
                        this.on();
                        return true;
                    }
                    break;
                }
            }
        }
        return true;
    }
    
    public void setOnClickListener(final View$OnClickListener ajc) {
        this.ajc = ajc;
    }
    
    public final void t(final float aiZ) {
        this.aiZ = aiZ;
    }
    
    public boolean verifyDrawable(final Drawable drawable) {
        return this.Aj == drawable || super.verifyDrawable(drawable);
    }
}
