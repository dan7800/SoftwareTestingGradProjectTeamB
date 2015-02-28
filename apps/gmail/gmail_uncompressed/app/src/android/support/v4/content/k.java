package android.support.v4.content;

import android.database.*;
import android.os.*;

public final class k extends ContentObserver
{
    final /* synthetic */ j eY;
    
    public k(final j ey) {
        this.eY = ey;
        super(new Handler());
    }
    
    public final boolean deliverSelfNotifications() {
        return true;
    }
    
    public final void onChange(final boolean b) {
        this.eY.onContentChanged();
    }
}
