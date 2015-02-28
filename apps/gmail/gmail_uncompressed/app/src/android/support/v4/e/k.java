package android.support.v4.e;

final class k implements m
{
    public static final k gw;
    public static final k gx;
    private final boolean gv;
    
    static {
        gw = new k(true);
        gx = new k(false);
    }
    
    private k(final boolean gv) {
        this.gv = gv;
    }
    
    @Override
    public final int a(final CharSequence charSequence, final int n, final int n2) {
        boolean b = true;
        final int n3 = n2 + 0;
        int i = 0;
        boolean b2 = false;
        while (i < n3) {
            switch (j.p(Character.getDirectionality(charSequence.charAt(i)))) {
                case 0: {
                    if (this.gv) {
                        b = false;
                        return b ? 1 : 0;
                    }
                    b2 = b;
                    break;
                }
                case 1: {
                    if (this.gv) {
                        b2 = b;
                        break;
                    }
                    return b ? 1 : 0;
                }
            }
            ++i;
        }
        if (!b2) {
            return 2;
        }
        if (!this.gv) {
            return 0;
        }
        return b ? 1 : 0;
    }
}
