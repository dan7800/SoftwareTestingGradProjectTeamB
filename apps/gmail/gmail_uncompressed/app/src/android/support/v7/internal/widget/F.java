package android.support.v7.internal.widget;

import android.graphics.*;

final class f extends e
{
    public f(final ActionBarContainer actionBarContainer) {
        super(actionBarContainer);
    }
    
    public final void getOutline(final Outline outline) {
        if (this.yJ.yQ) {
            if (this.yJ.yP != null) {
                this.yJ.yP.getOutline(outline);
            }
        }
        else if (this.yJ.wQ != null) {
            this.yJ.wQ.getOutline(outline);
        }
    }
}
