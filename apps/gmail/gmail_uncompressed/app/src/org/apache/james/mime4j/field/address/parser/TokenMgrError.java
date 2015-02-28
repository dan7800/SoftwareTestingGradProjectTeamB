package org.apache.james.mime4j.field.address.parser;

public class TokenMgrError extends Error
{
    int errorCode;
    
    public TokenMgrError() {
    }
    
    private TokenMgrError(final String s, final int n) {
        super(s);
        this.errorCode = 0;
    }
    
    public TokenMgrError(final boolean b, final int n, final int n2, final String s, final char c) {
        final StringBuilder append = new StringBuilder("Lexical error at line ").append(n).append(", column ").append(n2).append(".  Encountered: ");
        String string;
        if (b) {
            string = "<EOF> ";
        }
        else {
            string = "\"" + hZ(String.valueOf(c)) + "\" (" + (int)c + "), ";
        }
        this(append.append(string).append("after : \"").append(hZ(s)).append("\"").toString(), 0);
    }
    
    private static String hZ(final String s) {
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
        return super.getMessage();
    }
}
