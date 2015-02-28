package com.google.common.collect;

final class RegularImmutableSet<E> extends ImmutableSet$ArrayImmutableSet<E>
{
    final transient Object[] cCl;
    private final transient int hashCode;
    private final transient int mask;
    
    RegularImmutableSet(final Object[] array, final int hashCode, final Object[] cCl, final int mask) {
        super(array);
        this.cCl = cCl;
        this.mask = mask;
        this.hashCode = hashCode;
    }
    
    @Override
    final boolean Zc() {
        return true;
    }
    
    @Override
    public final boolean contains(final Object o) {
        if (o == null) {
            return false;
        }
        int fj = u.fj(o.hashCode());
        while (true) {
            final Object o2 = this.cCl[fj & this.mask];
            if (o2 == null) {
                return false;
            }
            if (o2.equals(o)) {
                return true;
            }
            ++fj;
        }
    }
    
    @Override
    public final int hashCode() {
        return this.hashCode;
    }
}
