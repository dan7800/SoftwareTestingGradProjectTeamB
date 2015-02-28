package com.google.android.mail.common.html.parser;

final class p
{
    private String cuL;
    private final String cun;
    private int cux;
    private int cuy;
    
    public p(final String cun) {
        this.cux = -1;
        this.cuy = -1;
        this.cun = cun;
    }
    
    public final int ag(final int cux, final int n) {
        int i;
        for (i = cux; i < n; ++i) {
            final char char1 = this.cun.charAt(i);
            if (char1 == '>' || char1 == '/' || Character.isWhitespace(char1)) {
                break;
            }
        }
        if (i > cux) {
            this.cux = cux;
            this.cuy = i;
        }
        return i;
    }
    
    public final String getTagName() {
        if (this.cuL == null && this.cux != -1 && this.cuy != -1) {
            this.cuL = this.cun.substring(this.cux, this.cuy);
        }
        return this.cuL;
    }
}
