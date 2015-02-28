package com.google.android.mail.common.base;

public final class d
{
    private static final a coA;
    private static final a coB;
    private static final a coC;
    private static final a coD;
    private static final a coE;
    private static final char[] coF;
    private static final a coq;
    private static final a cor;
    private static final a cos;
    private static final a cot;
    private static final A cou;
    private static final A cov;
    private static final A cow;
    private static final A cox;
    private static final A coy;
    private static final A coz;
    
    static {
        coq = new e();
        cor = VU().a('\"', "&quot;").a('\'', "&apos;").VS();
        cos = VU().VS();
        cot = new b().a('\"', "&quot;").a('\'', "&#39;").a('&', "&amp;").a('<', "&lt;").a('>', "&gt;").VS();
        cou = new D("-_.*", true);
        cov = new D("-_.*", false);
        cow = new D("-_.!~*'()@:$&,;=", false);
        cox = new D("-_.!~*'()@:$,;/?:", false);
        coy = new D("-_.!~*'()@:$,;/?:", true);
        coz = new D("!()*-._~,/:", true);
        coA = new h(new b().a('\b', "\\b").a('\f', "\\f").a('\n', "\\n").a('\r', "\\r").a('\t', "\\t").a('\"', "\\\"").a('\\', "\\\\").VR());
        coB = new h(new b().a('\b', "\\b").a('\f', "\\f").a('\n', "\\n").a('\r', "\\r").a('\t', "\\t").a('\'', "\\'").a('\"', "\\\"").a('\\', "\\\\").VR());
        coC = new f();
        coD = new b().a('\n', "\\n").a('\r', "\\r").a('\t', "\\t").a('\\', "\\\\").a('\"', "\\\"").a('\'', "\\'").VS();
        coE = new i(new b().a('\'', "\\x27").a('\"', "\\x22").a('<', "\\x3c").a('=', "\\x3d").a('>', "\\x3e").a('&', "\\x26").a('\b', "\\b").a('\t', "\\t").a('\n', "\\n").a('\f', "\\f").a('\r', "\\r").a('\\', "\\\\").VR());
        coF = "0123456789abcdef".toCharArray();
    }
    
    public static a VT() {
        return d.cot;
    }
    
    private static b VU() {
        return new b().a('&', "&amp;").a('<', "&lt;").a('>', "&gt;").a(new char[] { '\0', '\u0001', '\u0002', '\u0003', '\u0004', '\u0005', '\u0006', '\u0007', '\b', '\u000b', '\f', '\u000e', '\u000f', '\u0010', '\u0011', '\u0012', '\u0013', '\u0014', '\u0015', '\u0016', '\u0017', '\u0018', '\u0019', '\u001a', '\u001b', '\u001c', '\u001d', '\u001e', '\u001f' }, "");
    }
}
