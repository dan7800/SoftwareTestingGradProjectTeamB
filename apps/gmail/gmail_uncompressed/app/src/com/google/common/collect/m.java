package com.google.common.collect;

import com.google.common.base.*;
import java.util.*;

final class m implements b<Object, Object>
{
    final /* synthetic */ Collection cAn;
    
    m(final Collection cAn) {
        this.cAn = cAn;
    }
    
    @Override
    public final Object apply(Object o) {
        if (o == this.cAn) {
            o = "(this Collection)";
        }
        return o;
    }
}
