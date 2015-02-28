package com.google.api.client.http;

import com.google.api.client.util.*;
import java.io.*;
import java.util.zip.*;

public final class h implements l
{
    @Override
    public final void a(final K k, final OutputStream outputStream) {
        final GZIPOutputStream gzipOutputStream = new GZIPOutputStream(new i(this, outputStream));
        k.writeTo(gzipOutputStream);
        gzipOutputStream.close();
    }
    
    @Override
    public final String getName() {
        return "gzip";
    }
}
