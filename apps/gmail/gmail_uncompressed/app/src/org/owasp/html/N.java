package org.owasp.html;

import com.google.common.collect.*;
import java.util.*;

final class n
{
    final String cHM;
    final boolean cHN;
    final p cHO;
    final ImmutableMap<String, b> cHP;
    final boolean cHQ;
    
    static {
        vb = !n.class.desiredAssertionStatus();
    }
    
    n(final String chm, final p cho, final Map<? extends String, ? extends b> map, final boolean chq) {
        this.cHM = chm;
        this.cHN = HtmlTextEscapingMode.iA(chm);
        this.cHO = cho;
        this.cHP = ImmutableMap.q(map);
        this.cHQ = chq;
    }
}
