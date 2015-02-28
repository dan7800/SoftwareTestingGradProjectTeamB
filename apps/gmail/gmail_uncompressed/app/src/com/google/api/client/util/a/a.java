package com.google.api.client.util.a;

import java.net.*;
import java.io.*;

public final class a
{
    private static final b czJ;
    private static final b czK;
    private static final b czL;
    private static final b czM;
    
    static {
        czJ = new c("-_.*", true);
        czK = new c("-_.!~*'()@:$&,;=", false);
        czL = new c("-_.!~*'():$&,;=", false);
        czM = new c("-_.!~*'()@:$,;/?:", false);
    }
    
    public static String hA(final String s) {
        return a.czK.gF(s);
    }
    
    public static String hB(final String s) {
        return a.czL.gF(s);
    }
    
    public static String hC(final String s) {
        return a.czM.gF(s);
    }
    
    public static String hy(final String s) {
        return a.czJ.gF(s);
    }
    
    public static String hz(final String s) {
        try {
            return URLDecoder.decode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            throw new RuntimeException(ex);
        }
    }
}
