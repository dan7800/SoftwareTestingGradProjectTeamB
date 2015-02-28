package android.support.v4.e;

abstract class n implements i
{
    private final m gz;
    
    public n(final m gz) {
        this.gz = gz;
    }
    
    @Override
    public final boolean a(final CharSequence charSequence, final int n) {
        if (charSequence == null || n < 0 || charSequence.length() - n < 0) {
            throw new IllegalArgumentException();
        }
        boolean ak;
        if (this.gz == null) {
            ak = this.aK();
        }
        else {
            final int a = this.gz.a(charSequence, 0, n);
            ak = false;
            switch (a) {
                case 1: {
                    break;
                }
                default: {
                    return this.aK();
                }
                case 0: {
                    return true;
                }
            }
        }
        return ak;
    }
    
    protected abstract boolean aK();
}
