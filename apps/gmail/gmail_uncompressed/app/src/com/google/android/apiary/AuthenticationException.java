package com.google.android.apiary;

import java.io.*;

public class AuthenticationException extends IOException
{
    public AuthenticationException() {
    }
    
    public AuthenticationException(final String s, final Throwable t) {
        super(s, t);
    }
}
