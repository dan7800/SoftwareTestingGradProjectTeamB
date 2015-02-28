package org.owasp.html;

import java.util.*;

final class ab
{
    private static final char[] cLc;
    private static final ab[] cLd;
    private final char[] cKZ;
    private final ab[] cLa;
    private final boolean cLb;
    private final int value;
    
    static {
        cLc = new char[0];
        cLd = new ab[0];
    }
    
    private ab(final List<Map.Entry<String, Integer>> list) {
        this(list, 0, 0, list.size());
    }
    
    private ab(final List<Map.Entry<String, Integer>> list, final int n, int n2, final int n3) {
        this.cLb = (n == list.get(n2).getKey().length());
        if (this.cLb) {
            this.value = list.get(n2).getValue();
            if (n2 + 1 == n3) {
                this.cKZ = ab.cLc;
                this.cLa = ab.cLd;
                return;
            }
            ++n2;
        }
        else {
            this.value = Integer.MAX_VALUE;
        }
        int n4 = -1;
        int i = n2;
        int n5 = 0;
        while (i < n3) {
            int char1 = list.get(i).getKey().charAt(n);
            int n6;
            if (char1 != n4) {
                n6 = n5 + 1;
            }
            else {
                char1 = n4;
                n6 = n5;
            }
            ++i;
            n5 = n6;
            n4 = char1;
        }
        this.cKZ = new char[n5];
        this.cLa = new ab[n5];
        final char char2 = list.get(n2).getKey().charAt(n);
        int j = n2 + 1;
        int n7 = 0;
        int n8 = n2;
        char c = char2;
        while (j < n3) {
            char char3 = list.get(j).getKey().charAt(n);
            int n9;
            int n10;
            if (char3 != c) {
                this.cKZ[n7] = c;
                final ab[] cLa = this.cLa;
                n9 = n7 + 1;
                cLa[n7] = new ab(list, n + 1, n8, j);
                n10 = j;
            }
            else {
                char3 = c;
                n9 = n7;
                n10 = n8;
            }
            ++j;
            n8 = n10;
            n7 = n9;
            c = char3;
        }
        this.cKZ[n7] = c;
        this.cLa[n7] = new ab(list, n + 1, n8, n3);
    }
    
    public ab(final Map<String, Integer> map) {
        this(new ArrayList<Map.Entry<String, Integer>>(new TreeMap(map).entrySet()));
    }
    
    private void a(final int n, final StringBuilder sb) {
        String s;
        if (this.cLb) {
            s = "terminal";
        }
        else {
            s = "nonterminal";
        }
        sb.append(s);
        final int n2 = n + 1;
        for (int i = 0; i < this.cKZ.length; ++i) {
            sb.append('\n');
            for (int j = 0; j < n2; ++j) {
                sb.append('\t');
            }
            sb.append('\'').append(this.cKZ[i]).append("' ");
            this.cLa[i].a(n2, sb);
        }
    }
    
    public final boolean acl() {
        return this.cLb;
    }
    
    public final int getValue() {
        return this.value;
    }
    
    public final ab q(final char c) {
        final int binarySearch = Arrays.binarySearch(this.cKZ, c);
        if (binarySearch >= 0) {
            return this.cLa[binarySearch];
        }
        return null;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        this.a(0, sb);
        return sb.toString();
    }
}
