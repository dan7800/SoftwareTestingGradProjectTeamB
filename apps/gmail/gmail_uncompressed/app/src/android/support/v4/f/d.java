package android.support.v4.f;

public final class d
{
    public static void a(final Object o, final StringBuilder sb) {
        if (o == null) {
            sb.append("null");
            return;
        }
        String s = o.getClass().getSimpleName();
        if (s == null || s.length() <= 0) {
            s = o.getClass().getName();
            final int lastIndex = s.lastIndexOf(46);
            if (lastIndex > 0) {
                s = s.substring(lastIndex + 1);
            }
        }
        sb.append(s);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(o)));
    }
}
