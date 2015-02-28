package org.apache.james.mime4j.field.contenttype.parser;

public class ParseException extends Exception
{
    public e currentToken;
    protected String eol;
    public int[][] expectedTokenSequences;
    protected boolean specialConstructor;
    public String[] tokenImage;
    
    public ParseException() {
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = false;
    }
    
    public ParseException(final String s) {
        super(s);
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = false;
    }
    
    public ParseException(final e currentToken, final int[][] expectedTokenSequences, final String[] tokenImage) {
        super("");
        this.eol = System.getProperty("line.separator", "\n");
        this.specialConstructor = true;
        this.currentToken = currentToken;
        this.expectedTokenSequences = expectedTokenSequences;
        this.tokenImage = tokenImage;
    }
    
    private static String hY(final String s) {
        final StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < s.length()) {
            Label_0187: {
                switch (s.charAt(i)) {
                    default: {
                        final char char1 = s.charAt(i);
                        if (char1 < ' ' || char1 > '~') {
                            final String string = "0000" + Integer.toString(char1, 16);
                            sb.append("\\u" + string.substring(-4 + string.length(), string.length()));
                            break Label_0187;
                        }
                        sb.append(char1);
                        break Label_0187;
                    }
                    case '\\': {
                        sb.append("\\\\");
                        break Label_0187;
                    }
                    case '\'': {
                        sb.append("\\'");
                        break Label_0187;
                    }
                    case '\"': {
                        sb.append("\\\"");
                        break Label_0187;
                    }
                    case '\r': {
                        sb.append("\\r");
                        break Label_0187;
                    }
                    case '\f': {
                        sb.append("\\f");
                        break Label_0187;
                    }
                    case '\n': {
                        sb.append("\\n");
                        break Label_0187;
                    }
                    case '\t': {
                        sb.append("\\t");
                        break Label_0187;
                    }
                    case '\b': {
                        sb.append("\\b");
                    }
                    case '\0': {
                        ++i;
                        continue;
                    }
                }
            }
        }
        return sb.toString();
    }
    
    @Override
    public String getMessage() {
        if (!this.specialConstructor) {
            return super.getMessage();
        }
        final StringBuffer sb = new StringBuffer();
        int i = 0;
        int length = 0;
        while (i < this.expectedTokenSequences.length) {
            if (length < this.expectedTokenSequences[i].length) {
                length = this.expectedTokenSequences[i].length;
            }
            for (int j = 0; j < this.expectedTokenSequences[i].length; ++j) {
                sb.append(this.tokenImage[this.expectedTokenSequences[i][j]]).append(" ");
            }
            if (this.expectedTokenSequences[i][-1 + this.expectedTokenSequences[i].length] != 0) {
                sb.append("...");
            }
            sb.append(this.eol).append("    ");
            ++i;
        }
        e e = this.currentToken.cGl;
        String s = "Encountered \"";
        String string;
        for (int k = 0; k < length; ++k, s = string) {
            if (k != 0) {
                s += " ";
            }
            if (e.cFV == 0) {
                s += this.tokenImage[0];
                break;
            }
            string = s + hY(e.cGa);
            e = e.cGl;
        }
        final String string2 = s + "\" at line " + this.currentToken.cGl.cFW + ", column " + this.currentToken.cGl.cFX + "." + this.eol;
        String s2;
        if (this.expectedTokenSequences.length == 1) {
            s2 = string2 + "Was expecting:" + this.eol + "    ";
        }
        else {
            s2 = string2 + "Was expecting one of:" + this.eol + "    ";
        }
        return s2 + sb.toString();
    }
}
