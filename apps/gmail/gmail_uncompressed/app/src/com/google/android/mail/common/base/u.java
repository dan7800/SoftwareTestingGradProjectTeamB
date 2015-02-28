package com.google.android.mail.common.base;

import java.util.*;

final class u extends j
{
    @Override
    public final String A(final CharSequence charSequence) {
        G.ak(charSequence);
        return "";
    }
    
    @Override
    public final String B(final CharSequence charSequence) {
        if (charSequence.length() == 0) {
            return "";
        }
        return " ";
    }
    
    @Override
    public final j VW() {
        return u.coY;
    }
    
    @Override
    public final j VX() {
        return this;
    }
    
    @Override
    public final j a(final j j) {
        G.ak(j);
        return this;
    }
    
    @Override
    public final String a(final CharSequence charSequence, final char c) {
        final char[] array = new char[charSequence.length()];
        Arrays.fill(array, c);
        return new String(array);
    }
    
    @Override
    public final String a(final CharSequence charSequence, final CharSequence charSequence2) {
        final StringBuilder sb = new StringBuilder(charSequence.length() * charSequence2.length());
        for (int i = 0; i < charSequence.length(); ++i) {
            sb.append(charSequence2);
        }
        return sb.toString();
    }
    
    @Override
    public final int b(final CharSequence charSequence, int n) {
        final int length = charSequence.length();
        G.ad(n, length);
        if (n == length) {
            n = -1;
        }
        return n;
    }
    
    @Override
    public final boolean i(final char c) {
        return true;
    }
    
    @Override
    public final int y(final CharSequence charSequence) {
        if (charSequence.length() == 0) {
            return -1;
        }
        return 0;
    }
    
    @Override
    public final String z(final CharSequence charSequence) {
        G.ak(charSequence);
        return "";
    }
}
