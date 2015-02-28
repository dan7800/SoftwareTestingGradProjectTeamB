package android.support.v4.content;

import android.os.*;
import android.content.*;

public final class e
{
    private static final f eS;
    
    static {
        final int sdk_INT = Build$VERSION.SDK_INT;
        if (sdk_INT >= 15) {
            eS = new i();
            return;
        }
        if (sdk_INT >= 11) {
            eS = new h();
            return;
        }
        eS = new g();
    }
    
    public static Intent makeMainActivity(final ComponentName componentName) {
        return e.eS.makeMainActivity(componentName);
    }
}
