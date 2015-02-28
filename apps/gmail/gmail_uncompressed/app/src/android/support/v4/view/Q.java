package android.support.v4.view;

import android.content.*;
import android.os.*;
import android.view.*;

public final class q
{
    private final r hw;
    
    public q(final Context context, final GestureDetector$OnGestureListener gestureDetector$OnGestureListener) {
        if (Build$VERSION.SDK_INT > 17) {
            this.hw = new u(context, gestureDetector$OnGestureListener, null);
            return;
        }
        this.hw = new s(context, gestureDetector$OnGestureListener, null);
    }
    
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        return this.hw.onTouchEvent(motionEvent);
    }
}
