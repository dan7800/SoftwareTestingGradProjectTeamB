package com.android.emailcommon;

import java.io.*;

public class VendorPolicyLoader$Provider implements Serializable
{
    private static final long serialVersionUID = 8511656164616538989L;
    public String altIncomingUriTemplate;
    public String altIncomingUsernameTemplate;
    public String altOutgoingUriTemplate;
    public String altOutgoingUsernameTemplate;
    public String domain;
    public String id;
    public String incomingUri;
    public String incomingUriTemplate;
    public String incomingUsername;
    public String incomingUsernameTemplate;
    public String label;
    public String note;
    public String oauth;
    public String outgoingUri;
    public String outgoingUriTemplate;
    public String outgoingUsername;
    public String outgoingUsernameTemplate;
    
    private String c(final String s, final String s2, final String s3) {
        return s.replaceAll("\\$email", s2).replaceAll("\\$user", s3).replaceAll("\\$domain", this.domain);
    }
    
    public final void V(final String s) {
        final String s2 = s.split("@")[0];
        this.incomingUri = this.c(this.incomingUriTemplate, s, s2);
        this.incomingUsername = this.c(this.incomingUsernameTemplate, s, s2);
        this.outgoingUri = this.c(this.outgoingUriTemplate, s, s2);
        this.outgoingUsername = this.c(this.outgoingUsernameTemplate, s, s2);
    }
    
    public final void W(final String s) {
        final String s2 = s.split("@")[0];
        this.incomingUri = this.c(this.altIncomingUriTemplate, s, s2);
        this.incomingUsername = this.c(this.altIncomingUsernameTemplate, s, s2);
        this.outgoingUri = this.c(this.altOutgoingUriTemplate, s, s2);
        this.outgoingUsername = this.c(this.altOutgoingUsernameTemplate, s, s2);
    }
}
