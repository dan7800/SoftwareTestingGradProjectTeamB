package com.android.mail.b;

public final class i
{
    public final h akJ;
    public final k akK;
    
    public i(final h akJ, final k akK) {
        this.akJ = akJ;
        this.akK = akK;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            final i i = (i)o;
            Label_0059: {
                if (this.akJ != null) {
                    if (this.akJ.equals(i.akJ)) {
                        break Label_0059;
                    }
                }
                else if (i.akJ == null) {
                    break Label_0059;
                }
                return false;
            }
            if (this.akK != null) {
                if (this.akK.equals(i.akK)) {
                    return true;
                }
            }
            else if (i.akK == null) {
                return true;
            }
            return false;
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        int hashCode;
        if (this.akJ != null) {
            hashCode = this.akJ.hashCode();
        }
        else {
            hashCode = 0;
        }
        final int n = hashCode * 31;
        final k akK = this.akK;
        int hashCode2 = 0;
        if (akK != null) {
            hashCode2 = this.akK.hashCode();
        }
        return n + hashCode2;
    }
    
    @Override
    public final String toString() {
        return this.akJ.toString();
    }
}
