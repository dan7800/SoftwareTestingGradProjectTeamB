package org.apache.james.mime4j;

import java.util.*;
import java.io.*;

public class h
{
    private static final f cDh;
    private static BitSet cDy;
    private LinkedList<a> cDA;
    private c cDB;
    private boolean cDC;
    private boolean cDD;
    private i cDz;
    
    static {
        cDh = new f();
        h.cDy = null;
        h.cDy = new BitSet();
        for (int i = 33; i <= 57; ++i) {
            h.cDy.set(i);
        }
        for (int j = 59; j <= 126; ++j) {
            h.cDy.set(j);
        }
    }
    
    public h() {
        this.cDz = null;
        this.cDA = new LinkedList<a>();
        this.cDB = null;
        this.cDC = false;
        this.cDD = false;
    }
    
    private void j(InputStream inputStream) {
        a a;
        if (this.cDA.isEmpty()) {
            a = null;
        }
        else {
            a = this.cDA.getFirst();
        }
        final a a2 = new a(a);
        this.cDB.kZ();
        final int lineNumber = this.cDz.getLineNumber();
        final StringBuffer sb = new StringBuffer();
        int n = 0;
        while (true) {
            final int read = inputStream.read();
            if (read == -1) {
                break;
            }
            if (read == 10 && (n == 10 || n == 0)) {
                sb.deleteCharAt(-1 + sb.length());
                break;
            }
            sb.append((char)read);
            if (read == 13) {
                continue;
            }
            n = read;
        }
        int n2 = lineNumber;
        int n3 = lineNumber;
        int n4 = 0;
        int i = 0;
        while (i < sb.length()) {
            while (i < sb.length() && sb.charAt(i) != '\r') {
                ++i;
            }
            if (i < -1 + sb.length() && sb.charAt(i + 1) != '\n') {
                ++i;
            }
            else {
                if (i >= -2 + sb.length() || h.cDy.get(sb.charAt(i + 2))) {
                    final String substring = sb.substring(n4, i);
                    final int n5 = i + 2;
                    final int index = substring.indexOf(58);
                    int n6 = 0;
                    Label_0380: {
                        if (index != -1) {
                            final boolean value = h.cDy.get(substring.charAt(0));
                            n6 = 0;
                            if (value) {
                                final String trim = substring.substring(0, index).trim();
                                int j = 0;
                                while (true) {
                                    while (j < trim.length()) {
                                        if (!h.cDy.get(trim.charAt(j))) {
                                            n6 = 0;
                                            if (n6 != 0) {
                                                this.cDB.ac(substring);
                                                a2.aA(trim, substring.substring(index + 1));
                                            }
                                            break Label_0380;
                                        }
                                        else {
                                            ++j;
                                        }
                                    }
                                    n6 = 1;
                                    continue;
                                }
                            }
                        }
                    }
                    if (n6 == 0) {
                        final f cDh = h.cDh;
                        f.isWarnEnabled();
                        final f cDh2 = h.cDh;
                        f.warn("Line " + n3 + ": Ignoring invalid field: '" + substring.trim() + "'");
                    }
                    n3 = n2;
                    n4 = n5;
                }
                i += 2;
                ++n2;
            }
        }
        this.cDB.la();
        if (a2.aaw()) {
            this.cDA.addFirst(a2);
            this.cDB.lb();
            g g = new g(inputStream, a2.aax());
            this.cDB.e(new b(g));
            g.aaD();
            while (g.aaB()) {
                g = new g(inputStream, a2.aax());
                if (this.cDC) {
                    final c cdb = this.cDB;
                    new b(g);
                    cdb.lf();
                }
                else {
                    this.cDB.ld();
                    this.j(g);
                    this.cDB.le();
                }
                g.aaD();
                if (g.aaC()) {
                    this.cDD = true;
                    break;
                }
            }
            this.cDB.d(new b(inputStream));
            this.cDB.lc();
            this.cDA.removeFirst();
        }
        else if (a2.aav()) {
            if (a2.aay()) {
                final f cDh3 = h.cDh;
                f.warn("base64 encoded message/rfc822 detected");
                inputStream = new d(new org.apache.james.mime4j.a.a(inputStream));
            }
            else if (a2.aaz()) {
                final f cDh4 = h.cDh;
                f.warn("quoted-printable encoded message/rfc822 detected");
                inputStream = new d(new org.apache.james.mime4j.a.d(inputStream));
            }
            this.cDA.addFirst(a2);
            this.k(inputStream);
            this.cDA.removeFirst();
        }
        else {
            this.cDB.a(a2, new b(inputStream));
        }
        while (inputStream.read() != -1) {}
    }
    
    private void k(final InputStream inputStream) {
        if (this.cDC) {
            final c cdb = this.cDB;
            new b(inputStream);
            cdb.lf();
            return;
        }
        this.cDB.kX();
        this.j(inputStream);
        this.cDB.kY();
    }
    
    public final void a(final c cdb) {
        this.cDB = cdb;
    }
    
    public final boolean aaF() {
        return this.cDD;
    }
    
    public final void b(final InputStream inputStream) {
        this.k(this.cDz = new i(inputStream));
    }
}
