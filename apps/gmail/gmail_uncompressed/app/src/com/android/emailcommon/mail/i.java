package com.android.emailcommon.mail;

import java.util.*;

public final class i
{
    private static final HashMap<String, String> Xv;
    private String Rj;
    private HashMap<String, String> Xu;
    
    static {
        Xv = new HashMap<String, String>();
    }
    
    public i(final String rj) {
        this.Rj = rj;
        this.Xu = null;
    }
    
    public final String get(final String s) {
        if (this.Xu == null) {
            final String rj = this.Rj;
            HashMap<String, String> xv;
            if (rj == null || rj.length() == 0) {
                xv = i.Xv;
            }
            else {
                final HashMap<String, String> hashMap = new HashMap<String, String>();
                final int length = rj.length();
                int n = rj.indexOf(2);
                int n2;
                for (int i = 0; i < length; i = n2 + 1) {
                    final int index = rj.indexOf(1, i);
                    if (index == -1) {
                        n2 = length;
                    }
                    else {
                        n2 = index;
                    }
                    String s2;
                    String s3;
                    if (n == -1 || n2 <= n) {
                        s2 = rj.substring(i, n2);
                        s3 = Integer.toString(hashMap.size());
                    }
                    else {
                        s2 = rj.substring(i, n);
                        s3 = rj.substring(n + 1, n2);
                        n = rj.indexOf(2, n2 + 1);
                    }
                    hashMap.put(s3, s2);
                }
                xv = hashMap;
            }
            this.Xu = xv;
        }
        return this.Xu.get(s);
    }
}
