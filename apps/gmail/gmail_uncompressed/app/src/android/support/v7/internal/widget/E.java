package android.support.v7.internal.widget;

import android.graphics.drawable.*;
import android.graphics.*;

class e extends Drawable
{
    final ActionBarContainer yJ;
    
    public e(final ActionBarContainer yj) {
        this.yJ = yj;
    }
    
    public void draw(final Canvas canvas) {
        if (this.yJ.yQ) {
            if (this.yJ.yP != null) {
                this.yJ.yP.draw(canvas);
            }
        }
        else {
            if (this.yJ.wQ != null) {
                this.yJ.wQ.draw(canvas);
            }
            if (this.yJ.yO != null && this.yJ.yR) {
                this.yJ.yO.draw(canvas);
            }
        }
    }
    
    public int getOpacity() {
        return 0;
    }
    
    public void setAlpha(final int n) {
    }
    
    public void setColorFilter(final ColorFilter colorFilter) {
    }
}
