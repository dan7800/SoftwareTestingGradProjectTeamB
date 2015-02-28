package android.support.v4.widget;

import android.graphics.drawable.shapes.*;
import android.graphics.*;

final class e extends OvalShape
{
    private int kH;
    private RadialGradient kI;
    private Paint kJ;
    private int kK;
    final /* synthetic */ d kL;
    
    public e(final d kl, final int kh, final int kk) {
        this.kL = kl;
        this.kJ = new Paint();
        this.kH = kh;
        this.kK = kk;
        this.kI = new RadialGradient((float)(this.kK / 2), (float)(this.kK / 2), (float)this.kH, new int[] { 1023410176, 0 }, (float[])null, Shader$TileMode.CLAMP);
        this.kJ.setShader((Shader)this.kI);
    }
    
    public final void draw(final Canvas canvas, final Paint paint) {
        final int width = this.kL.getWidth();
        final int height = this.kL.getHeight();
        canvas.drawCircle((float)(width / 2), (float)(height / 2), (float)(this.kK / 2 + this.kH), this.kJ);
        canvas.drawCircle((float)(width / 2), (float)(height / 2), (float)(this.kK / 2), paint);
    }
}
