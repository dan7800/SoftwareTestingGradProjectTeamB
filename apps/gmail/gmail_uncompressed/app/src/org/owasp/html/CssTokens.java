package org.owasp.html;

import com.google.common.collect.*;
import java.util.*;

final class CssTokens implements Iterable<String>
{
    private static final int[] cGT;
    private static final CssTokens$TokenType[] cGU;
    private static final k cGV;
    private static final CssTokens cGW;
    private static final boolean[] cGX;
    private static final ab cGY;
    private static final boolean[] cGZ;
    private static final char[] coF;
    public final String cGP;
    public final k cGQ;
    private final int[] cGR;
    private final CssTokens$TokenType[] cGS;
    
    static {
        cGT = new int[0];
        cGU = new CssTokens$TokenType[0];
        cGV = new k(CssTokens.cGT, (byte)0);
        cGW = new CssTokens("", CssTokens.cGV, CssTokens.cGT, CssTokens.cGU);
        cGX = new boolean[128];
        for (int i = 48; i <= 57; ++i) {
            CssTokens.cGX[i] = true;
        }
        for (int j = 65; j <= 90; ++j) {
            CssTokens.cGX[j] = true;
        }
        for (int k = 97; k <= 122; ++k) {
            CssTokens.cGX[k] = true;
        }
        CssTokens.cGX[95] = true;
        CssTokens.cGX[45] = true;
        cGY = new ab(ImmutableMap.Zv().p("em", 0).p("ex", 0).p("ch", 0).p("rem", 0).p("vh", 0).p("vw", 0).p("vmin", 0).p("vmax", 0).p("px", 0).p("mm", 0).p("cm", 0).p("in", 0).p("pt", 0).p("pc", 0).p("deg", 1).p("rad", 1).p("grad", 1).p("turn", 1).p("s", 2).p("ms", 2).p("hz", 3).p("khz", 3).p("dpi", 4).p("dpcm", 4).p("dppx", 4).Zo());
        cGZ = new boolean[128];
        for (int l = 65; l <= 90; ++l) {
            CssTokens.cGZ[l] = true;
        }
        for (int n = 97; n <= 122; ++n) {
            CssTokens.cGZ[n] = true;
        }
        for (int n2 = 48; n2 <= 57; ++n2) {
            CssTokens.cGZ[n2] = true;
        }
        CssTokens.cGZ[45] = true;
        CssTokens.cGZ[46] = true;
        CssTokens.cGZ[95] = true;
        CssTokens.cGZ[126] = true;
        CssTokens.cGZ[58] = true;
        CssTokens.cGZ[47] = true;
        CssTokens.cGZ[63] = true;
        CssTokens.cGZ[35] = true;
        CssTokens.cGZ[91] = true;
        CssTokens.cGZ[93] = true;
        CssTokens.cGZ[64] = true;
        CssTokens.cGZ[33] = true;
        CssTokens.cGZ[36] = true;
        CssTokens.cGZ[38] = true;
        CssTokens.cGZ[43] = true;
        CssTokens.cGZ[44] = true;
        CssTokens.cGZ[59] = true;
        CssTokens.cGZ[61] = true;
        CssTokens.cGZ[37] = true;
        coF = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
    }
    
    private CssTokens(final String cgp, final k cgq, final int[] cgr, final CssTokens$TokenType[] cgs) {
        this.cGP = cgp;
        this.cGQ = cgq;
        this.cGR = cgr;
        this.cGS = cgs;
    }
    
    static boolean e(final CharSequence charSequence, int i, final int n) {
        if (i == n) {
            return false;
        }
        ab cgy = CssTokens.cGY;
        while (i < n) {
            char char1 = charSequence.charAt(i);
            if ('A' <= char1 && char1 <= 'Z') {
                char1 |= ' ';
            }
            final ab q = cgy.q(char1);
            if (q == null) {
                return false;
            }
            ++i;
            cgy = q;
        }
        return cgy.acl();
    }
    
    public static CssTokens in(final String s) {
        final l l = new l(s);
        l.abK();
        return l.abJ();
    }
    
    public final m abD() {
        return new m(this, this.cGS.length);
    }
}
