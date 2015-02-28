package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.drive.*;
import java.util.*;

public final class n extends k<UserMetadata>
{
    public n(final String s) {
        super(s, Arrays.asList(am(s, "permissionId"), am(s, "displayName"), am(s, "picture"), am(s, "isAuthenticatedUser"), am(s, "emailAddress")), Collections.emptyList(), 6000000);
    }
    
    private static String am(final String s, final String s2) {
        return s + "." + s2;
    }
}
