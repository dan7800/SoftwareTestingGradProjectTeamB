package org.owasp.html;

import com.google.common.collect.*;

public final class v implements b
{
    private final ImmutableSet<String> cIe;
    
    public v(final Iterable<? extends String> iterable) {
        this.cIe = ImmutableSet.d(iterable);
    }
    
    static String it(String string) {
        final int length = string.length();
        int i = 0;
        int n = 0;
    Label_0385:
        while (i < length) {
            int n2 = 0;
            switch (string.charAt(i)) {
                default: {
                    n2 = n;
                    break;
                }
                case '#':
                case '/':
                case ':':
                case '?': {
                    n2 = 1;
                    break;
                }
                case '(':
                case ')':
                case '\uff1a': {
                    final StringBuilder sb = new StringBuilder(length + 16);
                    int n3 = 0;
                    for (int j = i; j < length; ++j) {
                        final char char1 = string.charAt(j);
                        switch (char1) {
                            default: {
                                if (char1 <= '\u0100' || n != 0) {
                                    break;
                                }
                                switch (char1) {
                                    case 1417: {
                                        sb.append(string, n3, j).append("%d6%89");
                                        n3 = j + 1;
                                        continue;
                                    }
                                    case 1475: {
                                        sb.append(string, n3, j).append("%d7%83");
                                        n3 = j + 1;
                                        continue;
                                    }
                                    case 8758: {
                                        sb.append(string, n3, j).append("%e2%88%b6");
                                        n3 = j + 1;
                                        continue;
                                    }
                                    case 65306: {
                                        sb.append(string, n3, j).append("%ef%bc%9a");
                                        n3 = j + 1;
                                        continue;
                                    }
                                }
                                break;
                            }
                            case 40: {
                                sb.append(string, n3, j).append("%28");
                                n3 = j + 1;
                                break;
                            }
                            case 41: {
                                sb.append(string, n3, j).append("%29");
                                n3 = j + 1;
                                break;
                            }
                        }
                    }
                    string = sb.append(string, n3, length).toString();
                    break Label_0385;
                }
            }
            ++i;
            n = n2;
        }
        return string;
    }
    
    @Override
    public final String apply(final String s, final String s2, final String s3) {
        final int length = s3.length();
        int i = 0;
    Label_0151:
        while (i < length) {
            switch (s3.charAt(i)) {
                default: {
                    ++i;
                    continue;
                }
                case '#':
                case '/':
                case '?': {
                    if (!s3.startsWith("//")) {
                        break Label_0151;
                    }
                    final boolean contains = this.cIe.contains("http");
                    boolean b = false;
                    if (contains) {
                        final boolean contains2 = this.cIe.contains("https");
                        b = false;
                        if (contains2) {
                            b = true;
                        }
                    }
                    if (!b) {
                        break;
                    }
                    break Label_0151;
                }
                case ':': {
                    if (this.cIe.contains(W.hL(s3.substring(0, i)))) {
                        break Label_0151;
                    }
                    break;
                }
            }
            return null;
        }
        return it(s3);
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o != null && this.getClass() == o.getClass() && this.cIe.equals(((v)o).cIe);
    }
    
    @Override
    public final int hashCode() {
        return this.cIe.hashCode();
    }
}
