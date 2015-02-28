package android.support.v4.e;

final class c
{
    private static final byte[] gh;
    private final String gi;
    private final boolean gj;
    private int gk;
    private char gl;
    private final int length;
    
    static {
        gh = new byte[1792];
        for (int i = 0; i < 1792; ++i) {
            c.gh[i] = Character.getDirectionality(i);
        }
    }
    
    c(final String gi) {
        this.gi = gi;
        this.gj = false;
        this.length = gi.length();
    }
    
    private static byte a(final char c) {
        if (c < '\u0700') {
            return c.gh[c];
        }
        return Character.getDirectionality(c);
    }
    
    private byte aJ() {
        byte directionality = 12;
        this.gl = this.gi.charAt(-1 + this.gk);
        if (!Character.isLowSurrogate(this.gl)) {
            --this.gk;
            final byte a = a(this.gl);
            if (this.gj) {
                if (this.gl == '>') {
                    final int gk = this.gk;
                    while (this.gk > 0) {
                        final String gi = this.gi;
                        final int gk2 = -1 + this.gk;
                        this.gk = gk2;
                        this.gl = gi.charAt(gk2);
                        if (this.gl == '<') {
                            return directionality;
                        }
                        if (this.gl == '>') {
                            break;
                        }
                        if (this.gl != '\"' && this.gl != '\'') {
                            continue;
                        }
                        final char gl = this.gl;
                        while (this.gk > 0) {
                            final String gi2 = this.gi;
                            final int gk3 = -1 + this.gk;
                            this.gk = gk3;
                            if ((this.gl = gi2.charAt(gk3)) == gl) {
                                break;
                            }
                        }
                    }
                    this.gk = gk;
                    this.gl = '>';
                    return 13;
                }
                if (this.gl == ';') {
                    final int gk4 = this.gk;
                    while (this.gk > 0) {
                        final String gi3 = this.gi;
                        final int gk5 = -1 + this.gk;
                        this.gk = gk5;
                        this.gl = gi3.charAt(gk5);
                        if (this.gl == '&') {
                            return directionality;
                        }
                        if (this.gl == ';') {
                            break;
                        }
                    }
                    this.gk = gk4;
                    this.gl = ';';
                    return 13;
                }
            }
            return a;
        }
        final int codePointBefore = Character.codePointBefore(this.gi, this.gk);
        this.gk -= Character.charCount(codePointBefore);
        directionality = Character.getDirectionality(codePointBefore);
        return directionality;
    }
    
    final int aH() {
        this.gk = 0;
        int n = 0;
        int n2 = 0;
        int n3 = 0;
        while (this.gk < this.length && n == 0) {
            this.gl = this.gi.charAt(this.gk);
            int n4 = 0;
            Label_0085: {
                if (Character.isHighSurrogate(this.gl)) {
                    final int codePoint = Character.codePointAt(this.gi, this.gk);
                    this.gk += Character.charCount(codePoint);
                    n4 = Character.getDirectionality(codePoint);
                }
                else {
                    ++this.gk;
                    n4 = a(this.gl);
                    if (this.gj) {
                        if (this.gl == '<') {
                            final int gk = this.gk;
                            while (this.gk < this.length) {
                                this.gl = this.gi.charAt(this.gk++);
                                if (this.gl == '>') {
                                    n4 = 12;
                                    break Label_0085;
                                }
                                if (this.gl != '\"' && this.gl != '\'') {
                                    continue;
                                }
                                final char gl = this.gl;
                                while (this.gk < this.length) {
                                    if ((this.gl = this.gi.charAt(this.gk++)) == gl) {
                                        break;
                                    }
                                }
                            }
                            this.gk = gk;
                            this.gl = '<';
                            n4 = 13;
                        }
                        else if (this.gl == '&') {
                            while (this.gk < this.length && (this.gl = this.gi.charAt(this.gk++)) != ';') {}
                            n4 = 12;
                        }
                    }
                }
            }
            switch (n4) {
                case 18: {
                    --n3;
                    n2 = 0;
                    continue;
                }
                case 16:
                case 17: {
                    ++n3;
                    n2 = 1;
                    continue;
                }
                case 14:
                case 15: {
                    ++n3;
                    n2 = -1;
                }
                case 9: {
                    continue;
                }
                default: {
                    n = n3;
                    continue;
                }
                case 0: {
                    if (n3 == 0) {
                        return -1;
                    }
                    n = n3;
                    continue;
                }
                case 1:
                case 2: {
                    if (n3 == 0) {
                        return 1;
                    }
                    n = n3;
                    continue;
                }
            }
        }
        if (n == 0) {
            return 0;
        }
        if (n2 != 0) {
            return n2;
        }
        while (this.gk > 0) {
            switch (this.aJ()) {
                default: {
                    continue;
                }
                case 14:
                case 15: {
                    if (n != n3) {
                        --n3;
                        continue;
                    }
                    return -1;
                }
                case 16:
                case 17: {
                    if (n == n3) {
                        return 1;
                    }
                    --n3;
                    continue;
                }
                case 18: {
                    ++n3;
                    continue;
                }
            }
        }
        return 0;
    }
    
    final int aI() {
        this.gk = this.length;
        int n = 0;
        int n2 = 0;
        int n3 = 0;
    Label_0136:
        while (true) {
            final int gk = this.gk;
            n3 = 0;
            if (gk <= 0) {
                break;
            }
            switch (this.aJ()) {
                case 18: {
                    ++n2;
                }
                case 9: {
                    continue;
                }
                default: {
                    if (n == 0) {
                        n = n2;
                        continue;
                    }
                    continue;
                }
                case 0: {
                    if (n2 == 0) {
                        n3 = -1;
                        break Label_0136;
                    }
                    if (n == 0) {
                        n = n2;
                        continue;
                    }
                    continue;
                }
                case 14:
                case 15: {
                    if (n == n2) {
                        return -1;
                    }
                    --n2;
                    continue;
                }
                case 1:
                case 2: {
                    if (n2 == 0) {
                        return 1;
                    }
                    if (n == 0) {
                        n = n2;
                        continue;
                    }
                    continue;
                }
                case 16:
                case 17: {
                    if (n == n2) {
                        return 1;
                    }
                    --n2;
                    continue;
                }
            }
        }
        return n3;
    }
}
