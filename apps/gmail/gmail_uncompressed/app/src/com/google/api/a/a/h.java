package com.google.api.a.a;

import com.google.api.client.googleapis.a.a.*;
import com.google.api.client.util.*;

public abstract class h<T> extends c<T>
{
    @x
    private String alt;
    @x
    private String fields;
    @x
    private String key;
    @x(Yz = "oauth_token")
    private String oauthToken;
    @x
    private Boolean prettyPrint;
    @x
    private String quotaUser;
    @x
    private String userIp;
    
    public h(final a a, final String s, final String s2, final Object o, final Class<T> clazz) {
        super(a, s, s2, o, clazz);
    }
    
    public h<T> q(final String s, final Object o) {
        return (h)super.l(s, o);
    }
}
