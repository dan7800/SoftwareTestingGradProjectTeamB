package com.google.android.gms.internal;

import java.io.*;

public class vx$a extends IOException
{
    vx$a(final int n, final int n2) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + n + " limit " + n2 + ").");
    }
}
