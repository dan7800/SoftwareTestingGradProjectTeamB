package android.support.v4.e;

final class l implements m
{
    public static final l gy;
    
    static {
        gy = new l();
    }
    
    @Override
    public final int a(final CharSequence charSequence, final int n, final int n2) {
        int n3;
        int n4;
        int o;
        for (n3 = 0, n4 = n2 + 0, o = 2; n3 < n4 && o == 2; o = j.o(Character.getDirectionality(charSequence.charAt(n3))), ++n3) {}
        return o;
    }
}
