package com.android.emailcommon.mail;

public class AuthenticationFailedException extends MessagingException
{
    public static final long serialVersionUID = -1L;
    
    public AuthenticationFailedException(final String s) {
        super(5, s);
    }
    
    public AuthenticationFailedException(final String s, final Throwable t) {
        super(5, s, t);
    }
}
