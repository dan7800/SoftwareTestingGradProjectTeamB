package org.owasp.html;

final class aa
{
    final String cHM;
    final boolean cHN;
    final boolean cKq;
    final int cKr;
    final int cKs;
    final aa cKt;
    final int cKu;
    final int cKv;
    
    aa(final String chm, final boolean cKq, final int cKr, final int cKs, final aa cKt, final int cKv) {
        this.cHM = chm;
        this.cKq = cKq;
        this.cKr = cKr;
        this.cKs = cKs;
        this.cHN = (cKs == 0 && HtmlTextEscapingMode.iA(chm));
        this.cKt = cKt;
        this.cKu = (TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.ALL & ~cKv);
        this.cKv = cKv;
    }
    
    @Override
    public final String toString() {
        return "<" + this.cHM + ">";
    }
}
