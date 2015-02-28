package com.google.android.common.http;

import android.content.*;
import com.google.android.gsf.*;
import android.util.*;
import java.util.*;
import java.util.regex.*;

public final class j implements Comparable
{
    public static final j aWB;
    public final boolean aWA;
    public final String aWy;
    public final String aWz;
    public final String mName;
    
    static {
        aWB = new j();
    }
    
    private j() {
        this.mName = "DEFAULT";
        this.aWy = "";
        this.aWz = null;
        this.aWA = false;
    }
    
    public j(final String mName, final String s) {
        this.mName = mName;
        final String[] split = UrlRules.aWs.split(s);
        if (split.length == 0) {
            throw new UrlRules$RuleFormatException("Empty rule");
        }
        this.aWy = split[0];
        String aWz = null;
        boolean awa = false;
        int i = 1;
        while (i < split.length) {
            final String lowerCase = split[i].toLowerCase();
            if (lowerCase.equals("rewrite") && i + 1 < split.length) {
                aWz = split[i + 1];
                i += 2;
            }
            else {
                if (!lowerCase.equals("block")) {
                    throw new UrlRules$RuleFormatException("Illegal rule: " + s);
                }
                ++i;
                awa = true;
            }
        }
        this.aWz = aWz;
        this.aWA = awa;
    }
    
    public final String apply(String s) {
        if (this.aWA) {
            s = null;
        }
        else if (this.aWz != null) {
            return this.aWz + s.substring(this.aWy.length());
        }
        return s;
    }
    
    @Override
    public final int compareTo(final Object o) {
        return ((j)o).aWy.compareTo(this.aWy);
    }
}
