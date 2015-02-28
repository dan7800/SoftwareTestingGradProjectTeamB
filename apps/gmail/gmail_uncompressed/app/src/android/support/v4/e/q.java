package android.support.v4.e;

import java.util.*;

public final class q
{
    public static final Locale ROOT;
    private static String gC;
    private static String gD;
    
    static {
        ROOT = new Locale("", "");
        q.gC = "Arab";
        q.gD = "Hebr";
    }
    
    public static int getLayoutDirectionFromLocale(final Locale locale) {
        int n = 1;
        if (locale != null && !locale.equals(q.ROOT)) {
            final String i = d.i(d.j(locale.toString()));
            if (i == null) {
                switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
                    default: {
                        n = 0;
                        break;
                    }
                    case 1:
                    case 2: {
                        break;
                    }
                }
            }
            else if (!i.equalsIgnoreCase(q.gC) && !i.equalsIgnoreCase(q.gD)) {
                return 0;
            }
            return n;
        }
        return 0;
    }
}
