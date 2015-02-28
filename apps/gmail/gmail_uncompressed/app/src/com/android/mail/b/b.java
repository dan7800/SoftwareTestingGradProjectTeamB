package com.android.mail.b;

import android.content.res.*;
import android.graphics.*;

public final class b extends a
{
    private static Bitmap akp;
    
    static {
        b.akp = null;
    }
    
    public b(final Resources resources, final com.android.a.a a, final j j) {
        super(resources);
        this.a(a);
        this.a(j);
        if (b.akp == null) {
            b.akp = BitmapFactory.decodeResource(resources, 2130837561);
        }
    }
    
    @Override
    protected final void a(final Canvas canvas) {
        this.a(b.akp, b.akp.getWidth(), b.akp.getHeight(), canvas);
    }
}
