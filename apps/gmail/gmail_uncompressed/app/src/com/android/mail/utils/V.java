package com.android.mail.utils;

import org.owasp.html.*;
import java.util.*;

final class v implements p
{
    @Override
    public final String apply(final String s, final List<String> list) {
        final int index = list.indexOf("class");
        int startsWith;
        if (index >= 0) {
            final String s2 = list.remove(index + 1);
            list.remove(index);
            if ("gmail_quote".equals(s2) || "yahoo_quoted".equals(s2)) {
                startsWith = 1;
            }
            else {
                startsWith = 0;
            }
        }
        else {
            startsWith = 0;
        }
        final int index2 = list.indexOf("id");
        if (index2 >= 0) {
            final String s3 = list.remove(index2 + 1);
            list.remove(index2);
            startsWith = (s3.startsWith("AOLMsgPart") ? 1 : 0);
        }
        if (startsWith != 0) {
            list.add("class");
            list.add("elided-text");
        }
        return "div";
    }
}
