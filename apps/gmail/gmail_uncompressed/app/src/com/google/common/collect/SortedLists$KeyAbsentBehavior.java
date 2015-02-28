package com.google.common.collect;

public enum SortedLists$KeyAbsentBehavior
{
    cCt("NEXT_LOWER") {
        @Override
        final <E> int ft(final int n) {
            return n - 1;
        }
    }, 
    cCu("NEXT_HIGHER") {
        public final <E> int ft(final int n) {
            return n;
        }
    }, 
    cCv("INVERTED_INSERTION_INDEX") {
        public final <E> int ft(final int n) {
            return ~n;
        }
    };
    
    abstract <E> int ft(final int p0);
}
