package org.owasp.html;

import java.util.*;
import com.google.common.collect.*;

public final class TagBalancingHtmlStreamEventReceiver implements N
{
    static final ImmutableMap<String, aa> cKp;
    private final N cKm;
    private int cKn;
    private final List<aa> cKo;
    
    static {
        cKp = new TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships((byte)0).cKw.Zo();
    }
    
    public TagBalancingHtmlStreamEventReceiver(final N cKm) {
        this.cKn = Integer.MAX_VALUE;
        this.cKo = new ArrayList<aa>();
        this.cKm = cKm;
    }
    
    private void Z(final List<aa> list) {
        for (final aa aa : list) {
            if (this.cKo.size() < this.cKn) {
                this.cKm.b(aa.cHM, new ArrayList<String>());
            }
            this.cKo.add(aa);
        }
    }
    
    private void a(final aa aa) {
        final int size = this.cKo.size();
        if (size != 0) {
            aa aa2 = this.cKo.get(size - 1);
            while (true) {
                Label_0269: {
                    if ((aa2.cKs & aa.cKr) != 0x0) {
                        break Label_0269;
                    }
                    final aa cKt = aa2.cKt;
                    if (cKt == null || (cKt.cKs & aa.cKr) == 0x0) {
                        break Label_0269;
                    }
                    this.cKm.b(cKt.cHM, new ArrayList<String>());
                    this.cKo.add(cKt);
                    final int n = size + 1;
                    aa2 = cKt;
                    int n2 = n;
                    aa aa3 = aa2;
                    List<aa> list = null;
                    while (true) {
                        while ((aa3.cKs & aa.cKr) == 0x0) {
                            if (this.cKo.size() < this.cKn) {
                                this.cKm.ip(aa3.cHM);
                            }
                            final List<aa> cKo = this.cKo;
                            --n2;
                            cKo.remove(n2);
                            if (aa3.cKq) {
                                if (list == null) {
                                    list = new ArrayList<aa>();
                                }
                                list.add(aa3);
                            }
                            final List<aa> list2 = list;
                            if (n2 != 0) {
                                final aa aa4 = this.cKo.get(n2 - 1);
                                final List<aa> list3 = list2;
                                aa3 = aa4;
                                list = list3;
                            }
                            else {
                                if (list2 != null) {
                                    this.Z(list2);
                                }
                                return;
                            }
                        }
                        final List<aa> list2 = list;
                        continue;
                    }
                }
                final int n = size;
                continue;
            }
        }
    }
    
    private static boolean iC(final String s) {
        return s.length() == 2 && s.charAt(0) == 'h' && s.charAt(1) <= '9';
    }
    
    static boolean iD(final String s) {
        final aa aa = TagBalancingHtmlStreamEventReceiver.cKp.get(s);
        if (aa == null || (aa.cKs & TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships.cKx.cKr) != 0x0) {
            switch (Z.cJx[HtmlTextEscapingMode.ix(s).ordinal()]) {
                case 1: {
                    return true;
                }
                case 2: {
                    return true;
                }
                case 3: {
                    return true;
                }
                case 4: {
                    return false;
                }
                case 5:
                case 6: {
                    return "xmp".equals(s) || "listing".equals(s);
                }
            }
        }
        return false;
    }
    
    @Override
    public final void abZ() {
        this.cKm.abZ();
    }
    
    @Override
    public final void aca() {
        int min = Math.min(this.cKn, this.cKo.size());
        while (true) {
            final int n = min - 1;
            if (n < 0) {
                break;
            }
            this.cKm.ip(this.cKo.get(n).cHM);
            min = n;
        }
        this.cKo.clear();
        this.cKm.aca();
    }
    
    public final void acj() {
        if (this.cKo.size() > 256) {
            throw new IllegalStateException();
        }
        this.cKn = 256;
    }
    
    @Override
    public final void b(final String s, final List<String> list) {
        final aa aa = TagBalancingHtmlStreamEventReceiver.cKp.get(HtmlLexer.iu(s));
        if (aa == null) {
            if (this.cKo.size() < this.cKn) {
                this.cKm.b(s, list);
            }
        }
        else {
            this.a(aa);
            if (this.cKo.size() < this.cKn) {
                this.cKm.b(aa.cHM, list);
            }
            if (!aa.cHN) {
                this.cKo.add(aa);
            }
        }
    }
    
    @Override
    public final void io(final String s) {
        final int length = s.length();
        int i = 0;
        while (true) {
            while (i < length) {
                final char char1 = s.charAt(i);
                int n = 0;
                if (char1 <= ' ') {
                    final long n2 = lcmp(0x100003600L & 1L << char1, 0L);
                    n = 0;
                    if (n2 != 0) {
                        ++i;
                        continue;
                    }
                }
                if (n == 0) {
                    this.a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships.cKx);
                }
                if (this.cKo.size() < this.cKn) {
                    this.cKm.io(s);
                }
                return;
            }
            int n = 1;
            continue;
        }
    }
    
    @Override
    public final void ip(final String s) {
        final String iu = HtmlLexer.iu(s);
        final aa aa = TagBalancingHtmlStreamEventReceiver.cKp.get(iu);
        if (aa != null) {
            int lastIndex = this.cKo.lastIndexOf(aa);
        Label_0134:
            while (true) {
                if (iC(iu)) {
                    int size = this.cKo.size();
                    while (--size >= lastIndex + 1) {
                        final aa aa2 = this.cKo.get(size);
                        if (iC(aa2.cHM)) {
                            final String chm = aa2.cHM;
                            lastIndex = size;
                            final aa aa3 = aa2;
                            break Label_0134;
                        }
                    }
                }
                Label_0361: {
                    break Label_0361;
                    if (lastIndex < 0) {
                        return;
                    }
                    final aa aa3;
                    final int cKu = aa3.cKu;
                    int size2 = this.cKo.size();
                    while (true) {
                        final int n = size2 - 1;
                        if (n <= lastIndex) {
                            break;
                        }
                        if ((cKu & this.cKo.get(n).cKv) != 0x0) {
                            return;
                        }
                        size2 = n;
                    }
                    int size3 = this.cKo.size();
                    List<aa> list = null;
                    while (true) {
                        final int n2 = size3 - 1;
                        if (n2 <= lastIndex) {
                            break;
                        }
                        final aa aa4 = this.cKo.remove(n2);
                        if (n2 + 1 < this.cKn) {
                            this.cKm.ip(aa4.cHM);
                        }
                        if (aa4.cKq) {
                            if (list == null) {
                                list = new ArrayList<aa>();
                            }
                            list.add(aa4);
                        }
                        size3 = n2;
                    }
                    if (this.cKo.size() < this.cKn) {
                        this.cKm.ip(aa3.cHM);
                    }
                    this.cKo.remove(lastIndex);
                    if (list != null) {
                        this.Z(list);
                        return;
                    }
                    return;
                }
                final aa aa3 = aa;
                continue Label_0134;
            }
        }
        if (this.cKo.size() < this.cKn) {
            this.cKm.ip(s);
        }
    }
}
