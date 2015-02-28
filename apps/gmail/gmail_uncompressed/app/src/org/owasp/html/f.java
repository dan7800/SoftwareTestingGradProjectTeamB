package org.owasp.html;

final class f
{
    static void a(final String s, final h h) {
        final m abD = CssTokens.in(s).abD();
        while (abD.abX()) {
            if (abD.abY() != CssTokens$TokenType.cHl) {
                a(abD);
            }
            else {
                final String next = abD.next();
                if (!abD.abX() || !":".equals(abD.abV())) {
                    a(abD);
                }
                else {
                    abD.advance();
                    h.if(W.hL(next));
                    a(abD, h);
                    h.abC();
                }
            }
        }
    }
    
    private static void a(final m m) {
        int n = 0;
    Label_0075:
        while (m.hasNext()) {
            switch (g.cGG[m.abY().ordinal()]) {
                case 1: {
                    m.advance();
                    break Label_0075;
                }
                case 2:
                case 3:
                case 4: {
                    ++n;
                    break;
                }
                case 5:
                case 6:
                case 7: {
                    if (--n > 0) {
                        break;
                    }
                    if (n != 0) {
                        m.advance();
                        return;
                    }
                    break Label_0075;
                }
            }
            m.advance();
        }
    }
    
    private static void a(final m m, final h h) {
    Label_0155:
        while (m.hasNext()) {
            final CssTokens$TokenType abY = m.abY();
            final String abV = m.abV();
            switch (g.cGG[abY.ordinal()]) {
                case 1: {
                    m.advance();
                    break Label_0155;
                }
                case 8: {
                    final m abU = m.abU();
                    h.il(abV);
                    a(abU, h);
                    h.abB();
                    continue;
                }
                case 9: {
                    h.ih(abV);
                    break;
                }
                case 10: {
                    if (abV.length() == 4 || abV.length() == 7) {
                        h.ii(abV);
                        break;
                    }
                    break;
                }
                case 11: {
                    h.ij(abV);
                    break;
                }
                case 12: {
                    h.abA();
                    break;
                }
                case 13:
                case 14:
                case 15: {
                    h.ig(abV);
                    break;
                }
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 24:
                case 25:
                case 26: {
                    h.ik(abV);
                    break;
                }
            }
            m.advance();
        }
    }
}
