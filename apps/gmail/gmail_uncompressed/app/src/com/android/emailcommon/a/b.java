package com.android.emailcommon.a;

import com.android.emailcommon.mail.*;
import com.android.emailcommon.*;
import java.io.*;
import android.util.*;

final class b extends FilterInputStream
{
    final /* synthetic */ a Wa;
    
    public b(final a wa, final InputStream inputStream) {
        this.Wa = wa;
        super(inputStream);
    }
    
    @Override
    public final void close() {
        super.close();
        this.Wa.Rq.delete();
    }
}
