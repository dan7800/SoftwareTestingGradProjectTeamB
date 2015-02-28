package org.apache.james.mime4j;

import java.util.*;

public class a
{
    private static f cDh;
    private String aWr;
    private String cDi;
    private String cDj;
    private Map<String, String> cDk;
    private boolean cDl;
    private boolean cDm;
    private String mimeType;
    
    static {
        a.cDh = new f();
    }
    
    public a() {
        this(null);
    }
    
    public a(final a a) {
        this.mimeType = "text/plain";
        this.cDi = null;
        this.cDj = "us-ascii";
        this.aWr = "7bit";
        this.cDk = new HashMap<String, String>();
        this.cDl = false;
        this.cDm = false;
        if (a != null && a.mimeType.equals("multipart/digest".toLowerCase())) {
            this.mimeType = "message/rfc822";
            return;
        }
        this.mimeType = "text/plain";
    }
    
    private static Map<String, String> hP(String s) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        String substring;
        if (s.indexOf(";") == -1) {
            substring = null;
        }
        else {
            final String substring2 = s.substring(0, s.indexOf(";"));
            substring = s.substring(1 + substring2.length());
            s = substring2;
        }
        hashMap.put("", s);
        if (substring != null) {
            final char[] charArray = substring.toCharArray();
            final StringBuffer sb = new StringBuffer();
            final StringBuffer sb2 = new StringBuffer();
            int n = 0;
            StringBuffer sb3 = sb2;
            StringBuffer sb4 = sb;
            int n2 = 0;
            for (int i = 0; i < charArray.length; ++i) {
                final char c = charArray[i];
                Label_0392: {
                    switch (n) {
                        case 99: {
                            if (c == ';') {
                                n = 0;
                                break;
                            }
                            break;
                        }
                        case 0: {
                            if (c == '=') {
                                final f cDh = a.cDh;
                                f.error("Expected header param name, got '='");
                                n = 99;
                                break;
                            }
                            sb4 = new StringBuffer();
                            sb3 = new StringBuffer();
                            n = 1;
                        }
                        case 1: {
                            if (c != '=') {
                                sb4.append(c);
                                break;
                            }
                            if (sb4.length() == 0) {
                                n = 99;
                                break;
                            }
                            n = 2;
                            break;
                        }
                        case 2: {
                            int n3 = 0;
                            switch (c) {
                                default: {
                                    n3 = 1;
                                    n = 3;
                                    break;
                                }
                                case '\t':
                                case ' ': {
                                    n3 = 0;
                                    break;
                                }
                                case '\"': {
                                    n = 4;
                                    n3 = 0;
                                    break;
                                }
                            }
                            if (n3 != 0) {
                                break Label_0392;
                            }
                            break;
                        }
                        case 3: {
                            int n4 = 0;
                            switch (c) {
                                default: {
                                    sb3.append(c);
                                    n4 = 0;
                                    break;
                                }
                                case '\t':
                                case ' ':
                                case ';': {
                                    hashMap.put(sb4.toString().trim().toLowerCase(), sb3.toString().trim());
                                    n4 = 1;
                                    n = 5;
                                    break;
                                }
                            }
                            if (n4 != 0) {
                                break Label_0392;
                            }
                            break;
                        }
                        case 5: {
                            switch (c) {
                                case ';': {
                                    n = 0;
                                }
                                case '\t':
                                case ' ': {
                                    continue;
                                }
                                default: {
                                    n = 99;
                                    continue;
                                }
                            }
                            break;
                        }
                        case 4: {
                            switch (c) {
                                default: {
                                    if (n2 != 0) {
                                        sb3.append('\\');
                                    }
                                    sb3.append(c);
                                    n2 = 0;
                                    continue;
                                }
                                case '\"': {
                                    if (n2 == 0) {
                                        hashMap.put(sb4.toString().trim().toLowerCase(), sb3.toString());
                                        n = 5;
                                        continue;
                                    }
                                    sb3.append(c);
                                    n2 = 0;
                                    continue;
                                }
                                case '\\': {
                                    if (n2 != 0) {
                                        sb3.append('\\');
                                    }
                                    if (n2 == 0) {
                                        n2 = 1;
                                        continue;
                                    }
                                    n2 = 0;
                                    continue;
                                }
                            }
                            break;
                        }
                    }
                }
            }
            if (n == 3) {
                hashMap.put(sb4.toString().trim().toLowerCase(), sb3.toString().trim());
            }
        }
        return hashMap;
    }
    
    public final String Cq() {
        return this.aWr;
    }
    
    public final void aA(final String s, final String s2) {
        final String lowerCase = s.trim().toLowerCase();
        if (lowerCase.equals("content-transfer-encoding") && !this.cDm) {
            this.cDm = true;
            final String lowerCase2 = s2.trim().toLowerCase();
            if (lowerCase2.length() > 0) {
                this.aWr = lowerCase2;
            }
        }
        else if (lowerCase.equals("content-type") && !this.cDl) {
            this.cDl = true;
            final String trim = s2.trim();
            final StringBuffer sb = new StringBuffer();
            for (int i = 0; i < trim.length(); ++i) {
                final char char1 = trim.charAt(i);
                if (char1 != '\r' && char1 != '\n') {
                    sb.append(char1);
                }
            }
            final Map<String, String> hp = hP(sb.toString());
            String s3 = hp.get("");
            while (true) {
                Label_0445: {
                    if (s3 == null) {
                        break Label_0445;
                    }
                    s3 = s3.toLowerCase().trim();
                    final int index = s3.indexOf(47);
                    boolean b = false;
                    if (index != -1) {
                        final String trim2 = s3.substring(0, index).trim();
                        final String trim3 = s3.substring(index + 1).trim();
                        final int length = trim2.length();
                        b = false;
                        if (length > 0) {
                            final int length2 = trim3.length();
                            b = false;
                            if (length2 > 0) {
                                s3 = trim2 + "/" + trim3;
                                b = true;
                            }
                        }
                    }
                    if (b) {
                        break Label_0445;
                    }
                    final String mimeType = null;
                    final String cDi = hp.get("boundary");
                    if (mimeType != null && ((mimeType.startsWith("multipart/") && cDi != null) || !mimeType.startsWith("multipart/"))) {
                        this.mimeType = mimeType;
                    }
                    if (this.aaw()) {
                        this.cDi = cDi;
                    }
                    final String s4 = hp.get("charset");
                    if (s4 != null) {
                        final String trim4 = s4.trim();
                        if (trim4.length() > 0) {
                            this.cDj = trim4.toLowerCase();
                        }
                    }
                    this.cDk.putAll(hp);
                    this.cDk.remove("");
                    this.cDk.remove("boundary");
                    this.cDk.remove("charset");
                    return;
                }
                final String mimeType = s3;
                continue;
            }
        }
    }
    
    public final boolean aav() {
        return this.mimeType.equals("message/rfc822");
    }
    
    public final boolean aaw() {
        return this.mimeType.startsWith("multipart/");
    }
    
    public final String aax() {
        return this.cDi;
    }
    
    public final boolean aay() {
        return "base64".equals(this.aWr);
    }
    
    public final boolean aaz() {
        return "quoted-printable".equals(this.aWr);
    }
    
    @Override
    public String toString() {
        return this.mimeType;
    }
}
