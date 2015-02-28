package com.google.android.mail.common.base;

import java.util.*;

public abstract class j
{
    public static final j coJ;
    public static final j coK;
    public static final j coL;
    public static final j coM;
    public static final j coN;
    public static final j coO;
    public static final j coP;
    public static final j coQ;
    public static final j coR;
    public static final j coS;
    public static final j coT;
    public static final j coU;
    public static final j coV;
    @Deprecated
    public static final j coW;
    public static final j coX;
    public static final j coY;
    
    static {
        coJ = x("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000 \u180e\u202f").a(b('\u2000', '\u200a'));
        coK = x("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000").a(b('\u2000', '\u2006')).a(b('\u2008', '\u200a'));
        coL = b('\0', '\u007f');
        final j b = b('0', '9');
        final char[] charArray = "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10".toCharArray();
        final int length = charArray.length;
        j a = b;
        for (final char c : charArray) {
            a = a.a(b(c, (char)(c + '\t')));
        }
        coM = a;
        coN = b('\t', '\r').a(b('\u001c', ' ')).a(h('\u1680')).a(h('\u180e')).a(b('\u2000', '\u2006')).a(b('\u2008', '\u200b')).a(b('\u2028', '\u2029')).a(h('\u205f')).a(h('\u3000'));
        coO = new k();
        coP = new q();
        coQ = new r();
        coR = new s();
        coS = new t();
        coT = b('\0', '\u001f').a(b('\u007f', '\u009f'));
        coU = b('\0', ' ').a(b('\u007f', ' ')).a(h('\u00ad')).a(b('\u0600', '\u0603')).a(x("\u06dd\u070f\u1680\u17b4\u17b5\u180e")).a(b('\u2000', '\u200f')).a(b('\u2028', '\u202f')).a(b('\u205f', '\u2064')).a(b('\u206a', '\u206f')).a(h('\u3000')).a(b('\ud800', '\uf8ff')).a(x("\ufeff\ufff9\ufffa\ufffb"));
        coV = b('\0', '\u04f9').a(h('\u05be')).a(b('\u05d0', '\u05ea')).a(h('\u05f3')).a(h('\u05f4')).a(b('\u0600', '\u06ff')).a(b('\u0750', '\u077f')).a(b('\u0e00', '\u0e7f')).a(b('\u1e00', '\u20af')).a(b('\u2100', '\u213a')).a(b('\ufb50', '\ufdff')).a(b('\ufe70', '\ufeff')).a(b('\uff61', '\uffdc'));
        coW = x(" \r\n\t\u3000 \u2007\u202f").VX();
        coX = new u();
        coY = new v();
    }
    
    private static j b(final char c, final char c2) {
        int n;
        if (c2 >= c) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            throw new IllegalArgumentException();
        }
        return new n(c, c2);
    }
    
    public static j h(final char c) {
        return new w(c);
    }
    
    public static j x(final CharSequence charSequence) {
        switch (charSequence.length()) {
            default: {
                final char[] charArray = charSequence.toString().toCharArray();
                Arrays.sort(charArray);
                return new m(charArray);
            }
            case 0: {
                return j.coY;
            }
            case 1: {
                return h(charSequence.charAt(0));
            }
            case 2: {
                return new l(charSequence.charAt(0), charSequence.charAt(1));
            }
        }
    }
    
    public String A(final CharSequence charSequence) {
        int length;
        int n;
        for (length = charSequence.length(), n = 0; n < length && this.i(charSequence.charAt(n)); ++n) {}
        int n2;
        for (n2 = length - 1; n2 > n && this.i(charSequence.charAt(n2)); --n2) {}
        return charSequence.subSequence(n, n2 + 1).toString();
    }
    
    public String B(final CharSequence charSequence) {
        final int y = this.y(charSequence);
        if (y == -1) {
            return charSequence.toString();
        }
        final StringBuilder append = new StringBuilder(charSequence.length()).append(charSequence.subSequence(0, y)).append(' ');
        int i = y + 1;
        int n = 1;
        while (i < charSequence.length()) {
            final char char1 = charSequence.charAt(i);
            if (this.apply(char1)) {
                if (n == 0) {
                    append.append(' ');
                    n = 1;
                }
            }
            else {
                append.append(char1);
                n = 0;
            }
            ++i;
        }
        return append.toString();
    }
    
    public final String C(final CharSequence charSequence) {
        int i = this.VW().y(charSequence);
        if (i == -1) {
            return "";
        }
        final StringBuilder sb = new StringBuilder(charSequence.length());
        int n = 0;
        while (i < charSequence.length()) {
            final char char1 = charSequence.charAt(i);
            if (this.apply(char1)) {
                n = 1;
            }
            else {
                if (n != 0) {
                    sb.append(' ');
                    n = 0;
                }
                sb.append(char1);
            }
            ++i;
        }
        return sb.toString();
    }
    
    public j VW() {
        return new o(this, this);
    }
    
    public j VX() {
        return E.b(this);
    }
    
    final j VY() {
        final y y = new y();
        this.a(y);
        return new p(this, y);
    }
    
    public j a(final j j) {
        return new z(Arrays.asList(this, G.ak(j)));
    }
    
    public String a(final CharSequence charSequence, final char c) {
        final String string = charSequence.toString();
        final int y = this.y(string);
        if (y == -1) {
            return string;
        }
        final char[] charArray = string.toCharArray();
        charArray[y] = c;
        for (int i = y + 1; i < charArray.length; ++i) {
            if (this.i(charArray[i])) {
                charArray[i] = c;
            }
        }
        return new String(charArray);
    }
    
    public String a(final CharSequence charSequence, final CharSequence charSequence2) {
        int n = 0;
        final int length = charSequence2.length();
        if (length == 0) {
            return this.z(charSequence);
        }
        if (length == 1) {
            return this.a(charSequence, charSequence2.charAt(0));
        }
        final String string = charSequence.toString();
        int i = this.y(string);
        if (i == -1) {
            return string;
        }
        final int length2 = string.length();
        final StringBuilder sb = new StringBuilder(16 + (int)(1.5 * length2));
        do {
            sb.append(string, n, i);
            sb.append(charSequence2);
            n = i + 1;
            i = this.b(string, n);
        } while (i != -1);
        sb.append(string, n, length2);
        return sb.toString();
    }
    
    protected void a(final y y) {
        char c = '\0';
        while (true) {
            if (this.i(c)) {
                y.j(c);
            }
            final char c2 = (char)(c + '\u0001');
            if (c == '\uffff') {
                break;
            }
            c = c2;
        }
    }
    
    public boolean apply(final Character c) {
        return this.i(c);
    }
    
    public int b(final CharSequence charSequence, final int n) {
        final int length = charSequence.length();
        G.ad(n, length);
        for (int i = n; i < length; ++i) {
            if (this.i(charSequence.charAt(i))) {
                return i;
            }
        }
        return -1;
    }
    
    public abstract boolean i(final char p0);
    
    public int y(final CharSequence charSequence) {
        for (int length = charSequence.length(), i = 0; i < length; ++i) {
            if (this.i(charSequence.charAt(i))) {
                return i;
            }
        }
        return -1;
    }
    
    public String z(final CharSequence charSequence) {
        final String string = charSequence.toString();
        int y = this.y(string);
        if (y == -1) {
            return string;
        }
        final char[] charArray = string.toCharArray();
        int n = 1;
        while (++y != charArray.length) {
            if (!this.i(charArray[y])) {
                charArray[y - n] = charArray[y];
            }
            else {
                ++n;
            }
        }
        return new String(charArray, 0, y - n);
    }
}
