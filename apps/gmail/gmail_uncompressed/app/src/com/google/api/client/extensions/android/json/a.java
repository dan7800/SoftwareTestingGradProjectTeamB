package com.google.api.client.extensions.android.json;

import android.annotation.*;
import android.os.*;
import com.google.api.client.a.a.a.a.a.*;
import java.nio.charset.*;
import com.google.api.client.json.*;
import android.util.*;
import com.google.api.client.util.*;
import java.io.*;

@TargetApi(11)
public final class a extends d
{
    public a() {
        com.google.api.client.a.a.a.a.a.a.a(Build$VERSION.SDK_INT >= 11, "running on Android SDK level %s but requires minimum %s", Build$VERSION.SDK_INT, 11);
    }
    
    private h a(final Reader reader) {
        return new b(this, new JsonReader(reader));
    }
    
    @Override
    public final e a(final OutputStream outputStream, final Charset charset) {
        return new AndroidJsonGenerator(this, new JsonWriter((Writer)new OutputStreamWriter(outputStream, charset)));
    }
    
    @Override
    public final h a(final InputStream inputStream, final Charset charset) {
        if (charset == null) {
            return this.g(inputStream);
        }
        return this.a(new InputStreamReader(inputStream, charset));
    }
    
    @Override
    public final h g(final InputStream inputStream) {
        return this.a(new InputStreamReader(inputStream, j.UTF_8));
    }
    
    @Override
    public final h gS(final String s) {
        return this.a(new StringReader(s));
    }
}
