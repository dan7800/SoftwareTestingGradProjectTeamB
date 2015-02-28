package com.android.mail.utils;

import android.os.*;
import java.util.*;

final class af implements Runnable
{
    final /* synthetic */ ae aQI;
    
    private af(final ae aqi) {
        this.aQI = aqi;
    }
    
    @Override
    public final void run() {
        this.aQI.aQH.aQG = null;
        if (!this.aQI.yt) {
            this.aQI.aQH.aQC.run();
        }
    }
}
