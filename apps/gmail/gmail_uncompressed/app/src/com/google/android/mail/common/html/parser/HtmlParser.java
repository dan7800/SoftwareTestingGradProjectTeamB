package com.google.android.mail.common.html.parser;

import com.google.common.collect.*;
import java.util.*;
import com.google.android.mail.common.base.*;
import java.util.regex.*;

public final class HtmlParser
{
    private static boolean DEBUG;
    public static final x cuo;
    static Pattern cus;
    private static final Pattern cut;
    private boolean aBx;
    private List<i> cub;
    private HtmlParser$State cul;
    private int cum;
    private String cun;
    private List<x> cup;
    private final boolean cuq;
    private final boolean cur;
    private final HashMap<String, HTML$Element> cuu;
    private final HashMap<String, a> cuv;
    
    static {
        HtmlParser.DEBUG = false;
        cuo = b.Wd();
        HtmlParser.cus = Pattern.compile("[\"'&<>=\\s]");
        cut = Pattern.compile("\\& \\#? [0-9a-zA-Z]{0,8} $", 4);
    }
    
    public HtmlParser() {
        this(HtmlParser$ParseStyle.cuC);
    }
    
    private HtmlParser(final HtmlParser$ParseStyle htmlParser$ParseStyle) {
        this.cum = Integer.MAX_VALUE;
        this.cup = Lists.n(HtmlParser.cuo);
        this.cuu = Maps.aan();
        this.cuv = Maps.aan();
        boolean cur = false;
        Label_0081: {
            if (!(this.cuq = (htmlParser$ParseStyle == HtmlParser$ParseStyle.cuE))) {
                final HtmlParser$ParseStyle cuD = HtmlParser$ParseStyle.cuD;
                cur = false;
                if (htmlParser$ParseStyle != cuD) {
                    break Label_0081;
                }
            }
            cur = true;
        }
        this.cur = cur;
    }
    
    private static List<i> T(final List<i> list) {
        final ArrayList<i> list2 = new ArrayList<i>(list.size());
        final LinkedList<k> list3 = new LinkedList<k>();
        for (final i i : list) {
            if (i instanceof k) {
                list3.add((k)i);
            }
            else {
                a(list3, list2);
                list2.add(i);
            }
        }
        a(list3, list2);
        return list2;
    }
    
    private void a(final HTML$Element html$Element, final int n, final int n2, final int n3) {
        boolean b = true;
        M.assertTrue(html$Element != null && b);
        M.assertTrue(this.cun.charAt(n) == '<' && b);
        M.assertTrue(this.cun.charAt(n + 1) == '/' && b);
        if (this.cuq) {
            if (n >= n3) {
                b = false;
            }
            M.assertTrue(b);
            this.cub.add(HtmlDocument.a(html$Element, this.cun.substring(n, n3)));
            return;
        }
        if (this.cur) {
            final StringBuilder sb = new StringBuilder("</");
            M.assertTrue(n < n2 && b);
            sb.append(d.VT().gF(this.cun.substring(n + 2, n2)));
            if (n2 > n3) {
                b = false;
            }
            M.assertTrue(b);
            String s = this.cun.substring(n2, n3);
            if (s.charAt(-1 + s.length()) != '>') {
                s += '>';
            }
            sb.append(s.replaceAll("\\S+.*>", ">"));
            this.cub.add(HtmlDocument.a(html$Element, sb.toString()));
            return;
        }
        this.cub.add(HtmlDocument.a(html$Element, null));
    }
    
    private static void a(final LinkedList<k> list, final List<i> list2) {
        if (!list.isEmpty()) {
            if (list.size() != 1) {
                final Iterator<k> iterator = (Iterator<k>)list.iterator();
                int n = 0;
                int n2 = 0;
                while (iterator.hasNext()) {
                    final k k = iterator.next();
                    n2 += k.getText().length();
                    int n3;
                    if (k.Wl() != null) {
                        n3 = n + k.Wl().length();
                    }
                    else {
                        n3 = n;
                    }
                    n = n3;
                }
                final StringBuilder sb = new StringBuilder(n2);
                final StringBuilder sb2 = new StringBuilder(n);
                while (!list.isEmpty()) {
                    final k i = list.removeFirst();
                    sb.append(i.getText());
                    if (i.Wl() != null) {
                        sb2.append(i.Wl());
                    }
                }
                String string;
                if (n > 0) {
                    string = sb2.toString();
                }
                else {
                    string = null;
                }
                list2.add(HtmlDocument.au(sb.toString(), string));
                return;
            }
            list2.add(list.removeFirst());
        }
    }
    
