package android.support.v4.view;

import android.content.*;
import android.os.*;
import android.view.*;

final class u implements r
{
    private final GestureDetector hV;
    
    public u(final Context context, final GestureDetector$OnGestureListener gestureDetector$OnGestureListener, final Handler handler) {
        this.hV = new GestureDetector(context, gestureDetector$OnGestureListener, (Handler)null);
    }
    
    @Override
    public final boolean onTouchEvent(final MotionEvent motionEvent) {
        return this.hV.onTouchEvent(motionEvent);
    }
}
