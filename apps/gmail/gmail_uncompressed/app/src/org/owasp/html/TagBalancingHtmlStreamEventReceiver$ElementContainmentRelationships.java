package org.owasp.html;

import com.google.common.collect.*;

final class TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships
{
    private static final aa cKx;
    private y<String, aa> cKw;
    
    static {
        cKx = new aa("#text", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKX), 0, null, 0);
    }
    
    private TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships() {
        this.cKw = ImmutableMap.Zv();
        this.a("a", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF.ordinal());
        this.a("abbr", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("acronym", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("address", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKP));
        this.a("applet", a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKS), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKy, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKz, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKA));
        this.a("area", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKK.ordinal(), 0);
        this.a("audio", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 0);
        this.a("b", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("base", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKI.ordinal(), 0);
        this.a("basefont", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 0);
        this.a("bdi", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("bdo", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("big", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("blink", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("blockquote", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("body", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKJ.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("br", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 0);
        this.a("button", a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKz.ordinal());
        this.a("canvas", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("caption", 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKy, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKz, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKA));
        this.a("center", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("cite", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("code", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("col", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKW), 0);
        this.a("colgroup", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKW.ordinal());
        final aa a = this.a("dd", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKO.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("del", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKG), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("dfn", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("dir", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKN.ordinal());
        this.a("div", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("dl", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKO.ordinal(), a);
        this.a("dt", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKO.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("em", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("fieldset", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKM));
        this.a("font", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("form", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKL), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKU, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKV));
        this.a("h1", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("h2", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("h3", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("h4", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("h5", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("h6", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("head", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKJ.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKI.ordinal());
        this.a("hr", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 0);
        this.a("html", 0, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKJ.ordinal(), TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.ALL);
        this.a("i", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("iframe", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("img", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 0);
        this.a("input", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 0);
        this.a("ins", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("isindex", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal(), 0);
        this.a("kbd", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("label", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("legend", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKM.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        final aa a2 = this.a("li", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKN.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("link", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKI), 0);
        this.a("listing", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("map", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKK));
        this.a("meta", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKI.ordinal(), 0);
        this.a("nobr", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("noframes", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKJ), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKJ));
        this.a("noscript", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE));
        this.a("object", a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKI), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKS), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKy, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKz, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKA));
        this.a("ol", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKN.ordinal(), a2, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKA.ordinal());
        this.a("optgroup", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKQ.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKQ.ordinal());
        this.a("option", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKQ, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKR), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKX.ordinal());
        this.a("p", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKP), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKT));
        this.a("param", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKS.ordinal(), 0);
        this.a("pre", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("q", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("s", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("samp", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("script", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKG, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKI, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKJ, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKK, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKL, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKM, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKN, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKO, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKP, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKQ, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKR, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKS, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKT, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKU, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKV, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKW), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKX.ordinal());
        this.a("select", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKQ.ordinal());
        this.a("small", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("span", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("strike", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("strong", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("style", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKI), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKX.ordinal());
        this.a("sub", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("sup", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("table", a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKT), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKL), TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.ALL);
        this.a("tbody", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKU.ordinal());
        final aa a3 = this.a("td", 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKV.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKy, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKz, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKA));
        this.a("textarea", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKX.ordinal());
        this.a("tfoot", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKL, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKU, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKV));
        this.a("th", 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKV.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKy, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKz, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKA));
        this.a("thead", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH.ordinal(), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKL, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKU, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKV));
        this.a("title", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKI.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKX.ordinal());
        this.a("tr", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKH, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKU), a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKL, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKV), a3);
        this.a("tt", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("u", true, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("ul", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKN.ordinal(), a2, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.cKA.ordinal());
        this.a("var", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
        this.a("video", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 0);
        this.a("wbr", false, a(TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE, TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKF), 0);
        this.a("xmp", false, 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKD.ordinal(), 1 << TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.cKE.ordinal());
    }
    
    private static int a(final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope, final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope2, final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope3) {
        return 1 << tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope.ordinal() | 1 << tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope2.ordinal() | 1 << tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$CloseTagScope3.ordinal();
    }
    
    private static int a(final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup, final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup2) {
        return 1 << tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.ordinal() | 1 << tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup2.ordinal();
    }
    
    private static int a(final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup, final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup2, final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup3) {
        return 1 << tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup.ordinal() | 1 << tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup2.ordinal() | 1 << tagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup3.ordinal();
    }
    
    private static int a(final TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships$ElementGroup... array) {
        int i = 0;
        final int length = array.length;
        int n = 0;
        while (i < length) {
            n |= 1 << array[i].ordinal();
            ++i;
        }
        return n;
    }
    
    private aa a(final String s, final int n, final int n2, final int n3) {
        return this.a(s, false, n, n2, null, n3);
    }
    
    private aa a(final String s, final boolean b, final int n, final int n2) {
        return this.a(s, b, n, n2, null);
    }
    
    private aa a(final String s, final boolean b, final int n, final int n2, final aa aa) {
        return this.a(s, b, n, n2, aa, 0);
    }
    
    private aa a(final String s, final boolean b, final int n, final int n2, final aa aa, final int n3) {
        final aa aa2 = new aa(s, b, n, n2, aa, n3);
        this.cKw.p(s, aa2);
        return aa2;
    }
}