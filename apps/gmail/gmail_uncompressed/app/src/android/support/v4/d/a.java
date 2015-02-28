package android.support.v4.d;

import android.content.*;
import android.os.*;
import android.net.*;

public final class a
{
    d fE;
    
    public a(final Context context) {
        if (ay()) {
            this.fE = new b(context);
            return;
        }
        this.fE = new c((byte)0);
    }
    
    public static boolean ay() {
        return Build$VERSION.SDK_INT >= 19;
    }
    
    public final void a(final String s, final Uri uri) {
        this.fE.b(s, uri);
    }
    
    public final void az() {
        this.fE.n(1);
    }
}
