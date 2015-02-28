package com.google.android.gm.provider;

import java.util.*;

public final class bj
{
    public final long blH;
    public final long id;
    
    public bj(final long id, final long blH) {
        this.id = id;
        this.blH = blH;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (o == null || this.getClass() != o.getClass()) {
                return false;
            }
            final bj bj = (bj)o;
            if (this.id != bj.id) {
                return false;
            }
            if (this.blH != bj.blH) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.id, this.blH });
    }
    
    @Override
    public final String toString() {
        return "[ConversationInfo id: " + this.id + ", highest: " + this.blH + "]";
    }
}
