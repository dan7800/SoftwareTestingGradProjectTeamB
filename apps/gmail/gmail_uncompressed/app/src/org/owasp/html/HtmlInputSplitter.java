package org.owasp.html;

final class HtmlInputSplitter extends a
{
    private final String cIr;
    private boolean cIs;
    private boolean cIt;
    private String cIu;
    private HtmlTextEscapingMode cIv;
    private R cIw;
    private int offset;
    
    public HtmlInputSplitter(final String cIr) {
        this.cIu = null;
        this.cIw = null;
        this.cIr = cIr;
    }
    
    static R a(final R r, final HtmlTokenType htmlTokenType) {
        return R.a(r.start, r.end, htmlTokenType);
    }
    
    private String aw(final int n, final int n2) {
        return HtmlLexer.iu(this.cIr.substring(n, n2));
    }
    
    @Override
    protected final R abz() {
        final int offset = this.offset;
        final int length = this.cIr.length();
        R a;
        if (offset == length) {
            a = null;
        }
        else {
            int i = offset + 1;
            final char char1 = this.cIr.charAt(offset);
            HtmlTokenType htmlTokenType = null;
            Label_0066: {
                if (this.cIs) {
                    if ('>' == char1) {
                        htmlTokenType = HtmlTokenType.cJQ;
                        this.cIs = false;
                    }
                    else if ('/' == char1) {
                        if (i != length && '>' == this.cIr.charAt(i)) {
                            htmlTokenType = HtmlTokenType.cJQ;
                            this.cIs = false;
                            ++i;
                        }
                        else {
                            htmlTokenType = HtmlTokenType.cJR;
                        }
                    }
                    else if ('=' == char1) {
                        htmlTokenType = HtmlTokenType.cJR;
                    }
                    else if ('\"' == char1 || '\'' == char1) {
                        htmlTokenType = HtmlTokenType.cJO;
                        while (i < length) {
                            if (this.cIr.charAt(i) == char1) {
                                ++i;
                                break;
                            }
                            ++i;
                        }
                    }
                    else if (!Character.isWhitespace(char1)) {
                        htmlTokenType = HtmlTokenType.cJR;
                        while (i < length) {
                            final char char2 = this.cIr.charAt(i);
                            if (((this.cIw == null || !this.cIw.aC(this.cIr, "=")) && '/' == char2 && i + 1 < length && '>' == this.cIr.charAt(i + 1)) || '>' == char2 || '=' == char2 || Character.isWhitespace(char2)) {
                                break;
                            }
                            if (('\"' == char2 || '\'' == char2) && i + 1 < length) {
                                final char char3 = this.cIr.charAt(i + 1);
                                if ((char3 >= '\0' && Character.isWhitespace(char3)) || char3 == '>' || char3 == '/') {
                                    ++i;
                                    break;
                                }
                            }
                            ++i;
                        }
                    }
                    else {
                        htmlTokenType = HtmlTokenType.cJS;
                        while (i < length && Character.isWhitespace(this.cIr.charAt(i))) {
                            ++i;
                        }
                    }
                }
                else if (char1 == '<') {
                    if (i == length) {
                        htmlTokenType = HtmlTokenType.cJR;
                    }
                    else {
                        final char char4 = this.cIr.charAt(i);
                        HtmlInputSplitter$State htmlInputSplitter$State2 = null;
                        Label_0546: {
                            HtmlInputSplitter$State htmlInputSplitter$State = null;
                            switch (char4) {
                                default: {
                                    boolean b;
                                    if (char4 >= 'A' && char4 <= 'z' && (char4 <= 'Z' || char4 >= 'a')) {
                                        b = true;
                                    }
                                    else {
                                        b = false;
                                    }
                                    if (b && !this.cIt) {
                                        htmlInputSplitter$State = HtmlInputSplitter$State.cIz;
                                        break;
                                    }
                                    if ('<' == char4) {
                                        htmlTokenType = HtmlTokenType.cJR;
                                        htmlInputSplitter$State2 = null;
                                        break Label_0546;
                                    }
                                    htmlInputSplitter$State = null;
                                    break;
                                }
                                case 47: {
                                    htmlInputSplitter$State = HtmlInputSplitter$State.cIA;
                                    break;
                                }
                                case 33: {
                                    HtmlInputSplitter$State htmlInputSplitter$State3;
                                    if (!this.cIt) {
                                        htmlInputSplitter$State3 = HtmlInputSplitter$State.cIB;
                                    }
                                    else if (HtmlTextEscapingMode.iy(this.cIu)) {
                                        htmlInputSplitter$State3 = HtmlInputSplitter$State.cIL;
                                    }
                                    else {
                                        htmlInputSplitter$State3 = null;
                                    }
                                    ++i;
                                    htmlInputSplitter$State2 = htmlInputSplitter$State3;
                                    htmlTokenType = null;
                                    break Label_0546;
                                }
                                case 63: {
                                    HtmlInputSplitter$State cii;
                                    if (!this.cIt) {
                                        cii = HtmlInputSplitter$State.cII;
                                    }
                                    else {
                                        cii = null;
                                    }
                                    ++i;
                                    htmlInputSplitter$State2 = cii;
                                    htmlTokenType = null;
                                    break Label_0546;
                                }
                                case 37: {
                                    htmlInputSplitter$State = HtmlInputSplitter$State.cIJ;
                                    break;
                                }
                            }
                            ++i;
                            htmlInputSplitter$State2 = htmlInputSplitter$State;
                            htmlTokenType = null;
                        }
                        if (htmlInputSplitter$State2 != null) {
                            final HtmlInputSplitter$State htmlInputSplitter$State4 = htmlInputSplitter$State2;
                            int j = i;
                            HtmlTokenType htmlTokenType2 = htmlTokenType;
                            HtmlInputSplitter$State htmlInputSplitter$State5 = htmlInputSplitter$State4;
                        Label_0702:
                            while (true) {
                                while (j < length) {
                                    final char char5 = this.cIr.charAt(j);
                                    switch (E.cIy[htmlInputSplitter$State5.ordinal()]) {
                                        case 1: {
                                            if (Character.isWhitespace(char5) || '>' == char5 || '/' == char5 || '<' == char5) {
                                                if (this.cIt && '/' == this.cIr.charAt(offset + 1) && this.cIv != HtmlTextEscapingMode.cJD && this.aw(offset + 2, j).equals(this.cIu)) {
                                                    this.cIt = false;
                                                    this.cIu = null;
                                                    this.cIv = null;
                                                }
                                                final HtmlTokenType cjp = HtmlTokenType.cJP;
                                                this.cIs = !this.cIt;
                                                final HtmlInputSplitter$State cih = HtmlInputSplitter$State.cIH;
                                                htmlTokenType = cjp;
                                                i = j;
                                                final HtmlInputSplitter$State htmlInputSplitter$State6 = cih;
                                                break Label_0702;
                                            }
                                            break;
                                        }
                                        case 2: {
                                            if (Character.isLetter(char5)) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIz;
                                                break;
                                            }
                                            if ('<' == char5) {
                                                final HtmlTokenType cjr = HtmlTokenType.cJR;
                                                final HtmlInputSplitter$State htmlInputSplitter$State7 = htmlInputSplitter$State5;
                                                htmlTokenType = cjr;
                                                i = j;
                                                final HtmlInputSplitter$State htmlInputSplitter$State6 = htmlInputSplitter$State7;
                                                break Label_0702;
                                            }
                                            final int n = j + 1;
                                            final HtmlInputSplitter$State htmlInputSplitter$State8 = htmlInputSplitter$State5;
                                            htmlTokenType = htmlTokenType2;
                                            i = n;
                                            final HtmlInputSplitter$State htmlInputSplitter$State6 = htmlInputSplitter$State8;
                                            break Label_0702;
                                        }
                                        case 3: {
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIC;
                                                break;
                                            }
                                            htmlInputSplitter$State5 = HtmlInputSplitter$State.cIG;
                                            break;
                                        }
                                        case 4: {
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cID;
                                                break;
                                            }
                                            htmlInputSplitter$State5 = HtmlInputSplitter$State.cIG;
                                            break;
                                        }
                                        case 5: {
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIE;
                                                break;
                                            }
                                            break;
                                        }
                                        case 6: {
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIF;
                                                break;
                                            }
                                            htmlInputSplitter$State5 = HtmlInputSplitter$State.cIE;
                                            break;
                                        }
                                        case 7: {
                                            if ('>' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIH;
                                                htmlTokenType2 = HtmlTokenType.cJL;
                                                break;
                                            }
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIF;
                                                break;
                                            }
                                            htmlInputSplitter$State5 = HtmlInputSplitter$State.cIE;
                                            break;
                                        }
                                        case 8: {
                                            if ('>' == char5) {
                                                htmlTokenType2 = HtmlTokenType.cJM;
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIH;
                                                break;
                                            }
                                            break;
                                        }
                                        case 9: {
                                            if ('>' == char5) {
                                                htmlTokenType2 = HtmlTokenType.cJK;
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIH;
                                                break;
                                            }
                                            break;
                                        }
                                        case 10: {
                                            if ('%' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIK;
                                                break;
                                            }
                                            break;
                                        }
                                        case 11: {
                                            if ('>' == char5) {
                                                htmlTokenType2 = HtmlTokenType.cJT;
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIH;
                                                break;
                                            }
                                            if ('%' != char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIJ;
                                                break;
                                            }
                                            break;
                                        }
                                        case 12: {
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIM;
                                                break;
                                            }
                                            htmlTokenType2 = HtmlTokenType.cJR;
                                            htmlInputSplitter$State5 = HtmlInputSplitter$State.cIH;
                                            break;
                                        }
                                        case 13: {
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIP;
                                                break;
                                            }
                                            htmlTokenType2 = HtmlTokenType.cJR;
                                            htmlInputSplitter$State5 = HtmlInputSplitter$State.cIH;
                                            break;
                                        }
                                        case 14: {
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIO;
                                                break;
                                            }
                                            break;
                                        }
                                        case 15: {
                                            if ('-' == char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIP;
                                                break;
                                            }
                                            htmlInputSplitter$State5 = HtmlInputSplitter$State.cIN;
                                            break;
                                        }
                                        case 16: {
                                            if ('>' == char5) {
                                                htmlTokenType2 = HtmlTokenType.cJR;
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIH;
                                                break;
                                            }
                                            if ('-' != char5) {
                                                htmlInputSplitter$State5 = HtmlInputSplitter$State.cIN;
                                                break;
                                            }
                                            break;
                                        }
                                        case 17: {
                                            throw new AssertionError((Object)"Unexpectedly DONE while lexing HTML token stream");
                                        }
                                    }
                                    ++j;
                                    if (HtmlInputSplitter$State.cIH == htmlInputSplitter$State5) {
                                        break;
                                    }
                                    continue;
                                    if (i != length) {
                                        break Label_0066;
                                    }
                                    HtmlInputSplitter$State htmlInputSplitter$State6 = null;
                                    switch (E.cIy[htmlInputSplitter$State6.ordinal()]) {
                                        case 1: {
                                            htmlTokenType = HtmlTokenType.cJP;
                                            break Label_0066;
                                        }
                                        case 8:
                                        case 10:
                                        case 11: {
                                            htmlTokenType = HtmlTokenType.cJT;
                                            break Label_0066;
                                        }
                                        case 5:
                                        case 6:
                                        case 7: {
                                            htmlTokenType = HtmlTokenType.cJL;
                                            break Label_0066;
                                        }
                                        case 9: {
                                            htmlTokenType = HtmlTokenType.cJK;
                                        }
                                        case 17: {
                                            break Label_0066;
                                        }
                                        default: {
                                            htmlTokenType = HtmlTokenType.cJR;
                                            break Label_0066;
                                        }
                                    }
                                }
                                final HtmlInputSplitter$State htmlInputSplitter$State9 = htmlInputSplitter$State5;
                                htmlTokenType = htmlTokenType2;
                                i = j;
                                final HtmlInputSplitter$State htmlInputSplitter$State6 = htmlInputSplitter$State9;
                                continue Label_0702;
                            }
                        }
                    }
                }
                else {
                    htmlTokenType = null;
                }
            }
            if (htmlTokenType == null) {
                while (i < length && '<' != this.cIr.charAt(i)) {
                    ++i;
                }
                htmlTokenType = HtmlTokenType.cJR;
            }
            this.offset = i;
            a = R.a(offset, i, htmlTokenType);
            if (htmlTokenType != HtmlTokenType.cJS) {
                this.cIw = a;
            }
        }
        if (a == null) {
            return null;
        }
        R a2 = null;
        if (this.cIt) {
            if (a.cJH == HtmlTokenType.cJT) {
                return a;
            }
            HtmlTokenType htmlTokenType3;
            if (this.cIv == HtmlTextEscapingMode.cJC) {
                htmlTokenType3 = HtmlTokenType.cJR;
            }
            else {
                htmlTokenType3 = HtmlTokenType.cJN;
            }
            a2 = a(a, htmlTokenType3);
        }
        else {
            switch (E.cIx[a.cJH.ordinal()]) {
                case 1: {
                    final String aw = this.aw(1 + a.start, a.end);
                    if (HtmlTextEscapingMode.iz(aw)) {
                        this.cIu = aw;
                        this.cIv = HtmlTextEscapingMode.ix(aw);
                        a2 = a;
                        break;
                    }
                    return a;
                }
                case 2: {
                    final String cIu = this.cIu;
                    boolean cIt = false;
                    if (cIu != null) {
                        cIt = true;
                    }
                    this.cIt = cIt;
                    return a;
                }
            }
        }
        return a2;
        a2 = a;
        return a2;
    }
}
