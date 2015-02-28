package com.google.api.client.util.a;

final class d
{
    private static final ThreadLocal<char[]> cpq;
    
    static {
        cpq = new e();
    }
    
    static char[] VZ() {
        return d.cpq.get();
    }
}
