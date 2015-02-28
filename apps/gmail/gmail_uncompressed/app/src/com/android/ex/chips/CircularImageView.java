package com.android.ex.chips;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.graphics.drawable.*;
import android.graphics.*;

public class CircularImageView extends ImageView
{
    private static float acI;
    private final Matrix acJ;
    private final RectF acK;
    private final RectF acL;
    private final Paint acM;
    private final Paint acN;
    
    static {
        CircularImageView.acI = 1.0f;
    }
    
    public CircularImageView(final Context context) {
        this(context, null, 0);
    }
    
    public CircularImageView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public CircularImageView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.acJ = new Matrix();
        this.acK = new RectF();
        this.acL = new RectF();
        (this.acM = new Paint()).setAntiAlias(true);
        this.acM.setFilterBitmap(true);
        this.acM.setDither(true);
        (this.acN = new Paint()).setColor(0);
        this.acN.setStyle(Paint$Style.STROKE);
        this.acN.setStrokeWidth(CircularImageView.acI);
        this.acN.setAntiAlias(true);
    }
    
    protected void onDraw(final Canvas canvas) {
        final Drawable drawable = this.getDrawable();
        BitmapDrawable bitmapDrawable;
        if (drawable instanceof StateListDrawable) {
            if (((StateListDrawable)drawable).getCurrent() != null) {
                bitmapDrawable = (BitmapDrawable)drawable.getCurrent();
            }
            else {
                bitmapDrawable = null;
            }
        }
        else {
            bitmapDrawable = (BitmapDrawable)drawable;
        }
        if (bitmapDrawable != null) {
            final Bitmap bitmap = bitmapDrawable.getBitmap();
            if (bitmap != null) {
                this.acK.set(0.0f, 0.0f, (float)bitmap.getWidth(), (float)bitmap.getHeight());
                this.acL.set((float)this.getPaddingLeft(), (float)this.getPaddingTop(), (float)(this.getWidth() - this.getPaddingRight()), (float)(this.getHeight() - this.getPaddingBottom()));
                final RectF acK = this.acK;
                final RectF acL = this.acL;
                final BitmapShader shader = new BitmapShader(bitmap, Shader$TileMode.CLAMP, Shader$TileMode.CLAMP);
                this.acJ.reset();
                this.acJ.setRectToRect(acK, acL, Matrix$ScaleToFit.FILL);
                shader.setLocalMatrix(this.acJ);
                this.acM.setShader((Shader)shader);
                canvas.drawCircle(acL.centerX(), acL.centerY(), acL.width() / 2.0f, this.acM);
                canvas.drawCircle(acL.centerX(), acL.centerY(), acL.width() / 2.0f - CircularImageView.acI / 2.0f, this.acN);
            }
        }
    }
}