    private int af(final int n, final int n2) {
        final HTML$Element wf = this.cub.get(-1 + this.cub.size()).Wf();
        M.assertTrue(b.crq.equals(wf) || b.crw.equals(wf));
        int n3;
        for (n3 = n; n3 < n2 && (n3 + 2 >= n2 || this.cun.charAt(n3) != '<' || this.cun.charAt(n3 + 1) != '/' || !this.cun.regionMatches(true, n3 + 2, wf.getName(), 0, wf.getName().length())); ++n3) {}
        if (n3 > n) {
            this.cub.add(new com.google.android.mail.common.html.parser.d(this.cun.substring(n, n3), (byte)0));
        }
        this.cul = HtmlParser$State.cuH;
        return n3;
    }
    
    private a gM(final String s) {
        final ListIterator<x> listIterator = this.cup.listIterator(this.cup.size());
        while (listIterator.hasPrevious()) {
            final a gm = listIterator.previous().gM(s);
            if (gm != null) {
                return gm;
            }
        }
        return null;
    }
    
    private HTML$Element gO(final String s) {
        final String lowerCase = s.toLowerCase();
        HTML$Element html$Element = this.cuu.get(lowerCase);
        if (html$Element == null) {
            html$Element = new HTML$Element(lowerCase, 0, false, true, false, HTML$Element$Flow.cpU);
            this.cuu.put(lowerCase, html$Element);
        }
        return html$Element;
    }
    
