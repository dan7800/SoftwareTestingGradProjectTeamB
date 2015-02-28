package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.internal.*;
import com.google.android.gms.drive.metadata.*;
import java.util.*;

final class e
{
    static a<?> b(final MetadataBundle metadataBundle) {
        final Set<a<?>> md = metadataBundle.Md();
        if (md.size() != 1) {
            throw new IllegalArgumentException("bundle should have exactly 1 populated field");
        }
        return md.iterator().next();
    }
}
