package com.google.android.gms.internal;

import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.drive.*;
import java.util.*;

public final class an extends k<DriveId>
{
    public static final an bUi;
    
    static {
        bUi = new an();
    }
    
    private an() {
        super("driveId", Arrays.asList("sqlId", "resourceId"), Arrays.asList("dbInstanceId"), 4100000);
    }
}
