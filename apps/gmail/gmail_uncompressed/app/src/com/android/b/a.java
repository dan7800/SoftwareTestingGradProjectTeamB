package com.android.b;

import android.widget.*;
import java.util.regex.*;
import android.text.*;
import android.text.util.*;

@Deprecated
public final class a implements AutoCompleteTextView$Validator
{
    private static final Pattern GY;
    private String GZ;
    private boolean Ha;
    
    static {
        GY = Pattern.compile("((?!\\s)[\\.\\w!#$%&'*+\\-/=?^`{|}~\u0080-\ufffe])+@(([a-zA-Z0-9 -\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9 -\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61})?[a-zA-Z0-9 -\ud7ff\uf900-\ufdcf\ufdf0-\uffef]\\.)+[a-zA-Z0-9 -\ud7ff\uf900-\ufdcf\ufdf0-\uffef][a-zA-Z0-9 -\ud7ff\uf900-\ufdcf\ufdf0-\uffef\\-]{0,61}[a-zA-Z0-9 -\ud7ff\uf900-\ufdcf\ufdf0-\uffef]");
    }
    
    public a(final String gz) {
        this.Ha = false;
        this.GZ = gz;
    }
    
    private static String n(final String s) {
        final StringBuilder sb = new StringBuilder();
        for (int length = s.length(), i = 0; i < length; ++i) {
            final char char1 = s.charAt(i);
            if (char1 > ' ' && char1 <= '~' && char1 != '(' && char1 != ')' && char1 != '<' && char1 != '>' && char1 != '@' && char1 != ',' && char1 != ';' && char1 != ':' && char1 != '\\' && char1 != '\"' && char1 != '[' && char1 != ']') {
                sb.append(char1);
            }
        }
        return sb.toString();
    }
    
    public final CharSequence fixText(final CharSequence charSequence) {
        if (TextUtils.getTrimmedLength(charSequence) == 0) {
            return "";
        }
        final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize(charSequence);
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < tokenize.length; ++i) {
            final String address = tokenize[i].getAddress();
            if (!this.Ha || this.isValid(address)) {
                final int index = address.indexOf(64);
                Label_0140: {
                    Rfc822Token rfc822Token2 = null;
                    StringBuilder sb3 = null;
                    String s = null;
                    Label_0125: {
                        Rfc822Token rfc822Token;
                        StringBuilder sb2;
                        if (index < 0) {
                            if (this.GZ == null) {
                                break Label_0140;
                            }
                            rfc822Token = tokenize[i];
                            sb2 = new StringBuilder().append(n(address)).append("@");
                        }
                        else {
                            final String n = n(address.substring(0, index));
                            if (TextUtils.isEmpty((CharSequence)n)) {
                                continue;
                            }
                            final String n2 = n(address.substring(index + 1));
                            boolean b;
                            if (n2.length() == 0) {
                                b = true;
                            }
                            else {
                                b = false;
                            }
                            if (b && this.GZ == null) {
                                break Label_0140;
                            }
                            rfc822Token = tokenize[i];
                            sb2 = new StringBuilder().append(n).append("@");
                            if (!b) {
                                rfc822Token2 = rfc822Token;
                                sb3 = sb2;
                                s = n2;
                                break Label_0125;
                            }
                        }
                        final String gz = this.GZ;
                        rfc822Token2 = rfc822Token;
                        sb3 = sb2;
                        s = gz;
                    }
                    rfc822Token2.setAddress(sb3.append(s).toString());
                }
                sb.append(tokenize[i].toString());
                if (i + 1 < tokenize.length) {
                    sb.append(", ");
                }
            }
        }
        return sb;
    }
    
    public final boolean isValid(final CharSequence charSequence) {
        final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize(charSequence);
        return tokenize.length == 1 && a.GY.matcher(tokenize[0].getAddress()).matches();
    }
}