    public final HtmlDocument gN(final String cun) {
        this.cun = cun;
        this.cub = new LinkedList<i>();
        this.cul = HtmlParser$State.cuG;
        this.aBx = false;
        final int length = cun.length();
        final int min = Math.min(this.cum, length);
        int n3 = 0;
    Label_0586_Outer:
        for (int n = 0; n < length && !this.aBx; n = n3) {
            switch (n.cuw[this.cul.ordinal()]) {
                default: {
                    throw new Error("Unknown state!");
                }
                case 1: {
                    int i;
                    for (i = n; i < min; ++i) {
                        if (this.cun.charAt(i) == '<' && i + 1 < min) {
                            final char char1 = this.cun.charAt(i + 1);
                            if (char1 == '/' || Character.isLetter(char1) || char1 == '!' || char1 == '?') {
                                if (this.cun.regionMatches(i + 1, "!--", 0, 3)) {
                                    this.cul = HtmlParser$State.cuI;
                                    break;
                                }
                                this.cul = HtmlParser$State.cuH;
                                break;
                            }
                        }
                    }
                    Label_0335: {
                        if (i > n) {
                            String s = this.cun.substring(n, i);
                            while (true) {
                                Label_2627: {
                                    if (i != this.cum || this.cum >= this.cun.length()) {
                                        break Label_2627;
                                    }
                                    final Matcher matcher = HtmlParser.cut.matcher(s);
                                    if (!matcher.find()) {
                                        break Label_2627;
                                    }
                                    final int start = matcher.start();
                                    final int n2 = n + start;
                                    s = s.substring(0, start);
                                    if (n2 > n) {
                                        String a;
                                        if (this.cuq) {
                                            a = s;
                                        }
                                        else {
                                            final boolean cur = this.cur;
                                            a = null;
                                            if (cur) {
                                                a = j.h('<').a(s, "&lt;");
                                            }
                                        }
                                        this.cub.add(HtmlDocument.av(s, a));
                                    }
                                    break Label_0335;
                                }
                                final int n2 = i;
                                continue;
                            }
                        }
                    }
                    M.assertTrue(i > n || this.cul != HtmlParser$State.cuG);
                    n3 = i;
                    break;
                }
                case 2: {
                    M.assertTrue(this.cun.charAt(n) == '<');
                    final int n4 = n + 1;
                    this.cul = HtmlParser$State.cuG;
                    int n5;
                    boolean b;
                    if (this.cun.charAt(n4) == '/') {
                        n5 = n4 + 1;
                        b = true;
                    }
                    else {
                        n5 = n4;
                        b = false;
                    }
                    final p p = new p(this.cun);
                    final int ag = p.ag(n5, length);
                    final String tagName = p.getTagName();
                    while (true) {
                        int j = 0;
                    Label_0586:
                        while (true) {
                            HTML$Element html$Element = null;
                            Label_0643: {
                                if (tagName != null) {
                                    final ListIterator<x> listIterator = this.cup.listIterator(this.cup.size());
                                    while (true) {
                                        while (listIterator.hasPrevious()) {
                                            final HTML$Element gl = listIterator.previous().gL(tagName);
                                            if (gl != null) {
                                                if (gl == null) {
                                                    if (HtmlParser.DEBUG) {
                                                        System.err.println("Unknown element: " + tagName);
                                                    }
                                                    if (this.cuq) {
                                                        html$Element = this.gO(tagName);
                                                        break Label_0643;
                                                    }
                                                }
                                                html$Element = gl;
                                                break Label_0643;
                                            }
                                        }
                                        final HTML$Element gl = null;
                                        continue Label_0586_Outer;
                                    }
                                }
                                final int n6;
                                if (!b) {
                                    String s2;
                                    if (this.cuq) {
                                        s2 = "<";
                                    }
                                    else {
                                        s2 = null;
                                    }
                                    this.cub.add(HtmlDocument.au("<", s2));
                                    this.cul = HtmlParser$State.cuG;
                                    n6 = n5;
                                }
                                else {
                                    final boolean cuq = this.cuq;
                                    html$Element = null;
                                    if (cuq) {
                                        html$Element = this.gO("");
                                    }
                                    break Label_0643;
                                }
                                M.assertTrue(n6 > n);
                                n3 = n6;
                                break;
                            }
                            List<com.google.android.mail.common.html.parser.j> list = null;
                            final o o = new o(this.cun);
                            int n7 = ag;
                            j = ag;
                            while (j < length) {
                                final char char2 = this.cun.charAt(j);
                                int n11 = 0;
                                Label_0954: {
                                    if (j + 1 < length && char2 == '/' && this.cun.charAt(j + 1) == '>') {
                                        final int n8 = j + 1;
                                        final int n9 = 1;
                                        if (n8 == length) {
                                            M.assertTrue(n < length);
                                            final String substring = this.cun.substring(n, length);
                                            String a2;
                                            if (this.cuq) {
                                                a2 = substring;
                                            }
                                            else {
                                                final boolean cur2 = this.cur;
                                                a2 = null;
                                                if (cur2) {
                                                    a2 = com.google.android.mail.common.base.j.h('<').a(this.cun.substring(n, length), "&lt;");
                                                }
                                            }
                                            this.cub.add(HtmlDocument.av(substring, a2));
                                            final int n6 = length;
                                            continue Label_0586;
                                        }
                                        M.assertTrue(this.cun.charAt(n8) == '>');
                                        final int n10 = n8 + 1;
                                        if (html$Element != null) {
                                            if (b) {
                                                this.a(html$Element, n, ag, n10);
                                                n11 = n10;
                                                break Label_0954;
                                            }
                                            if (com.google.android.mail.common.html.parser.b.crq.equals(html$Element) || com.google.android.mail.common.html.parser.b.crw.equals(html$Element)) {
                                                this.cul = HtmlParser$State.cuJ;
                                            }
                                            M.assertTrue(n < ag);
                                            M.assertTrue(ag <= n7);
                                            M.assertTrue(n7 <= n10);
                                            if (this.cuq) {
                                                final String substring2 = this.cun.substring(n, ag);
                                                final String substring3 = this.cun.substring(n7, n10);
                                                HtmlDocument$Tag htmlDocument$Tag;
                                                if (n9 != 0) {
                                                    htmlDocument$Tag = HtmlDocument.b(html$Element, list, substring2, substring3);
                                                }
                                                else {
                                                    htmlDocument$Tag = HtmlDocument.a(html$Element, list, substring2, substring3);
                                                }
                                                this.cub.add(htmlDocument$Tag);
                                                n11 = n10;
                                                break Label_0954;
                                            }
                                            if (this.cur) {
                                                M.assertTrue(this.cun.charAt(n) == '<');
                                                final StringBuilder sb = new StringBuilder("<");
                                                sb.append(d.VT().gF(this.cun.substring(n + 1, ag)));
                                                int n12 = n10 - 1;
                                                M.assertTrue(this.cun.charAt(n12) == '>');
                                                if (n9 != 0) {
                                                    --n12;
                                                    M.assertTrue(this.cun.charAt(n12) == '/');
                                                }
                                                M.assertTrue(n7 <= n12);
                                                M.assertTrue(n7 < n10);
                                                final String substring4 = this.cun.substring(n7, n10);
                                                HtmlDocument$Tag htmlDocument$Tag2;
                                                if (n9 != 0) {
                                                    htmlDocument$Tag2 = HtmlDocument.b(html$Element, list, sb.toString(), substring4);
                                                }
                                                else {
                                                    htmlDocument$Tag2 = HtmlDocument.a(html$Element, list, sb.toString(), substring4);
                                                }
                                                this.cub.add(htmlDocument$Tag2);
                                                n11 = n10;
                                                break Label_0954;
                                            }
                                            HtmlDocument$Tag htmlDocument$Tag3;
                                            if (n9 != 0) {
                                                htmlDocument$Tag3 = HtmlDocument.b(html$Element, list, null, null);
                                            }
                                            else {
                                                htmlDocument$Tag3 = HtmlDocument.a(html$Element, list, null, null);
                                            }
                                            this.cub.add(htmlDocument$Tag3);
                                        }
                                        n11 = n10;
                                    }
                                    else {
                                        if (char2 == '>') {
                                            break;
                                        }
                                        if (!b || '<' != char2) {
                                            int n14;
                                            List<com.google.android.mail.common.html.parser.j> list2;
                                            int n15;
                                            if (Character.isWhitespace(char2)) {
                                                final int n13 = j + 1;
                                                n14 = n7;
                                                list2 = list;
                                                n15 = n13;
                                            }
                                            else {
                                                o.reset();
                                                final int ag2 = o.ag(j, length);
                                                M.assertTrue(ag2 > j);
                                                if (o.getName() != null) {
                                                    final int ah = o.ah(ag2, length);
                                                    Label_1261: {
                                                        if (html$Element != null) {
                                                            ArrayList<com.google.android.mail.common.html.parser.j> list3;
                                                            if (list == null) {
                                                                list3 = new ArrayList<com.google.android.mail.common.html.parser.j>();
                                                            }
                                                            else {
                                                                list3 = (ArrayList<com.google.android.mail.common.html.parser.j>)list;
                                                            }
                                                            M.assertTrue(n7 < ah);
                                                            final String name = o.getName();
                                                            M.assertTrue(name != null);
                                                            final a gm = this.gM(name);
                                                            final String value = o.getValue();
                                                            if (gm == null) {
                                                                if (HtmlParser.DEBUG) {
                                                                    System.err.println("Unknown attribute: " + name);
                                                                }
                                                                if (this.cuq) {
                                                                    final String substring5 = this.cun.substring(n7, ah);
                                                                    final String lowerCase = name.toLowerCase();
                                                                    a a3 = this.cuv.get(lowerCase);
                                                                    if (a3 == null) {
                                                                        a3 = new a(lowerCase);
                                                                        this.cuv.put(lowerCase, a3);
                                                                    }
                                                                    list3.add(HtmlDocument.a(a3, value, substring5));
                                                                    list = list3;
                                                                    break Label_1261;
                                                                }
                                                            }
                                                            else {
                                                                String gh;
                                                                if (value == null) {
                                                                    gh = null;
                                                                }
                                                                else {
                                                                    gh = StringUtil.gH(value);
                                                                }
                                                                if (this.cuq) {
                                                                    list3.add(HtmlDocument.a(gm, gh, this.cun.substring(n7, ah)));
                                                                    list = list3;
                                                                    break Label_1261;
                                                                }
                                                                if (this.cur) {
                                                                    final StringBuilder sb2 = new StringBuilder();
                                                                    M.assertTrue(n7 <= o.cux);
                                                                    String replaceAll = this.cun.substring(n7, o.cux).replaceAll("\\S+", "");
                                                                    if (replaceAll.length() == 0) {
                                                                        replaceAll = " ";
                                                                    }
                                                                    sb2.append(replaceAll);
                                                                    if (value == null) {
                                                                        M.assertTrue(o.cux < ah);
                                                                        sb2.append(d.VT().gF(this.cun.substring(o.cux, ah)));
                                                                    }
                                                                    else {
                                                                        sb2.append(d.VT().gF(name));
                                                                        M.assertTrue(o.cuy < o.cuz);
                                                                        sb2.append(this.cun.substring(o.cuy, o.cuz));
                                                                        if (o.cuB) {
                                                                            sb2.append(value.replaceAll("<", "&lt;"));
                                                                        }
                                                                        else if (HtmlParser.cus.matcher(value).find()) {
                                                                            sb2.append('\"');
                                                                            sb2.append(value.replaceAll("\"", "&quot;"));
                                                                            sb2.append('\"');
                                                                        }
                                                                        else {
                                                                            sb2.append(value);
                                                                        }
                                                                        M.assertTrue(o.cuA <= ah);
                                                                        sb2.append(this.cun.substring(o.cuA, ah));
                                                                    }
                                                                    list3.add(HtmlDocument.a(gm, gh, sb2.toString()));
                                                                    list = list3;
                                                                    break Label_1261;
                                                                }
                                                                list3.add(HtmlDocument.a(gm, gh, null));
                                                            }
                                                            list = list3;
                                                        }
                                                    }
                                                    n14 = ah;
                                                    list2 = list;
                                                    n15 = ah;
                                                }
                                                else {
                                                    n14 = n7;
                                                    list2 = list;
                                                    n15 = ag2;
                                                }
                                            }
                                            M.assertTrue(n15 > j);
                                            list = list2;
                                            j = n15;
                                            n7 = n14;
                                            continue Label_0586_Outer;
                                        }
                                        if (html$Element != null) {
                                            this.a(html$Element, n, ag, j);
                                        }
                                        this.cul = HtmlParser$State.cuG;
                                        n11 = j;
                                    }
                                }
                                final int n6 = n11;
                                continue Label_0586;
                            }
                            break;
                        }
                        final int n8 = j;
                        final int n9 = 0;
                        continue;
                    }
                }
                case 3: {
                    M.assertTrue(this.cun.regionMatches(n, "<!--", 0, 4));
                    final int index = this.cun.indexOf("-->", n + 4);
                    if (index != -1) {
                        n3 = index + 3;
                    }
                    else {
                        final int index2 = this.cun.indexOf(62, n + 4);
                        if (index2 != -1) {
                            n3 = index2 + 1;
                        }
                        else {
                            n3 = length;
                        }
                    }
                    if (this.cuq) {
                        this.cub.add(new e(this.cun.substring(n, n3)));
                    }
                    this.cul = HtmlParser$State.cuG;
                    M.assertTrue(n3 > n);
                    break;
                }
                case 4: {
                    final int af = this.af(n, length);
                    M.assertTrue(af > n || this.cul != HtmlParser$State.cuJ);
                    n3 = af;
                    break;
                }
            }
            this.aBx = (n3 >= this.cum);
        }
        this.cub = T(this.cub);
        final HtmlDocument htmlDocument = new HtmlDocument(this.cub);
        this.cub = null;
        return htmlDocument;
    }
}
