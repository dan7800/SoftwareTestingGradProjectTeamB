package com.google.common.a;

import java.util.logging.*;
import java.io.*;

public final class a
{
    static final Logger cuU;
    
    static {
        cuU = Logger.getLogger(a.class.getName());
    }
    
    public static void b(final Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        }
        catch (IOException ex) {
            try {
                a.cuU.log(Level.WARNING, "IOException thrown while closing Closeable.", ex);
            }
            catch (IOException ex2) {
                a.cuU.log(Level.SEVERE, "IOException should not have been thrown.", ex2);
            }
        }
    }
}
